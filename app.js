/* =========================================================
   JustClover Stage 56 — Sidebar Chat Fix
   Version: stage56-sidebar-chat-fix-20260502-1

   Цель: не чинить старый каталог патчами поверх патчей, а заменить
   его новым изолированным modal, который не зависит от Stage35/36/37.
   ========================================================= */

const JC40_BUILD = "stage56-sidebar-chat-fix-20260502-1";
const JC40_BASE_COMMIT = "f658b5bfad3fade4eb7f9c4d82865452cdc19f00";
const JC40_BASE_APP = `https://cdn.jsdelivr.net/gh/BCXOVER/JustClover@${JC40_BASE_COMMIT}/app.js`;

window.JUSTCLOVER_BUILD = JC40_BUILD;
console.log("JustClover Stage 56 SIDEBARFIX loader:", JC40_BUILD);

try {
  await import(JC40_BASE_APP + `?base=stage37&stage45=${Date.now()}`);
} catch (e) {
  console.error("JustClover Stage 56: base app import failed", e);
  throw e;
}

window.JUSTCLOVER_BUILD = JC40_BUILD;

(function(){
  const BUILD = JC40_BUILD;
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

  document.body.classList.add('jc40-force-new-catalog');

  function $(id){ return document.getElementById(id); }
  function oldLayer(){ return document.querySelector('.jc-catalog-layer'); }
  function root(){ return $('jc40CatalogRoot'); }
  function panel(){ return document.querySelector('#jc40CatalogRoot .jc40-modal'); }
  function isPlayerEvent(e){ return !!e?.target?.closest?.(PLAYER_SELECTOR); }
  function isOwnCatalog(el){ return !!el?.closest?.('#jc40CatalogRoot'); }
  function isWatchMode(){
    const ws = document.getElementById('watchSection');
    return !!(ws && ws.classList.contains('active') && !document.getElementById('appView')?.classList.contains('hidden'));
  }
  function directPageTop(y){
    const yy = Math.max(0, Number(y) || 0);
    try { document.documentElement.scrollTop = yy; } catch(_){}
    try { document.body.scrollTop = yy; } catch(_){}
  }
  function isScrollableTarget(node){
    const el = node?.closest?.('#jc40CatalogRoot .jc40-scroll, #chatMessages, #dmMessages, .messages, .rail, .watch-sidebar, .members-card .list, .queue-card, .source-history, [data-jc-scroll], .jc40-allow-scroll');
    if(!el) return false;
    const cs = getComputedStyle(el);
    const canY = /(auto|scroll)/.test(cs.overflowY) && el.scrollHeight > el.clientHeight + 2;
    const canX = /(auto|scroll)/.test(cs.overflowX) && el.scrollWidth > el.clientWidth + 2;
    return canY || canX;
  }


  // Нейтрализуем window.scrollTo hacks от Stage35/37.
  // В режиме просмотра страница вообще не должна прокручиваться.
  window.scrollTo = function(...args){
    if(open || isWatchMode()) return;
    let y = 0;
    if(args.length === 1 && typeof args[0] === 'object') y = args[0].top || 0;
    else y = args[1] || 0;
    directPageTop(y);
  };

  window.scrollBy = function(...args){
    if(open || isWatchMode()) return;
    let y = 0;
    if(args.length === 1 && typeof args[0] === 'object') y = args[0].top || 0;
    else y = args[1] || 0;
    directPageTop((window.scrollY || document.documentElement.scrollTop || 0) + y);
  };

  // Главная причина прыжка вниз — focus() на старый input каталога. Запрещаем scroll от focus.
  HTMLElement.prototype.focus = function(options){
    if(this && (this.id === 'jcCatalogUrl' || this.closest?.('.jc-catalog-layer') || this.closest?.('#jc40CatalogRoot'))){
      try { return nativeFocus.call(this, { ...(options || {}), preventScroll:true }); }
      catch(_){ return; }
    }
    return nativeFocus.call(this, options);
  };

  Element.prototype.scrollIntoView = function(options){
    if(this && (this.id === 'jcCatalogUrl' || this.closest?.('.jc-catalog-layer') || this.closest?.('#jc40CatalogRoot'))){
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
    return `<span class="jc40-card-icon">${String(text)}</span>`;
  }

  function sourceCard(s){
    return `<button class="jc40-source-card${s.type===selectedType?' active':''}" type="button" data-jc40-source="${s.type}">
      ${iconHtml(s.icon)}
      <strong>${s.title}</strong>
      <small>${s.hint}</small>
    </button>`;
  }

  function ensureCatalog(){
    if(root()) return;
    const wrap = document.createElement('div');
    wrap.id = 'jc40CatalogRoot';
    wrap.setAttribute('aria-hidden','true');
    wrap.innerHTML = `
      <div class="jc40-backdrop" data-jc40-close></div>
      <section class="jc40-modal" role="dialog" aria-modal="true" aria-labelledby="jc40CatalogTitle">
        <header class="jc40-head">
          <div class="jc40-logo">☘</div>
          <div>
            <h2 id="jc40CatalogTitle">Каталог источников</h2>
            <p>Выбери источник, вставь ссылку и запусти без прыжков страницы.</p>
          </div>
          <button class="jc40-close" type="button" data-jc40-close aria-label="Закрыть">×</button>
        </header>

        <div class="jc40-scroll">
          <div class="jc40-source-grid" id="jc40SourceGrid"></div>

          <div class="jc40-runbox">
            <div class="jc40-input-row">
              <input id="jc40Url" autocomplete="off" placeholder="Вставь ссылку YouTube" />
              <input id="jc40Title" autocomplete="off" placeholder="Название: YouTube" />
              <button class="jc40-run" id="jc40RunBtn" type="button">Запустить</button>
            </div>
            <div class="jc40-actions">
              <button type="button" data-jc40-paste>Вставить из буфера</button>
              <button type="button" data-jc40-paste-run>Вставить и запустить</button>
              <button type="button" data-jc40-open-site>Открыть сайт</button>
              <button type="button" data-jc40-file>Выбрать файл</button>
            </div>
            <p class="jc40-tip"><b>Подсказка:</b> YouTube и VK запускаются через встроенный плеер. Local video выбирается с устройства; другим участникам нужен тот же файл.</p>
          </div>

          <div class="jc40-searchbox">
            <input id="jc40Search" autocomplete="off" placeholder="Поиск YouTube/VK: например название ролика" />
            <button type="button" data-jc40-search-youtube>Искать YouTube</button>
            <button type="button" data-jc40-search-vk>Искать VK</button>
          </div>

          <div class="jc40-help-grid">
            <div><b>YouTube без выхода из комнаты</b><span>Открой поиск, скопируй ссылку ролика и нажми «Вставить и запустить».</span></div>
            <div><b>VK Video</b><span>Вставь ссылку вида vk.com/video… или vkvideo.ru/video…</span></div>
            <div><b>Local video</b><span>Файл выбирается на устройстве. Интерфейс комнаты не должен скроллиться.</span></div>
          </div>
        </div>
      </section>`;
    document.body.appendChild(wrap);

    wrap.addEventListener('click', function(e){
      if(e.target.closest('[data-jc40-close]')){
        e.preventDefault();
        closeCatalog();
      }
    });

    $('jc40SourceGrid').addEventListener('click', function(e){
      const b = e.target.closest('[data-jc40-source]');
      if(!b) return;
      e.preventDefault();
      selectSource(b.dataset.jc40Source);
    });

    $('jc40RunBtn').addEventListener('click', runSelected);
    wrap.querySelector('[data-jc40-paste]').addEventListener('click', pasteUrl);
    wrap.querySelector('[data-jc40-paste-run]').addEventListener('click', pasteAndRun);
    wrap.querySelector('[data-jc40-open-site]').addEventListener('click', openSourceSite);
    wrap.querySelector('[data-jc40-file]').addEventListener('click', chooseLocalFile);
    wrap.querySelector('[data-jc40-search-youtube]').addEventListener('click', () => searchSite('youtube'));
    wrap.querySelector('[data-jc40-search-vk]').addEventListener('click', () => searchSite('vk'));
    $('jc40Url').addEventListener('keydown', e => {
      if(e.key === 'Enter'){
        e.preventDefault();
        runSelected();
      }
    });
    renderSources();
  }

  function renderSources(){
    const grid = $('jc40SourceGrid');
    if(!grid) return;
    grid.innerHTML = SOURCES.map(sourceCard).join('');
  }

  function selectSource(type){
    selectedType = type || 'youtube';
    renderSources();
    const src = SOURCES.find(s => s.type === selectedType) || SOURCES[0];
    const url = $('jc40Url');
    const title = $('jc40Title');
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
    document.documentElement.classList.add('jc40-catalog-open');
    document.body.classList.add('jc40-catalog-open','jc40-force-new-catalog');
    const r = root();
    r.classList.add('open');
    r.setAttribute('aria-hidden','false');
    // В Stage40 не автофокусим input: focus был главной причиной прыжка страницы.
  }

  function closeCatalog(){
    open = false;
    const r = root();
    if(r){
      r.classList.remove('open');
      r.setAttribute('aria-hidden','true');
    }
    document.documentElement.classList.remove('jc40-catalog-open');
    document.body.classList.remove('jc40-catalog-open','jc37-modal-lock','jc38-catalog-open','jc-catalog-open','jc35-scroll-guard');
    document.body.style.position = '';
    document.body.style.top = '';
    document.body.style.left = '';
    document.body.style.width = '';
  }

  async function pasteUrl(){
    try{
      const text = await navigator.clipboard.readText();
      if(text && $('jc40Url')) $('jc40Url').value = text.trim();
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
    const url = ($('jc40Url')?.value || '').trim();
    const title = ($('jc40Title')?.value || '').trim();

    if(selectedType === 'local'){
      chooseLocalFile();
      closeCatalog();
      return;
    }
    if(!url){
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
      console.error('JC40 run source failed:', e);
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
    const q = encodeURIComponent(($('jc40Search')?.value || '').trim());
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
      window.__jc40PrevOpenCatalog = window.jcStage8OpenCatalog;
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

  // Stage40: глобальный scroll-guard больше не нужен.
  // Страница просмотра фиксируется через CSS, а колесо разрешено только внутри своих scroll-контейнеров.

  document.addEventListener('wheel', function(e){
    if(open) return;
    if(!isWatchMode()) return;
    if(isScrollableTarget(e.target)) return;
    e.preventDefault();
    e.stopPropagation();
  }, {capture:true, passive:false});

  document.addEventListener('touchmove', function(e){
    if(open) return;
    if(!isWatchMode()) return;
    if(isScrollableTarget(e.target)) return;
    e.preventDefault();
    e.stopPropagation();
  }, {capture:true, passive:false});

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
    if(!l || l.dataset.jc40Watch === '1') return;
    l.dataset.jc40Watch = '1';
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

  function updateWatchMode(){
    const watch = isWatchMode();
    document.documentElement.classList.toggle('jc40-watch-mode', watch);
    document.body.classList.toggle('jc40-watch-mode', watch);
    if(watch){
      // Прямой сброс нужен только чтобы убрать уже накопленный page scroll.
      directPageTop(0);
      document.body.classList.remove('jc35-scroll-guard','jc37-modal-lock','jc38-catalog-open');
      document.body.style.position = '';
      document.body.style.top = '';
      document.body.style.left = '';
      document.body.style.width = '';
    }
  }

  function tick(){
    ensureCatalog();
    watchOldCatalog();
    updateWatchMode();
    document.body.classList.add('jc40-force-new-catalog');
    if(open){
      hideOldCatalog();
    }else if(Date.now() < playerClickUntil){
      hideOldCatalog();
    }
  }

  window.jc40OpenCatalog = openCatalog;
  window.jc40CloseCatalog = closeCatalog;
  window.jc39OpenCatalog = openCatalog;
  window.jc39CloseCatalog = closeCatalog;
  window.jc40CleanMenuDebug = function(){
    const l = oldLayer();
    const p = panel();
    return {
      build: BUILD,
      open,
      watchMode: isWatchMode(),
      htmlWatchClass: document.documentElement.classList.contains('jc40-watch-mode'),
      selectedType,
      scrollY: window.scrollY || document.documentElement.scrollTop || 0,
      savedScrollY,
      playerGuardMsLeft: Math.max(0, playerGuardUntil - Date.now()),
      playerClickMsLeft: Math.max(0, playerClickUntil - Date.now()),
      oldCatalogExists: !!l,
      oldCatalogClass: String(l?.className || ''),
      oldCatalogDisplay: l?.style?.display || '',
      modalScrollTop: p?.querySelector('.jc40-scroll')?.scrollTop || 0,
      modalHeight: p?.clientHeight || 0,
      modalScrollHeight: p?.querySelector('.jc40-scroll')?.scrollHeight || 0,
      hasRunLink: typeof window.jcRunLink === 'function',
      activeElement: document.activeElement?.id || document.activeElement?.tagName || ''
    };
  };
  window.jc39CleanMenuDebug = window.jc40CleanMenuDebug;
  window.jc38CleanDebug = window.jc40CleanMenuDebug;
  window.jcCatalogHardDebug = window.jc40CleanMenuDebug;

  setInterval(tick, 160);
  setTimeout(function(){
    tick();
    console.log('[JC40 no page scroll watch mode] ready', window.jc40CleanMenuDebug());
  }, 350);
})();

/* =========================================================
   JustClover Stage 56 — Sidebar Chat Fix
   Version: stage56-sidebar-chat-fix-20260502-1
   ========================================================= */
(function(){
  const BUILD = "stage56-sidebar-chat-fix-20260502-1";
  const STORE_KEY = "jc55ActiveViewMode";
  let desired = false;

  try { desired = localStorage.getItem(STORE_KEY) === "1" || localStorage.getItem("jc51ActiveViewMode") === "1" || localStorage.getItem("jc50ActiveViewMode") === "1" || localStorage.getItem("jc49ActiveViewMode") === "1" || localStorage.getItem("jc48ActiveViewMode") === "1" || localStorage.getItem("jc47ActiveViewMode") === "1" || localStorage.getItem("jc46ActiveViewMode") === "1" || localStorage.getItem("jc45ActiveViewMode") === "1" || localStorage.getItem("jc44ActiveViewMode") === "1" || localStorage.getItem("jc43ActiveViewMode") === "1"; } catch(_) {}

  function isWatchMode(){
    const app = document.getElementById('appView');
    const watch = document.getElementById('watchSection');
    return !!(watch && watch.classList.contains('active') && !app?.classList.contains('hidden'));
  }

  function hardTop(){
    try { document.documentElement.scrollTop = 0; } catch(_) {}
    try { document.body.scrollTop = 0; } catch(_) {}
  }

  function openCatalog(){
    const fn = window.jc40OpenCatalog || window.jc39OpenCatalog || window.jcStage8OpenCatalog;
    if(typeof fn === 'function') fn('youtube');
  }

  function clickMic(){
    const b = document.getElementById('voiceBtn');
    if(b) b.click();
  }

  function focusChat(){
    const input = document.getElementById('chatInput');
    if(input){
      try { input.focus({preventScroll:true}); } catch(_) { input.focus(); }
    }
  }

  function visible(el){
    if(!el) return false;
    if(el.classList?.contains('hidden')) return false;
    const r = el.getBoundingClientRect?.();
    return !!(!r || (r.width > 2 && r.height > 2));
  }

  function getFullscreenElement(){
    return document.fullscreenElement || document.webkitFullscreenElement || document.msFullscreenElement || null;
  }

  async function exitAnyFullscreen(){
    try {
      if(document.exitFullscreen){ await document.exitFullscreen(); return true; }
      if(document.webkitExitFullscreen){ document.webkitExitFullscreen(); return true; }
      if(document.msExitFullscreen){ document.msExitFullscreen(); return true; }
    } catch(_) {}
    return false;
  }

  async function requestFullOn(target){
    if(!target) return false;
    try {
      if(target.requestFullscreen){
        await target.requestFullscreen({ navigationUI:'hide' });
        return true;
      }
      if(target.webkitRequestFullscreen){
        target.webkitRequestFullscreen();
        return true;
      }
      if(target.msRequestFullscreen){
        target.msRequestFullscreen();
        return true;
      }
    } catch(e) {
      return false;
    }
    return false;
  }

  function ensureDock(){
    const stage = document.querySelector('.watch-stage');
    const main = document.querySelector('.watch-main');
    const playerCard =
      document.querySelector('.player-card-redesign') ||
      document.querySelector('.player-card') ||
      document.querySelector('.player-shell')?.closest?.('.player-card,.player-card-redesign') ||
      document.querySelector('.player-frame')?.closest?.('.player-card,.player-card-redesign,.player-shell');

    if(!stage || !playerCard) return null;

    let oldDock = document.getElementById('jc43ActiveDock');
    if(oldDock) oldDock.id = 'jc45ActiveDock';

    let dock = document.getElementById('jc45ActiveDock');
    if(!dock){
      dock = document.createElement('div');
      dock.id = 'jc45ActiveDock';
    }

    if(dock.parentNode !== stage || dock.previousElementSibling !== playerCard){
      playerCard.insertAdjacentElement('afterend', dock);
    }

    stage.id = 'jc45ActiveFullscreenTarget';
    if(main && main.id === 'jc45ActiveFullscreenTarget') main.removeAttribute('id');
    return dock;
  }

  function markActiveHiddenPanels(on){
    // Stage45: сначала снимаем ВСЕ старые/новые hidden-классы, чтобы не остался скрытым watch-main/player.
    document.querySelectorAll('.jc45-active-hidden-panel,.jc44-active-hidden-panel,.jc43-active-hidden-panel').forEach(el => {
      el.classList.remove('jc45-active-hidden-panel','jc44-active-hidden-panel','jc43-active-hidden-panel');
    });
    if(!on) return;

    const stage = document.querySelector('.watch-stage');
    if(!stage) return;

    // Никогда не скрываем каркас активного просмотра и сам плеер.
    const protectedSelector = '.watch-main,.watch-stage,.player-card,.player-card-redesign,.player-shell,.player-frame,#jc45ActiveDock,#jc41RaveFloating';
    const badText = /История источников|Очередь видео/i;

    // Скрываем только отдельные панели-дети stage после плеера, но не весь watch-main.
    Array.from(stage.children).forEach(child => {
      if(!child || child.matches?.(protectedSelector) || child.closest?.('.player-card,.player-card-redesign,.player-shell,.player-frame,#jc45ActiveDock,#jc41RaveFloating')) return;
      if(badText.test(child.textContent || '')) child.classList.add('jc45-active-hidden-panel');
    });

    // На случай если история/очередь вложены глубже: поднимаемся только до небольшой панели,
    // но останавливаемся перед player/stage/main, чтобы больше не прятать весь плеер.
    stage.querySelectorAll('h1,h2,h3,h4,strong,b').forEach(el => {
      if(!badText.test(el.textContent || '')) return;
      if(el.closest?.(protectedSelector)) return;
      let panel = el.closest?.('.source-history,.queue-card,[class*="history"],[class*="queue"],.side-card,.panel,.card');
      if(!panel || panel.matches?.(protectedSelector) || panel.closest?.('.player-card,.player-card-redesign,.player-shell,.player-frame,#jc45ActiveDock,#jc41RaveFloating')) return;
      if(panel === stage || panel.classList?.contains('watch-stage') || panel.classList?.contains('watch-main')) return;
      panel.classList.add('jc45-active-hidden-panel');
    });
  }

  async function togglePlayerFullscreen(){
    if(getFullscreenElement()) {
      await exitAnyFullscreen();
      syncFullscreenButtons();
      return;
    }

    const fullscreenTarget = document.documentElement || document.getElementById('jc45ActiveFullscreenTarget') || document.querySelector('.watch-stage') || document.querySelector('.watch-main') || document.querySelector('.player-shell') || document.querySelector('.player-card') || document.querySelector('.player-frame');
    if(await requestFullOn(fullscreenTarget || document.documentElement)){
      syncFullscreenButtons();
      return;
    }
    console.warn('[JC52] browser blocked fullscreen request');
  }

  function syncFullscreenButtons(){
    const on = !!getFullscreenElement();
    document.querySelectorAll('[data-jc41-full]').forEach(btn => {
      btn.textContent = on ? 'Выйти' : 'Экран';
      btn.title = on ? 'Выйти из большого экрана' : 'Открыть плеер на большой экран';
      btn.setAttribute('aria-label', btn.title);
    });
  }

  function chooseLocalShortcut(){
    try{
      const sourceType = document.getElementById('sourceType');
      if(sourceType){
        const hasLocal = Array.from(sourceType.options || []).some(o => o.value === 'local');
        if(hasLocal) sourceType.value = 'local';
      }
      document.getElementById('localVideoFile')?.click?.();
    }catch(_){}
  }

  function ensureRaveTopbar(){
    let bar = document.getElementById('jc51RaveTopbar');
    if(bar) return bar;
    bar = document.createElement('div');
    bar.id = 'jc51RaveTopbar';
    bar.innerHTML = `
      <div class="jc51-rave-left">
        <button type="button" data-jc51-exit title="Обычный режим" aria-label="Обычный режим">×</button>
        <button type="button" data-jc51-sources title="Источники" aria-label="Источники">☰</button>
        <button type="button" data-jc51-catalog title="Каталог" aria-label="Каталог">⚙</button>
        <button type="button" data-jc51-search title="Поиск / каталог" aria-label="Поиск / каталог">⌕</button>
      </div>
      <div class="jc51-rave-logo">JUST&nbsp;☘&nbsp;CLOVER</div>
      <div class="jc51-rave-right jc53-rave-right-spacer" aria-hidden="true"></div>`;
    bar.addEventListener('click', function(e){
      const b = e.target.closest('button');
      if(!b) return;
      e.preventDefault();
      e.stopPropagation();
      if(b.hasAttribute('data-jc51-exit')) setFocus(false);
      if(b.hasAttribute('data-jc51-sources') || b.hasAttribute('data-jc51-catalog') || b.hasAttribute('data-jc51-search')) openCatalog();
    });
    document.body.appendChild(bar);
    return bar;
  }

  function removeRaveTopbar(){
    document.getElementById('jc51RaveTopbar')?.remove?.();
  }

  function ensureCompactDock(dock){
    if(!dock) return null;
    let inner = dock.querySelector('.jc48-dock-inner');
    if(!inner){
      inner = document.createElement('div');
      inner.className = 'jc48-dock-inner';
      dock.appendChild(inner);
    }
    let actions = inner.querySelector('.jc48-actions-slot');
    if(!actions){
      actions = document.createElement('div');
      actions.className = 'jc48-actions-slot';
      inner.appendChild(actions);
    }
    let sources = inner.querySelector('.jc48-source-row');
    if(!sources){
      sources = document.createElement('div');
      sources.className = 'jc48-source-row';
      sources.innerHTML = `
        <button type="button" data-jc48-open-sources>Источники</button>
        <button type="button" data-jc48-open-catalog>Каталог</button>
        <button type="button" data-jc48-local>Local</button>
      `;
      sources.addEventListener('click', function(e){
        const b = e.target.closest('button');
        if(!b) return;
        e.preventDefault();
        e.stopPropagation();
        if(b.hasAttribute('data-jc48-open-sources') || b.hasAttribute('data-jc48-open-catalog')) openCatalog();
        if(b.hasAttribute('data-jc48-local')) chooseLocalShortcut();
      });
      inner.appendChild(sources);
    }
    return { inner, actions, sources };
  }

  function hideTopSourceChrome(on){
    document.querySelectorAll('.jc48-top-source-hidden').forEach(el => el.classList.remove('jc48-top-source-hidden'));
    if(!on) return;
    const stage = document.querySelector('.watch-stage');
    if(!stage) return;
    const protectedSelector = '.watch-main,.watch-stage,.player-card,.player-card-redesign,.player-shell,.player-frame,#jc45ActiveDock,#jc41RaveFloating,#jc48SourceDock';
    const candidates = stage.querySelectorAll('header,nav,section,div');
    candidates.forEach(el => {
      if(!el || el.matches?.(protectedSelector) || el.closest?.('#jc45ActiveDock,#jc41RaveFloating,#jc40CatalogRoot')) return;
      // Never hide a node that owns the actual media/player.
      if(el.querySelector?.('iframe,video,#iframePlayer,#youtubePlayer,#videoPlayer,.player-frame')) return;
      const txt = (el.textContent || '').replace(/\s+/g,' ').trim();
      if(!txt) return;
      const hasNativeHint = /Родной плеер источника|VK Video|YouTube/i.test(txt);
      const buttons = Array.from(el.querySelectorAll('button,a')).map(b => (b.textContent || b.title || b.getAttribute('aria-label') || '').trim());
      const hasCatalogButtons = buttons.some(t => /Источники/i.test(t)) && buttons.some(t => /Каталог/i.test(t));
      const hasLocal = buttons.some(t => /^Local$/i.test(t));
      if((hasNativeHint && (hasCatalogButtons || hasLocal)) || (hasCatalogButtons && hasLocal)){
        el.classList.add('jc48-top-source-hidden');
      }
    });
  }

  function ensureFloating(){
    let f = document.getElementById('jc41RaveFloating');
    if(f) return f;
    f = document.createElement('div');
    f.id = 'jc41RaveFloating';
    f.innerHTML = `
      <button type="button" data-jc41-exit>Обычный</button>
      <button type="button" data-jc41-catalog>Источники</button>
      <button type="button" data-jc41-mic>Микро</button>
      <button type="button" data-jc41-chat>Чат</button>
      <button type="button" data-jc41-full title="Открыть плеер на большой экран" aria-label="Открыть плеер на большой экран">Экран</button>
    `;
    f.addEventListener('click', function(e){
      const b = e.target.closest('button');
      if(!b) return;
      e.preventDefault();
      e.stopPropagation();
      if(b.hasAttribute('data-jc41-exit')) setFocus(false);
      if(b.hasAttribute('data-jc41-catalog')) openCatalog();
      if(b.hasAttribute('data-jc41-mic')) clickMic();
      if(b.hasAttribute('data-jc41-chat')) focusChat();
      if(b.hasAttribute('data-jc41-full')) togglePlayerFullscreen();
    });
    document.body.appendChild(f);
    return f;
  }

  function ensureToggle(){
    const row = document.querySelector('.watch-chip-row.left') || document.querySelector('.watch-brandbar') || document.querySelector('#watchSection');
    if(!row) return;
    let btn = document.getElementById('jc41RaveToggle');
    if(!btn){
      btn = document.createElement('button');
      btn.id = 'jc41RaveToggle';
      btn.type = 'button';
      btn.className = 'toolbar-chip jc41-rave-toggle';
      btn.addEventListener('click', function(e){
        e.preventDefault();
        e.stopPropagation();
        setFocus(!desired);
      });
      if(row.firstChild) row.insertBefore(btn, row.firstChild);
      else row.appendChild(btn);
    }
    btn.textContent = desired ? 'Обычный' : 'Активный просмотр';
    btn.classList.toggle('active', desired);
    btn.title = desired ? 'Вернуть обычный интерфейс' : 'Оставить только плеер, чат и микрофон';
  }

  function apply(){
    const floating = ensureFloating();
    ensureToggle();
    syncFullscreenButtons();
    const on = desired && isWatchMode();
    document.documentElement.classList.toggle('jc41-rave-focus', on);
    document.body.classList.toggle('jc41-rave-focus', on);
    if(on){
      document.documentElement.classList.add('jc40-watch-mode');
      document.body.classList.add('jc40-watch-mode');
      document.body.classList.remove('jc35-scroll-guard','jc37-modal-lock','jc38-catalog-open','jc-catalog-open');
      document.body.style.position = '';
      document.body.style.top = '';
      document.body.style.left = '';
      document.body.style.width = '';
      ensureRaveTopbar();
      const dock = ensureDock();
      const compact = ensureCompactDock(dock);
      if(compact?.actions && floating.parentNode !== compact.actions) compact.actions.appendChild(floating);
      hideTopSourceChrome(true);
      markActiveHiddenPanels(true);
      hardTop();
    } else {
      removeRaveTopbar();
      const dock = document.getElementById('jc45ActiveDock') || document.getElementById('jc43ActiveDock');
      const target = document.getElementById('jc45ActiveFullscreenTarget') || document.getElementById('jc43ActiveFullscreenTarget');
      hideTopSourceChrome(false);
      if(floating && floating.parentNode !== document.body) document.body.appendChild(floating);
      markActiveHiddenPanels(false);
      if(dock) dock.remove();
      if(target) target.removeAttribute('id');
    }
  }

  function setFocus(on){
    desired = !!on;
    try { localStorage.setItem(STORE_KEY, desired ? '1' : '0'); } catch(_) {}
    apply();
  }

  // Не даём колесу дергать страницу в активный просмотре; чат и каталог остаются скроллящимися.
  function isAllowedScrollTarget(node){
    return !!node?.closest?.('#chatMessages, .chat-card .messages, #jc40CatalogRoot .jc40-scroll, .watch-sidebar, .jc41-allow-scroll');
  }

  document.addEventListener('wheel', function(e){
    if(!document.body.classList.contains('jc41-rave-focus')) return;
    if(isAllowedScrollTarget(e.target)) return;
    e.preventDefault();
    e.stopPropagation();
  }, {capture:true, passive:false});

  document.addEventListener('touchmove', function(e){
    if(!document.body.classList.contains('jc41-rave-focus')) return;
    if(isAllowedScrollTarget(e.target)) return;
    e.preventDefault();
    e.stopPropagation();
  }, {capture:true, passive:false});

  document.addEventListener('keydown', function(e){
    if(e.key === 'Escape' && document.body.classList.contains('jc41-rave-focus') && !(window.jc40CleanMenuDebug?.().open)){
      setFocus(false);
    }
  }, true);

  document.addEventListener('fullscreenchange', syncFullscreenButtons);
  document.addEventListener('webkitfullscreenchange', syncFullscreenButtons);
  document.addEventListener('msfullscreenchange', syncFullscreenButtons);

  window.jc41SetRaveMode = setFocus;
  window.jc41ToggleRaveMode = function(){ setFocus(!desired); };
  window.jc42SetActiveView = setFocus;
  window.jc42ToggleActiveView = function(){ setFocus(!desired); };
  window.jc42ToggleFullscreen = togglePlayerFullscreen;
  window.jc41RaveDebug = function(){
    return {
      build: BUILD,
      desired,
      active: document.body.classList.contains('jc41-rave-focus'),
      watchMode: isWatchMode(),
      scrollY: window.scrollY || document.documentElement.scrollTop || 0,
      hasToggle: !!document.getElementById('jc41RaveToggle'),
      hasFloating: !!document.getElementById('jc41RaveFloating'),
      hasFullscreenButton: !!document.querySelector('[data-jc41-full]'),
      hasDock: !!document.getElementById('jc45ActiveDock'),
      fullscreenElement: document.fullscreenElement?.id || document.fullscreenElement?.tagName || '',
      fullscreenTarget: document.getElementById('jc45ActiveFullscreenTarget')?.id || '',
      playerHeight: document.querySelector('.player-frame')?.getBoundingClientRect?.().height || 0,
      sidebarWidth: document.querySelector('.watch-sidebar')?.getBoundingClientRect?.().width || 0
    };
  };

  setInterval(apply, 180);
  setTimeout(function(){
    apply();
    console.log('[JC44 active view] ready', window.jc41RaveDebug());
  }, 500);
})();


// Stage 42 public aliases with the new name.
try {
  window.jc42ActiveViewDebug = function(){ return window.jc41RaveDebug ? window.jc41RaveDebug() : { build: window.JUSTCLOVER_BUILD }; };
  window.jc42ToggleActiveView = window.jc42ToggleActiveView || window.jc41ToggleRaveMode;
  window.jc42SetActiveView = window.jc42SetActiveView || window.jc41SetRaveMode;
} catch(_) {}


// Stage 45 public aliases.
try {
  window.jc44ActiveViewDebug = function(){ return window.jc41RaveDebug ? window.jc41RaveDebug() : { build: window.JUSTCLOVER_BUILD }; };
  window.jc44ToggleActiveView = window.jc42ToggleActiveView || window.jc41ToggleRaveMode;
  window.jc44SetActiveView = window.jc42SetActiveView || window.jc41SetRaveMode;
  window.jc44ToggleFullscreen = window.jc42ToggleFullscreen;
} catch(_) {}


// Stage 45 public aliases.
try {
  window.jc44ActiveViewDebug = function(){ return window.jc41RaveDebug ? window.jc41RaveDebug() : { build: window.JUSTCLOVER_BUILD }; };
  window.jc44ToggleActiveView = window.jc42ToggleActiveView || window.jc41ToggleRaveMode;
  window.jc44SetActiveView = window.jc42SetActiveView || window.jc41SetRaveMode;
  window.jc44ToggleFullscreen = window.jc42ToggleFullscreen;
} catch(_) {}


// Stage 45 public aliases.
try {
  window.jc45ActiveViewDebug = function(){ return window.jc41RaveDebug ? window.jc41RaveDebug() : { build: window.JUSTCLOVER_BUILD }; };
  window.jc45ToggleActiveView = window.jc42ToggleActiveView || window.jc41ToggleRaveMode;
  window.jc45SetActiveView = window.jc42SetActiveView || window.jc41SetRaveMode;
  window.jc45ToggleFullscreen = window.jc42ToggleFullscreen;
} catch(_) {}


// Stage 46 public aliases.
try {
  window.jc46ActiveViewDebug = function(){ return window.jc41RaveDebug ? window.jc41RaveDebug() : { build: window.JUSTCLOVER_BUILD }; };
  window.jc46ToggleActiveView = window.jc45ToggleActiveView || window.jc42ToggleActiveView || window.jc41ToggleRaveMode;
  window.jc46SetActiveView = window.jc45SetActiveView || window.jc42SetActiveView || window.jc41SetRaveMode;
  window.jc46ToggleFullscreen = togglePlayerFullscreen;
} catch(_) {}


// Stage 48 public aliases.
try {
  window.jc48ActiveViewDebug = function(){ return window.jc41RaveDebug ? window.jc41RaveDebug() : { build: window.JUSTCLOVER_BUILD }; };
  window.jc48ToggleActiveView = window.jc46ToggleActiveView || window.jc45ToggleActiveView || window.jc42ToggleActiveView || window.jc41ToggleRaveMode;
  window.jc48SetActiveView = window.jc46SetActiveView || window.jc45SetActiveView || window.jc42SetActiveView || window.jc41SetRaveMode;
  window.jc48ToggleFullscreen = window.jc46ToggleFullscreen || window.jc45ToggleFullscreen || window.jc42ToggleFullscreen;
} catch(_) {}


// Stage 50 public aliases.
try {
  window.jc49ActiveViewDebug = function(){ return window.jc41RaveDebug ? window.jc41RaveDebug() : { build: window.JUSTCLOVER_BUILD }; };
  window.jc49ToggleActiveView = window.jc48ToggleActiveView || window.jc46ToggleActiveView || window.jc41ToggleRaveMode;
  window.jc49SetActiveView = window.jc48SetActiveView || window.jc46SetActiveView || window.jc41SetRaveMode;
  window.jc49ToggleFullscreen = window.jc48ToggleFullscreen || window.jc46ToggleFullscreen || window.jc42ToggleFullscreen;
} catch(_) {}


// Stage 50 public aliases — Rave-like active view.
try {
  window.jc50ActiveViewDebug = function(){ return window.jc49ActiveViewDebug ? window.jc49ActiveViewDebug() : (window.jc48ActiveViewDebug ? window.jc48ActiveViewDebug() : { build: window.JUSTCLOVER_BUILD }); };
  window.jc50ToggleActiveView = window.jc49ToggleActiveView || window.jc48ToggleActiveView || window.jc46ToggleActiveView || window.jc41ToggleRaveMode;
  window.jc50SetActiveView = window.jc49SetActiveView || window.jc48SetActiveView || window.jc46SetActiveView || window.jc41SetRaveMode;
  window.jc50ToggleFullscreen = window.jc49ToggleFullscreen || window.jc48ToggleFullscreen || window.jc46ToggleFullscreen || window.jc42ToggleFullscreen;
} catch(_) {}


// Stage 51 public aliases — Rave clone layout.
try {
  window.jc51ActiveViewDebug = function(){ return window.jc41RaveDebug ? window.jc41RaveDebug() : { build: window.JUSTCLOVER_BUILD }; };
  window.jc51ToggleActiveView = window.jc50ToggleActiveView || window.jc49ToggleActiveView || window.jc48ToggleActiveView || window.jc41ToggleRaveMode;
  window.jc51SetActiveView = window.jc50SetActiveView || window.jc49SetActiveView || window.jc48SetActiveView || window.jc41SetRaveMode;
  window.jc51ToggleFullscreen = window.jc50ToggleFullscreen || window.jc49ToggleFullscreen || window.jc48ToggleFullscreen || window.jc42ToggleFullscreen;
} catch(_) {}


// Stage 52 public aliases — clean Rave-like shell.
try {
  window.jc52ActiveViewDebug = function(){ return window.jc41RaveDebug ? window.jc41RaveDebug() : { build: window.JUSTCLOVER_BUILD }; };
  window.jc52ToggleActiveView = window.jc51ToggleActiveView || window.jc50ToggleActiveView || window.jc49ToggleActiveView || window.jc48ToggleActiveView || window.jc41ToggleRaveMode;
  window.jc52SetActiveView = window.jc51SetActiveView || window.jc50SetActiveView || window.jc49SetActiveView || window.jc48SetActiveView || window.jc41SetRaveMode;
  window.jc52ToggleFullscreen = window.jc51ToggleFullscreen || window.jc50ToggleFullscreen || window.jc49ToggleFullscreen || window.jc48ToggleFullscreen || window.jc42ToggleFullscreen;
} catch(_) {}


// Stage 53 public aliases — top-right icons removed.
try{
  window.jc53ActiveViewDebug = function(){ return window.jc52ActiveViewDebug ? window.jc52ActiveViewDebug() : { build: window.JUSTCLOVER_BUILD }; };
  window.jc53ToggleActiveView = window.jc52ToggleActiveView || window.jc51ToggleActiveView || window.jc50ToggleActiveView || window.jc49ToggleActiveView || window.jc48ToggleActiveView || window.jc41ToggleRaveMode;
  window.jc53SetActiveView = window.jc52SetActiveView || window.jc51SetActiveView || window.jc50SetActiveView || window.jc49SetActiveView || window.jc48SetActiveView || window.jc41SetRaveMode;
  window.jc53ToggleFullscreen = window.jc52ToggleFullscreen || window.jc51ToggleFullscreen || window.jc50ToggleFullscreen || window.jc49ToggleFullscreen || window.jc48ToggleFullscreen || window.jc42ToggleFullscreen;
}catch(_){ }


// Stage 54 public aliases — polish only, no DOM reshuffle.
try{
  window.jc54ActiveViewDebug = function(){ return (window.jc53ActiveViewDebug||window.jc52ActiveViewDebug) ? (window.jc53ActiveViewDebug||window.jc52ActiveViewDebug)() : { build: window.JUSTCLOVER_BUILD }; };
  window.jc54ToggleFullscreen = window.jc53ToggleFullscreen || window.jc52ToggleFullscreen || window.jc51ToggleFullscreen || window.jc42ToggleFullscreen;
}catch(_){ }


// Stage 55 — hide useless cinema button and keep chat flush to top.
(function(){
  function hideCinemaButtons(root=document){
    const nodes = Array.from(root.querySelectorAll('button,a,[role="button"],.chip,.pill,.segmented button'));
    nodes.forEach((el)=>{
      const txt = String(el.textContent||'').trim().toLowerCase();
      const meta = ((el.getAttribute('aria-label')||'') + ' ' + (el.getAttribute('title')||'')).toLowerCase();
      const hay = (txt + ' ' + meta).replace(/\s+/g,' ');
      if(/(^|\s)кино($|\s)/i.test(hay) || /(^|\s)(cinema|movie)($|\s)/i.test(hay)){
        el.style.setProperty('display','none','important');
        el.setAttribute('data-jc55-hidden-cinema','1');
      }
    });
  }
  try{ hideCinemaButtons(document); }catch(_){}
  const mo = new MutationObserver(()=>{ try{ hideCinemaButtons(document); }catch(_){} });
  mo.observe(document.documentElement || document.body, {subtree:true, childList:true, characterData:true, attributes:true, attributeFilter:['class','title','aria-label']});
  window.jc55HideCinema = function(){ hideCinemaButtons(document); return true; };
  window.jc55ActiveViewDebug = function(){
    return {
      build: window.JUSTCLOVER_BUILD,
      hiddenCinema: document.querySelectorAll('[data-jc55-hidden-cinema]').length,
      chatCard: !!document.querySelector('.chat-card'),
      raveFocus: document.body.classList.contains('jc41-rave-focus')
    };
  };
})();


// Stage 56 — force chat card to occupy the whole sidebar top-to-bottom.
(function(){
  function normalizeSidebar(){
    if(!document.body.classList.contains('jc41-rave-focus')) return false;
    const sidebar = document.querySelector('.watch-sidebar');
    const chat = document.querySelector('.watch-sidebar .chat-card, .chat-card');
    if(!sidebar || !chat) return false;

    // Move chat to be the direct first child of sidebar so hidden legacy blocks cannot reserve height above it.
    if(chat.parentElement !== sidebar){
      try{ sidebar.prepend(chat); }catch(_){ try{ sidebar.appendChild(chat); }catch(__){} }
    } else if(sidebar.firstElementChild !== chat){
      try{ sidebar.prepend(chat); }catch(_){}
    }

    Array.from(sidebar.children).forEach((el)=>{
      if(el !== chat){
        el.style.setProperty('display','none','important');
        el.setAttribute('data-jc56-hidden-side','1');
      }
    });

    ['padding','margin','top','bottom','height','min-height','max-height','transform'].forEach((prop)=>{
      try{ chat.style.removeProperty(prop); }catch(_){}
    });
    chat.setAttribute('data-jc56-chat-shell','1');

    const head = chat.querySelector('.side-card-head');
    const messages = chat.querySelector('#chatMessages, .messages');
    const form = chat.querySelector('#chatForm, .message-form, form');
    if(head) head.setAttribute('data-jc56-chat-head','1');
    if(messages) messages.setAttribute('data-jc56-chat-messages','1');
    if(form) form.setAttribute('data-jc56-chat-form','1');
    return true;
  }

  function hideCinemaButtons(root=document){
    const nodes = Array.from(root.querySelectorAll('button,a,[role="button"],.chip,.pill,.segmented button'));
    nodes.forEach((el)=>{
      const txt = String(el.textContent||'').trim().toLowerCase();
      const meta = ((el.getAttribute('aria-label')||'') + ' ' + (el.getAttribute('title')||'')).toLowerCase();
      const hay = (txt + ' ' + meta).replace(/\s+/g,' ');
      if(/(^|\s)кино($|\s)/i.test(hay) || /(^|\s)(cinema|movie)($|\s)/i.test(hay)){
        el.style.setProperty('display','none','important');
        el.setAttribute('data-jc56-hidden-cinema','1');
      }
    });
  }

  function tick(){
    try{ normalizeSidebar(); }catch(_){}
    try{ hideCinemaButtons(document); }catch(_){}
  }
  tick();
  window.addEventListener('load', tick, {once:false});
  document.addEventListener('click', ()=>setTimeout(tick, 30), true);
  const mo = new MutationObserver(()=>{ setTimeout(tick, 0); });
  mo.observe(document.documentElement || document.body, {subtree:true, childList:true, attributes:true, characterData:true});

  window.jc56NormalizeSidebar = function(){ return normalizeSidebar(); };
  window.jc56ActiveViewDebug = function(){
    const sidebar = document.querySelector('.watch-sidebar');
    const chat = document.querySelector('.watch-sidebar .chat-card');
    return {
      build: window.JUSTCLOVER_BUILD,
      raveFocus: document.body.classList.contains('jc41-rave-focus'),
      sidebarChildren: sidebar ? sidebar.children.length : 0,
      chatIsDirectChild: !!(sidebar && chat && chat.parentElement === sidebar),
      hiddenSide: document.querySelectorAll('[data-jc56-hidden-side]').length,
      hiddenCinema: document.querySelectorAll('[data-jc56-hidden-cinema]').length
    };
  };
})();
