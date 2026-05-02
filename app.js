/* =========================================================
   JustClover Stage 39 — Clean Catalog Menu
   Version: stage39-clean-catalog-menu-20260502-1

   Цель: не чинить старый каталог патчами поверх патчей, а заменить
   его новым изолированным modal, который не зависит от Stage35/36/37.
   ========================================================= */

const JC39_BUILD = "stage39-clean-catalog-menu-20260502-1";
const JC39_BASE_COMMIT = "f658b5bfad3fade4eb7f9c4d82865452cdc19f00";
const JC39_BASE_APP = `https://cdn.jsdelivr.net/gh/BCXOVER/JustClover@${JC39_BASE_COMMIT}/app.js`;

window.JUSTCLOVER_BUILD = JC39_BUILD;
console.log("JustClover Stage 39 MENU loader:", JC39_BUILD);

try {
  await import(JC39_BASE_APP + `?base=stage37&stage39=${Date.now()}`);
} catch (e) {
  console.error("JustClover Stage 39: base app import failed", e);
  throw e;
}

window.JUSTCLOVER_BUILD = JC39_BUILD;

(function(){
  const BUILD = JC39_BUILD;
  const PLAYER_SELECTOR = '.player-frame, #youtubePlayer, #iframePlayer, #videoPlayer, video, iframe.embed-box, #youtubePlayer iframe';
  const OPEN_WORDS = ['каталог', 'источники', 'source', 'sources'];
  const SOURCES = [
    {type:'youtube', icon:'▶', title:'YouTube', hint:'ссылка или поиск', placeholder:'Вставь ссылку YouTube'},
    {type:'vk', icon:'VK', title:'VK Video', hint:'vk.com / vkvideo.ru', placeholder:'Вставь ссылку VK Video'},
    {type:'anilibrix', icon:'AX', title:'AniLibria', hint:'iframe / ссылка', placeholder:'Вставь ссылку AniLibria'},
    {type:'local', icon:'▣', title:'Local', hint:'файл с устройства', placeholder:'Выбери файл с устройства'},
    {type:'mp4', icon:'MP4', title:'Direct MP4', hint:'mp4 / webm ссылка', placeholder:'Вставь прямую MP4/WebM ссылку'},
    {type:'gdrive', icon:'G', title:'Google Drive', hint:'public preview', placeholder:'Вставь публичную ссылку Google Drive'},
    {type:'yadisk', icon:'Я', title:'Яндекс Диск', hint:'публичная ссылка', placeholder:'Вставь публичную ссылку Яндекс Диска'},
    {type:'clipboard', icon:'⌘', title:'Из буфера', hint:'вставить и запустить', placeholder:'Ссылка из буфера'}
  ];

  let selectedType = 'youtube';
  let open = false;
  let savedScrollY = 0;
  let playerGuardUntil = 0;
  let playerGuardY = 0;
  let playerClickUntil = 0;
  let nativeFocus = HTMLElement.prototype.focus;
  let nativeScrollIntoView = Element.prototype.scrollIntoView;

  document.body.classList.add('jc39-force-new-catalog');

  function $(id){ return document.getElementById(id); }
  function oldLayer(){ return document.querySelector('.jc-catalog-layer'); }
  function root(){ return $('jc39CatalogRoot'); }
  function panel(){ return document.querySelector('#jc39CatalogRoot .jc39-modal'); }
  function isPlayerEvent(e){ return !!e?.target?.closest?.(PLAYER_SELECTOR); }
  function isOwnCatalog(el){ return !!el?.closest?.('#jc39CatalogRoot'); }

  function setPageScroll(y){
    const yy = Math.max(0, Number(y) || 0);
    try { document.documentElement.scrollTop = yy; } catch(_){ }
    try { document.body.scrollTop = yy; } catch(_){ }
  }

  // Нейтрализуем window.scrollTo hacks от Stage37. Пока наш каталог открыт — no-op.
  window.scrollTo = function(...args){
    if(open) return;
    let y = 0;
    if(args.length === 1 && typeof args[0] === 'object') y = args[0].top || 0;
    else y = args[1] || 0;
    setPageScroll(y);
  };

  window.scrollBy = function(...args){
    if(open) return;
    let y = 0;
    if(args.length === 1 && typeof args[0] === 'object') y = args[0].top || 0;
    else y = args[1] || 0;
    setPageScroll((window.scrollY || document.documentElement.scrollTop || 0) + y);
  };

  // Главная причина прыжка вниз — focus() на старый input каталога. Запрещаем scroll от focus.
  HTMLElement.prototype.focus = function(options){
    if(this && (this.id === 'jcCatalogUrl' || this.closest?.('.jc-catalog-layer') || this.closest?.('#jc39CatalogRoot'))){
      try { return nativeFocus.call(this, { ...(options || {}), preventScroll:true }); }
      catch(_){ return; }
    }
    return nativeFocus.call(this, options);
  };

  Element.prototype.scrollIntoView = function(options){
    if(this && (this.id === 'jcCatalogUrl' || this.closest?.('.jc-catalog-layer') || this.closest?.('#jc39CatalogRoot'))){
      return;
    }
    return nativeScrollIntoView.call(this, options);
  };

  function hideOldCatalog(){
    const l = oldLayer();
    if(l){
      l.classList.remove('open');
      l.setAttribute('aria-hidden','true');
      l.style.display = 'none';
      l.style.pointerEvents = 'none';
    }
    document.documentElement.classList.remove('jc37-modal-lock','jc38-catalog-open');
    document.body.classList.remove('jc37-modal-lock','jc38-catalog-open','jc-catalog-open','jc35-scroll-guard');
    document.body.style.position = '';
    document.body.style.top = '';
    document.body.style.left = '';
    document.body.style.width = '';
  }

  function iconHtml(text){
    return `<span class="jc39-card-icon">${String(text)}</span>`;
  }

  function sourceCard(s){
    return `<button class="jc39-source-card${s.type===selectedType?' active':''}" type="button" data-jc39-source="${s.type}">
      ${iconHtml(s.icon)}
      <strong>${s.title}</strong>
      <small>${s.hint}</small>
    </button>`;
  }

  function ensureCatalog(){
    if(root()) return;
    const wrap = document.createElement('div');
    wrap.id = 'jc39CatalogRoot';
    wrap.setAttribute('aria-hidden','true');
    wrap.innerHTML = `
      <div class="jc39-backdrop" data-jc39-close></div>
      <section class="jc39-modal" role="dialog" aria-modal="true" aria-labelledby="jc39CatalogTitle">
        <header class="jc39-head">
          <div class="jc39-logo">☘</div>
          <div>
            <h2 id="jc39CatalogTitle">Каталог источников</h2>
            <p>Выбери источник, вставь ссылку и запусти без прыжков страницы.</p>
          </div>
          <button class="jc39-close" type="button" data-jc39-close aria-label="Закрыть">×</button>
        </header>

        <div class="jc39-scroll">
          <div class="jc39-source-grid" id="jc39SourceGrid"></div>

          <div class="jc39-runbox">
            <div class="jc39-input-row">
              <input id="jc39Url" autocomplete="off" placeholder="Вставь ссылку YouTube" />
              <input id="jc39Title" autocomplete="off" placeholder="Название: YouTube" />
              <button class="jc39-run" id="jc39RunBtn" type="button">Запустить</button>
            </div>
            <div class="jc39-actions">
              <button type="button" data-jc39-paste>Вставить из буфера</button>
              <button type="button" data-jc39-paste-run>Вставить и запустить</button>
              <button type="button" data-jc39-open-site>Открыть сайт</button>
              <button type="button" data-jc39-file>Выбрать файл</button>
            </div>
            <p class="jc39-tip"><b>Подсказка:</b> YouTube и VK запускаются через встроенный плеер. Local video выбирается с устройства; другим участникам нужен тот же файл.</p>
          </div>

          <div class="jc39-searchbox">
            <input id="jc39Search" autocomplete="off" placeholder="Поиск YouTube/VK: например название ролика" />
            <button type="button" data-jc39-search-youtube>Искать YouTube</button>
            <button type="button" data-jc39-search-vk>Искать VK</button>
          </div>

          <div class="jc39-help-grid">
            <div><b>YouTube без выхода из комнаты</b><span>Открой поиск, скопируй ссылку ролика и нажми «Вставить и запустить».</span></div>
            <div><b>VK Video</b><span>Вставь ссылку вида vk.com/video… или vkvideo.ru/video…</span></div>
            <div><b>Local video</b><span>Файл выбирается на устройстве. Интерфейс комнаты не должен скроллиться.</span></div>
          </div>
        </div>
      </section>`;
    document.body.appendChild(wrap);

    wrap.addEventListener('click', function(e){
      if(e.target.closest('[data-jc39-close]')){
        e.preventDefault();
        closeCatalog();
      }
    });

    $('jc39SourceGrid').addEventListener('click', function(e){
      const b = e.target.closest('[data-jc39-source]');
      if(!b) return;
      e.preventDefault();
      selectSource(b.dataset.jc39Source);
    });

    $('jc39RunBtn').addEventListener('click', runSelected);
    wrap.querySelector('[data-jc39-paste]').addEventListener('click', pasteUrl);
    wrap.querySelector('[data-jc39-paste-run]').addEventListener('click', pasteAndRun);
    wrap.querySelector('[data-jc39-open-site]').addEventListener('click', openSourceSite);
    wrap.querySelector('[data-jc39-file]').addEventListener('click', chooseLocalFile);
    wrap.querySelector('[data-jc39-search-youtube]').addEventListener('click', () => searchSite('youtube'));
    wrap.querySelector('[data-jc39-search-vk]').addEventListener('click', () => searchSite('vk'));
    $('jc39Url').addEventListener('keydown', e => {
      if(e.key === 'Enter'){
        e.preventDefault();
        runSelected();
      }
    });
    renderSources();
  }

  function renderSources(){
    const grid = $('jc39SourceGrid');
    if(!grid) return;
    grid.innerHTML = SOURCES.map(sourceCard).join('');
  }

  function selectSource(type){
    selectedType = type || 'youtube';
    renderSources();
    const src = SOURCES.find(s => s.type === selectedType) || SOURCES[0];
    const url = $('jc39Url');
    const title = $('jc39Title');
    if(url) url.placeholder = src.placeholder;
    if(title) title.placeholder = `Название: ${src.title}`;
    if(selectedType === 'clipboard') pasteUrl();
    if(selectedType === 'local') chooseLocalFile();
  }

  function openCatalog(preselect){
    ensureCatalog();
    hideOldCatalog();
    selectedType = preselect || selectedType || 'youtube';
    renderSources();
    open = true;
    savedScrollY = window.scrollY || document.documentElement.scrollTop || 0;
    document.documentElement.classList.add('jc39-catalog-open');
    document.body.classList.add('jc39-catalog-open','jc39-force-new-catalog');
    const r = root();
    r.classList.add('open');
    r.setAttribute('aria-hidden','false');
    setTimeout(() => { $('jc39Url')?.focus({preventScroll:true}); setPageScroll(savedScrollY); }, 30);
  }

  function closeCatalog(){
    open = false;
    const r = root();
    if(r){
      r.classList.remove('open');
      r.setAttribute('aria-hidden','true');
    }
    document.documentElement.classList.remove('jc39-catalog-open');
    document.body.classList.remove('jc39-catalog-open','jc37-modal-lock','jc38-catalog-open','jc-catalog-open','jc35-scroll-guard');
    document.body.style.position = '';
    document.body.style.top = '';
    document.body.style.left = '';
    document.body.style.width = '';
    setPageScroll(savedScrollY);
  }

  async function pasteUrl(){
    try{
      const text = await navigator.clipboard.readText();
      if(text && $('jc39Url')) $('jc39Url').value = text.trim();
    }catch(_){ }
  }

  async function pasteAndRun(){
    await pasteUrl();
    runSelected();
  }

  function sourceToNativeType(type, url){
    const t = String(type || '').toLowerCase();
    const u = String(url || '').toLowerCase();
    if(t === 'vk' || /vk\.com|vkvideo\.ru|m\.vk\.com/.test(u)) return 'vk';
    if(t === 'anilibrix' || /anilibria|anilibrix/.test(u)) return 'anilibrix';
    if(t === 'local') return 'local';
    return 'youtube';
  }

  function runViaNativeFields(url, title){
    const sourceType = $('sourceType');
    const sourceUrl = $('sourceUrl');
    const sourceTitle = $('sourceTitle');
    const setSourceBtn = $('setSourceBtn');
    const nativeType = sourceToNativeType(selectedType, url);

    if(sourceType){
      const hasOption = Array.from(sourceType.options || []).some(o => o.value === nativeType);
      if(hasOption) sourceType.value = nativeType;
    }
    if(sourceUrl) sourceUrl.value = url;
    if(sourceTitle) sourceTitle.value = title || '';
    setSourceBtn?.click?.();
  }

  function runSelected(){
    const url = ($('jc39Url')?.value || '').trim();
    const title = ($('jc39Title')?.value || '').trim();

    if(selectedType === 'local'){
      chooseLocalFile();
      closeCatalog();
      return;
    }
    if(!url){
      $('jc39Url')?.focus({preventScroll:true});
      return;
    }

    try{
      if(typeof window.jcRunLink === 'function'){
        window.jcRunLink(url, title || undefined);
      }else{
        runViaNativeFields(url, title);
      }
      closeCatalog();
    }catch(e){
      console.error('JC39 run source failed:', e);
      runViaNativeFields(url, title);
      closeCatalog();
    }
  }

  function chooseLocalFile(){
    try{
      const sourceType = $('sourceType');
      if(sourceType){
        const hasLocal = Array.from(sourceType.options || []).some(o => o.value === 'local');
        if(hasLocal) sourceType.value = 'local';
      }
      $('localVideoFile')?.click?.();
    }catch(_){ }
  }

  function openSourceSite(){
    const map = {
      youtube: 'https://www.youtube.com/',
      vk: 'https://vkvideo.ru/',
      anilibrix: 'https://www.anilibria.tv/',
      gdrive: 'https://drive.google.com/',
      yadisk: 'https://disk.yandex.ru/'
    };
    window.open(map[selectedType] || 'https://www.youtube.com/', '_blank', 'noreferrer');
  }

  function searchSite(kind){
    const q = encodeURIComponent(($('jc39Search')?.value || '').trim());
    if(!q) return;
    const url = kind === 'vk'
      ? `https://vkvideo.ru/search?q=${q}`
      : `https://www.youtube.com/results?search_query=${q}`;
    window.open(url, '_blank', 'noreferrer');
  }

  function shouldOpenFromButton(btn){
    if(!btn || isOwnCatalog(btn)) return false;
    const text = (btn.textContent || btn.getAttribute('aria-label') || btn.title || '').trim().toLowerCase();
    if(!text) return false;
    return OPEN_WORDS.some(w => text.includes(w));
  }

  // Capture-фаза: старый каталог вообще не получает клик по «Каталог/Источники».
  document.addEventListener('click', function(e){
    if(isOwnCatalog(e.target)) return;
    const btn = e.target.closest?.('button, .btn, [role="button"], a');
    if(shouldOpenFromButton(btn)){
      e.preventDefault();
      e.stopPropagation();
      e.stopImmediatePropagation();
      openCatalog('youtube');
    }
  }, true);

  // Если старый код всё равно вызовет открытие через функцию — подменяем на новый modal.
  try{
    if(typeof window.jcStage8OpenCatalog === 'function'){
      window.__jc39PrevOpenCatalog = window.jcStage8OpenCatalog;
      window.jcStage8OpenCatalog = function(preselect){
        openCatalog(preselect || 'youtube');
        return false;
      };
    }
  }catch(_){ }

  // Play внутри iframe/плеера не должен открывать меню и не должен скроллить страницу.
  document.addEventListener('pointerdown', function(e){
    if(isPlayerEvent(e)){
      playerGuardY = window.scrollY || document.documentElement.scrollTop || 0;
      playerGuardUntil = Date.now() + 1600;
      playerClickUntil = Date.now() + 900;
      document.body.classList.remove('jc35-scroll-guard');
    }
  }, true);

  document.addEventListener('click', function(e){
    if(isPlayerEvent(e)){
      playerClickUntil = Date.now() + 900;
      document.body.classList.remove('jc35-scroll-guard');
      setTimeout(hideOldCatalog, 0);
      setTimeout(hideOldCatalog, 80);
    }
  }, true);

  window.addEventListener('scroll', function(){
    if(open){
      setPageScroll(savedScrollY);
      return;
    }
    if(Date.now() > playerGuardUntil) return;
    const y = window.scrollY || document.documentElement.scrollTop || 0;
    if(Math.abs(y - playerGuardY) > 70){
      requestAnimationFrame(() => setPageScroll(playerGuardY));
    }
  }, {passive:true});

  document.addEventListener('keydown', function(e){
    if(e.key === 'Escape' && open){
      e.preventDefault();
      closeCatalog();
    }
  }, true);

  document.addEventListener('wheel', function(e){
    if(!open) return;
    if(isOwnCatalog(e.target)) return;
    e.preventDefault();
  }, {capture:true, passive:false});

  document.addEventListener('touchmove', function(e){
    if(!open) return;
    if(isOwnCatalog(e.target)) return;
    e.preventDefault();
  }, {capture:true, passive:false});

  // Наблюдаем старый слой: если он сам всплыл после Play — прячем. Если всплыл не от Play — заменяем новым.
  function watchOldCatalog(){
    const l = oldLayer();
    if(!l || l.dataset.jc39Watch === '1') return;
    l.dataset.jc39Watch = '1';
    new MutationObserver(function(){
      const oldOpen = l.classList.contains('open') || l.style.display !== 'none';
      if(!oldOpen) return;
      if(Date.now() < playerClickUntil){
        hideOldCatalog();
      }else if(!open){
        hideOldCatalog();
        openCatalog(selectedType || 'youtube');
      }
    }).observe(l, {attributes:true, attributeFilter:['class','style','aria-hidden']});
  }

  function tick(){
    ensureCatalog();
    watchOldCatalog();
    document.body.classList.add('jc39-force-new-catalog');
    if(open){
      hideOldCatalog();
      setPageScroll(savedScrollY);
    }else if(Date.now() < playerClickUntil){
      hideOldCatalog();
    }
  }

  window.jc39OpenCatalog = openCatalog;
  window.jc39CloseCatalog = closeCatalog;
  window.jc39CleanMenuDebug = function(){
    const l = oldLayer();
    const p = panel();
    return {
      build: BUILD,
      open,
      selectedType,
      scrollY: window.scrollY || document.documentElement.scrollTop || 0,
      savedScrollY,
      playerGuardMsLeft: Math.max(0, playerGuardUntil - Date.now()),
      playerClickMsLeft: Math.max(0, playerClickUntil - Date.now()),
      oldCatalogExists: !!l,
      oldCatalogClass: String(l?.className || ''),
      oldCatalogDisplay: l?.style?.display || '',
      modalScrollTop: p?.querySelector('.jc39-scroll')?.scrollTop || 0,
      modalHeight: p?.clientHeight || 0,
      modalScrollHeight: p?.querySelector('.jc39-scroll')?.scrollHeight || 0,
      hasRunLink: typeof window.jcRunLink === 'function',
      activeElement: document.activeElement?.id || document.activeElement?.tagName || ''
    };
  };
  window.jc38CleanDebug = window.jc39CleanMenuDebug;
  window.jcCatalogHardDebug = window.jc39CleanMenuDebug;

  setInterval(tick, 160);
  setTimeout(function(){
    tick();
    console.log('[JC39 clean catalog menu] ready', window.jc39CleanMenuDebug());
  }, 350);
})();
