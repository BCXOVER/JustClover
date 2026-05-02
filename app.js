/* =========================================================
   JustClover Stage 68 — Player Geometry Fix
   Version: stage68-player-geometry-fix-20260502-1

   Цель: не чинить старый каталог патчами поверх патчей, а заменить
   его новым изолированным modal, который не зависит от Stage35/36/37.
   ========================================================= */

const JC40_BUILD = "stage68-player-geometry-fix-20260502-1";
const JC40_BASE_COMMIT = "f658b5bfad3fade4eb7f9c4d82865452cdc19f00";
const JC40_BASE_APP = `https://cdn.jsdelivr.net/gh/BCXOVER/JustClover@${JC40_BASE_COMMIT}/app.js`;

window.JUSTCLOVER_BUILD = JC40_BUILD;
console.log("JustClover Stage 68 PLAYERGEOMETRY loader:", JC40_BUILD);

try {
  await import(JC40_BASE_APP + `?base=stage37&stage45=${Date.now()}`);
} catch (e) {
  console.error("JustClover Stage 68: base app import failed", e);
  throw e;
}


window.JUSTCLOVER_BUILD = JC40_BUILD;

/* =========================================================
   Stage 62 auth reset.
   Правило: страница входа полностью нативная. Никаких active-view,
   dock, catalog hooks, автокликов, direct Firebase login и guest loops.
   ========================================================= */
(function(){
  const ACTIVE_KEYS = [
    'jc62ActiveViewMode','jc58ActiveViewMode','jc57ActiveViewMode','jc56ActiveViewMode','jc55ActiveViewMode','jc54ActiveViewMode','jc53ActiveViewMode','jc52ActiveViewMode','jc51ActiveViewMode','jc50ActiveViewMode','jc49ActiveViewMode','jc48ActiveViewMode','jc47ActiveViewMode','jc46ActiveViewMode','jc45ActiveViewMode','jc44ActiveViewMode','jc43ActiveViewMode','jc41ActiveViewMode'
  ];
  const CLEAN_CLASSES = [
    'jc41-rave-focus','jc40-watch-mode','jc40-catalog-open','jc40-force-new-catalog',
    'jc37-modal-lock','jc38-catalog-open','jc-catalog-open','jc35-scroll-guard'
  ];
  let removedGuestParam = false;

  function visible(el){
    if(!el) return false;
    if(el.classList?.contains('hidden')) return false;
    const cs = window.getComputedStyle ? getComputedStyle(el) : null;
    if(cs && (cs.display === 'none' || cs.visibility === 'hidden' || Number(cs.opacity) === 0)) return false;
    const r = el.getBoundingClientRect?.();
    return !r || (r.width > 2 && r.height > 2);
  }

  window.__jc62IsAuthScreen = function(){
    const app = document.getElementById('appView');
    if(!app || app.classList.contains('hidden')) return true;
    const auth = document.getElementById('authView') || document.getElementById('authSection') ||
      document.querySelector('.auth-view,.auth-card,.auth-panel,.login-card,[data-auth-view]');
    return !!(auth && visible(auth));
  };

  function removeAutoGuestParams(){
    try{
      const u = new URL(location.href);
      let changed = false;
      ['guest','autoGuest','asGuest'].forEach(k => { if(u.searchParams.has(k)){ u.searchParams.delete(k); changed = true; } });
      if(changed){
        history.replaceState({}, '', u.pathname + u.search + u.hash);
        removedGuestParam = true;
      }
    }catch(_){}
  }

  window.jc62ResetAuth = function(){
    ACTIVE_KEYS.forEach(k => { try{ localStorage.removeItem(k); }catch(_){} });
    for(const c of CLEAN_CLASSES){
      document.documentElement.classList.remove(c);
      document.body?.classList?.remove(c);
    }
    if(document.body){
      document.body.style.position = '';
      document.body.style.top = '';
      document.body.style.left = '';
      document.body.style.width = '';
      document.body.style.overflow = '';
    }
    document.getElementById('jc40CatalogRoot')?.remove?.();
    document.getElementById('jc51RaveTopbar')?.remove?.();
    document.getElementById('jc45ActiveDock')?.remove?.();
    document.getElementById('jc43ActiveDock')?.remove?.();
    const oldCatalog = document.querySelector('.jc-catalog-layer');
    if(oldCatalog){
      oldCatalog.classList.remove('open');
      oldCatalog.setAttribute('aria-hidden','true');
      oldCatalog.style.display = 'none';
      oldCatalog.style.pointerEvents = 'none';
    }
    removeAutoGuestParams();
    return true;
  };

  window.jc62AuthDebug = function(){
    return {
      build: window.JUSTCLOVER_BUILD,
      auth: window.__jc62IsAuthScreen(),
      removedGuestParam,
      appHidden: document.getElementById('appView')?.classList.contains('hidden'),
      activeClass: document.body?.classList.contains('jc41-rave-focus'),
      guestParam: new URLSearchParams(location.search).get('guest'),
      activeStorage: ACTIVE_KEYS.filter(k => { try{return localStorage.getItem(k)==='1'}catch(_){return false} })
    };
  };

  function tick(){
    if(!window.__jc62IsAuthScreen()) return;
    window.jc62ResetAuth();
  }

  tick();
  setTimeout(tick, 0);
  setTimeout(tick, 250);
  const timer = setInterval(tick, 400);
  setTimeout(()=>clearInterval(timer), 12000);
})();

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

  if(!window.__jc62IsAuthScreen?.()) document.body.classList.add('jc40-force-new-catalog');

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
    if(!window.__jc62IsAuthScreen?.()) document.body.classList.add('jc40-force-new-catalog');
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
   JustClover Stage 68 — Player Geometry Fix
   Version: stage68-player-geometry-fix-20260502-1
   ========================================================= */
(function(){
  const BUILD = "stage68-player-geometry-fix-20260502-1";
  const STORE_KEY = "jc62ActiveViewMode";
  let desired = false;

  try { desired = !window.__jc62IsAuthScreen?.() && localStorage.getItem(STORE_KEY) === "1"; } catch(_) {}

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
    if(window.__jc62IsAuthScreen?.()) return;
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
    if(on && window.__jc62IsAuthScreen?.()) return;
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


// Stage 62 public aliases.
try{
  window.jc62ActiveViewDebug = window.jc54ActiveViewDebug || function(){ return { build: window.JUSTCLOVER_BUILD }; };
}catch(_){}

/* =========================================================
   JustClover Stage 68 — Player Geometry Fix
   Главная идея: после входа в комнату показываем только active-view.
   Auth/guest/login не трогаем. Чат не переносим в DOM.
   ========================================================= */
(function(){
  const BUILD = "stage68-player-geometry-fix-20260502-1";
  const ACTIVE_KEYS = [
    'jc64ActiveFirst','jc62ActiveViewMode','jc58ActiveViewMode','jc57ActiveViewMode','jc56ActiveViewMode',
    'jc55ActiveViewMode','jc54ActiveViewMode','jc53ActiveViewMode','jc52ActiveViewMode','jc51ActiveViewMode',
    'jc50ActiveViewMode','jc49ActiveViewMode','jc48ActiveViewMode','jc47ActiveViewMode','jc46ActiveViewMode',
    'jc45ActiveViewMode','jc44ActiveViewMode','jc43ActiveViewMode','jc41ActiveViewMode'
  ];

  function isAuthScreen(){
    return !!(window.__jc62IsAuthScreen ? window.__jc62IsAuthScreen() :
      (document.getElementById('appView')?.classList.contains('hidden')));
  }

  function isWatchMode(){
    const app = document.getElementById('appView');
    const watch = document.getElementById('watchSection');
    return !!(watch && watch.classList.contains('active') && !app?.classList.contains('hidden') && !isAuthScreen());
  }

  function hardTop(){
    try { document.documentElement.scrollTop = 0; } catch(_) {}
    try { document.body.scrollTop = 0; } catch(_) {}
  }

  function makeActivePersistent(){
    ACTIVE_KEYS.forEach(k => { try { localStorage.setItem(k, '1'); } catch(_) {} });
  }

  function hideCinemaButtons(root=document){
    const nodes = Array.from(root.querySelectorAll('button,a,[role="button"],.chip,.pill,.toolbar-chip'));
    nodes.forEach((el)=>{
      const text = String(el.textContent || '').trim().toLowerCase();
      const meta = ((el.getAttribute('aria-label') || '') + ' ' + (el.getAttribute('title') || '')).toLowerCase();
      const hay = (text + ' ' + meta).replace(/\s+/g,' ');
      if(/(^|\s)кино($|\s)/i.test(hay) || /(^|\s)(cinema|movie)($|\s)/i.test(hay)){
        el.style.setProperty('display','none','important');
        el.setAttribute('data-jc64-hidden-cinema','1');
      }
    });
  }

  function normalizeTopbar(){
    const bar = document.getElementById('jc51RaveTopbar');
    if(!bar) return false;

    const exit = bar.querySelector('[data-jc51-exit]');
    if(exit){
      exit.setAttribute('title','Комнаты');
      exit.setAttribute('aria-label','Комнаты');
      // Не открываем старый "обычный режим"; главный интерфейс теперь active-first.
      exit.onclick = function(e){
        e.preventDefault();
        e.stopPropagation();
        // Мягкая попытка вернуться к комнатам через родную навигацию, если такая кнопка есть.
        const candidates = Array.from(document.querySelectorAll('button,a,[role="button"]'));
        const rooms = candidates.find(b => /комнаты|создать комнату|rooms/i.test((b.textContent || b.title || b.getAttribute('aria-label') || '').trim()));
        if(rooms && !rooms.closest('#jc51RaveTopbar')) rooms.click();
      };
    }

    // Верхняя панель — навигация и каталог, без дублей микро/чата/fullscreen.
    bar.querySelectorAll('[data-jc51-mic],[data-jc51-chat],[data-jc51-full]').forEach(el => el.remove());
    return true;
  }

  function normalizeDock(){
    const dock = document.getElementById('jc45ActiveDock') || document.getElementById('jc43ActiveDock');
    if(!dock) return false;
    dock.classList.add('jc64-main-dock');

    const floating = document.getElementById('jc41RaveFloating');
    if(floating){
      floating.querySelector('[data-jc41-exit]')?.remove?.();
      floating.querySelector('[data-jc41-catalog]')?.setAttribute('title','Источники');
      const full = floating.querySelector('[data-jc41-full]');
      if(full){
        full.textContent = document.fullscreenElement ? 'Выйти' : 'Экран';
      }
      // Убираем кино, если старые stages где-то его добавили.
      hideCinemaButtons(floating);
    }
    return true;
  }

  function extractYouTubeId(url){
    const raw = String(url || '').trim();
    if(!raw) return '';
    try{
      const u = new URL(raw, location.href);
      const h = u.hostname.replace(/^www\./,'').toLowerCase();
      if(h === 'youtu.be') return u.pathname.split('/').filter(Boolean)[0] || '';
      if(h.endsWith('youtube.com') || h.endsWith('youtube-nocookie.com')){
        if(u.searchParams.get('v')) return u.searchParams.get('v') || '';
        const parts = u.pathname.split('/').filter(Boolean);
        const keys = ['embed','shorts','live','v'];
        for(let i=0;i<parts.length-1;i++){
          if(keys.includes(parts[i])) return parts[i+1] || '';
        }
      }
    }catch(_){
      const m = raw.match(/(?:v=|youtu\.be\/|embed\/|shorts\/)([A-Za-z0-9_-]{8,})/);
      return m ? m[1] : '';
    }
    return '';
  }

  function currentSourceUrl(){
    const fields = [
      document.getElementById('sourceUrl'),
      document.querySelector('input[name="sourceUrl"]'),
      document.querySelector('[data-current-source-url]'),
      document.querySelector('[data-source-url]')
    ];
    for(const f of fields){
      const v = (f?.value || f?.dataset?.currentSourceUrl || f?.dataset?.sourceUrl || '').trim();
      if(v) return v;
    }
    const text = Array.from(document.querySelectorAll('.source-history,.queue-card,.player-card,.player-card-redesign'))
      .map(el => el.textContent || '').join(' ');
    const m = text.match(/https?:\/\/(?:www\.)?(?:youtube\.com|youtu\.be)\/[^\s"')]+/i);
    return m ? m[0] : '';
  }

  function ensureYouTubeVisible(){
    if(!isWatchMode()) return false;
    const url = currentSourceUrl();
    const id = extractYouTubeId(url);
    if(!id) return false;

    const frame = document.querySelector('.player-frame');
    if(!frame) return false;

    // Если VK/local уже реально отображается, не трогаем.
    const vk = frame.querySelector('iframe[src*="vk.com"],iframe[src*="vkvideo"],video[src],video:not([src=""])');
    if(vk && vk.getBoundingClientRect().width > 20 && vk.getBoundingClientRect().height > 20) return false;

    // Если родной YouTube iframe есть и не схлопнут — просто оставляем.
    const nativeYt = frame.querySelector('iframe[src*="youtube.com"],iframe[src*="youtube-nocookie.com"],#youtubePlayer iframe');
    if(nativeYt){
      nativeYt.style.setProperty('display','block','important');
      nativeYt.style.setProperty('width','100%','important');
      nativeYt.style.setProperty('height','100%','important');
      nativeYt.style.setProperty('opacity','1','important');
      nativeYt.style.setProperty('visibility','visible','important');
      return true;
    }

    // Fallback без вмешательства в синхронизацию: показывает ролик, если родной iframe не появился.
    let fb = document.getElementById('jc64YouTubeFallback');
    if(!fb){
      fb = document.createElement('iframe');
      fb.id = 'jc64YouTubeFallback';
      fb.className = 'jc64-youtube-fallback';
      fb.allow = 'accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share';
      fb.allowFullscreen = true;
      fb.referrerPolicy = 'strict-origin-when-cross-origin';
      frame.appendChild(fb);
    }
    const src = `https://www.youtube-nocookie.com/embed/${encodeURIComponent(id)}?autoplay=0&playsinline=1&rel=0&modestbranding=1`;
    if(fb.src !== src) fb.src = src;
    return true;
  }

  function forceActiveFirst(){
    if(isAuthScreen()){
      document.documentElement.classList.remove('jc64-active-first','jc41-rave-focus');
      document.body?.classList?.remove('jc64-active-first','jc41-rave-focus');
      return false;
    }

    if(!isWatchMode()){
      document.documentElement.classList.remove('jc64-active-first');
      document.body?.classList?.remove('jc64-active-first');
      return false;
    }

    makeActivePersistent();

    // Используем существующий стабильный active-view Stage62, но он теперь не отдельный режим, а основной.
    if(typeof window.jc42SetActiveView === 'function' && !document.body.classList.contains('jc41-rave-focus')){
      try { window.jc42SetActiveView(true); } catch(_) {}
    }

    document.documentElement.classList.add('jc64-active-first','jc41-rave-focus','jc40-watch-mode');
    document.body.classList.add('jc64-active-first','jc41-rave-focus','jc40-watch-mode');
    document.body.classList.remove('jc35-scroll-guard','jc37-modal-lock','jc38-catalog-open','jc-catalog-open');

    normalizeTopbar();
    normalizeDock();
    hideCinemaButtons(document);
    ensureYouTubeVisible();
    hardTop();
    return true;
  }

  function tick(){
    try { forceActiveFirst(); } catch(e) { console.warn('[JC64] active-first tick failed', e); }
  }

  tick();
  setTimeout(tick, 80);
  setTimeout(tick, 300);
  setTimeout(tick, 900);
  setInterval(tick, 700);

  document.addEventListener('click', () => setTimeout(tick, 30), true);
  document.addEventListener('fullscreenchange', () => setTimeout(tick, 30), true);

  window.jc64ApplyMainView = forceActiveFirst;
  window.jc64ActiveFirstDebug = function(){
    const frame = document.querySelector('.player-frame');
    const chat = document.querySelector('.chat-card');
    return {
      build: BUILD,
      auth: isAuthScreen(),
      watchMode: isWatchMode(),
      activeFirst: document.body.classList.contains('jc64-active-first'),
      activeView: document.body.classList.contains('jc41-rave-focus'),
      topbar: !!document.getElementById('jc51RaveTopbar'),
      dock: !!(document.getElementById('jc45ActiveDock') || document.getElementById('jc43ActiveDock')),
      sourceUrl: currentSourceUrl(),
      youtubeFallback: !!document.getElementById('jc64YouTubeFallback'),
      playerRect: frame ? {...frame.getBoundingClientRect().toJSON?.() || {width:frame.getBoundingClientRect().width,height:frame.getBoundingClientRect().height,top:frame.getBoundingClientRect().top,left:frame.getBoundingClientRect().left}} : null,
      chatRect: chat ? {width:chat.getBoundingClientRect().width,height:chat.getBoundingClientRect().height,top:chat.getBoundingClientRect().top,left:chat.getBoundingClientRect().left} : null
    };
  };
})();



/* =========================================================
   JustClover Stage 65 — Player Load Repair
   Active-first stays main. Auth is untouched.
   Fix: source controls remain alive offscreen, and YouTube/VK are rendered
   into the player slot immediately after setting a source.
   ========================================================= */
(function(){
  const BUILD = "stage68-player-geometry-fix-20260502-1";
  let lastRenderedKey = "";
  let lastUrl = "";
  let lastType = "";
  let renderTimer = null;

  function isAuthScreen(){
    return !!(window.__jc62IsAuthScreen ? window.__jc62IsAuthScreen() :
      (document.getElementById('appView')?.classList.contains('hidden')));
  }

  function isWatchMode(){
    const app = document.getElementById('appView');
    const watch = document.getElementById('watchSection');
    return !!(watch && watch.classList.contains('active') && !app?.classList.contains('hidden') && !isAuthScreen());
  }

  function qs(sel, root=document){ return root.querySelector(sel); }

  function playerFrame(){
    return qs('.player-frame') || qs('.player-card-redesign') || qs('.player-card') || qs('.player-shell');
  }

  function normalizeUrl(raw){
    raw = String(raw || '').trim();
    if(!raw) return '';
    try { return new URL(raw, location.href).href; } catch(_) { return raw; }
  }

  function getNativeSourceUrl(){
    const candidates = [
      document.getElementById('jc40Url'),
      document.getElementById('sourceUrl'),
      document.querySelector('input[name="sourceUrl"]'),
      document.querySelector('[data-current-source-url]'),
      document.querySelector('[data-source-url]')
    ];
    for(const el of candidates){
      const v = normalizeUrl(el?.value || el?.dataset?.currentSourceUrl || el?.dataset?.sourceUrl || '');
      if(v) return v;
    }
    return '';
  }

  function getNativeSourceType(){
    const st = document.getElementById('sourceType');
    return String(st?.value || lastType || '').toLowerCase();
  }

  function parseYouTubeId(raw){
    raw = String(raw || '').trim();
    if(!raw) return '';
    try{
      const u = new URL(raw, location.href);
      const h = u.hostname.replace(/^www\./,'').toLowerCase();
      if(h === 'youtu.be') return (u.pathname.split('/').filter(Boolean)[0] || '').replace(/[^A-Za-z0-9_-]/g,'');
      if(h.endsWith('youtube.com') || h.endsWith('youtube-nocookie.com')){
        const v = u.searchParams.get('v');
        if(v) return v.replace(/[^A-Za-z0-9_-]/g,'');
        const parts = u.pathname.split('/').filter(Boolean);
        const idx = parts.findIndex(p => ['embed','shorts','live','v'].includes(p));
        if(idx >= 0 && parts[idx+1]) return parts[idx+1].replace(/[^A-Za-z0-9_-]/g,'');
      }
    }catch(_){}
    const m = raw.match(/(?:youtu\.be\/|youtube(?:-nocookie)?\.com\/(?:watch\?.*?v=|embed\/|shorts\/|live\/)|[?&]v=)([A-Za-z0-9_-]{8,})/i);
    return m ? m[1] : '';
  }

  function parseVkEmbed(raw){
    raw = String(raw || '').trim();
    if(!raw) return '';
    try{
      const u = new URL(raw, location.href);
      if(/video_ext\.php$/i.test(u.pathname) || u.pathname.includes('video_ext.php')){
        return u.href.replace(/^http:/,'https:');
      }
      let m = (u.pathname + u.search + u.hash).match(/video(-?\d+)_(\d+)/i);
      if(!m){
        const z = u.searchParams.get('z') || '';
        m = z.match(/video(-?\d+)_(\d+)/i);
      }
      if(m){
        return `https://vk.com/video_ext.php?oid=${encodeURIComponent(m[1])}&id=${encodeURIComponent(m[2])}&hd=2`;
      }
    }catch(_){
      const m = raw.match(/video(-?\d+)_(\d+)/i);
      if(m) return `https://vk.com/video_ext.php?oid=${encodeURIComponent(m[1])}&id=${encodeURIComponent(m[2])}&hd=2`;
    }
    return '';
  }

  function isVkUrl(url){
    return /(^|\/\/)(?:m\.)?(?:vk\.com|vkvideo\.ru)\//i.test(String(url||'')) || /video(-?\d+)_(\d+)/i.test(String(url||''));
  }

  function isYoutubeUrl(url){
    return /youtu\.be|youtube\.com|youtube-nocookie\.com/i.test(String(url||''));
  }

  function isDirectVideo(url){
    return /\.(mp4|webm|ogg)(?:[?#].*)?$/i.test(String(url||''));
  }

  function removeDirectPlayer(){
    document.getElementById('jc65DirectPlayer')?.remove();
    document.body?.classList?.remove('jc67-main-player-active');
    document.querySelector('.player-frame')?.removeAttribute?.('data-jc67-main-player');
  }

  function ensureDirectPlayer(url, type){
    if(!isWatchMode()) return false;
    url = normalizeUrl(url || getNativeSourceUrl());
    type = String(type || getNativeSourceType() || '').toLowerCase();
    if(!url) return false;

    const frame = playerFrame();
    if(!frame) return false;

    let kind = '';
    let src = '';

    const yt = parseYouTubeId(url);
    if(type === 'youtube' || yt || isYoutubeUrl(url)){
      if(!yt) return false;
      kind = 'youtube';
      // youtube.com tends to be less problematic than nocookie for some browsers/extensions.
      src = `https://www.youtube.com/embed/${encodeURIComponent(yt)}?playsinline=1&rel=0&modestbranding=1&enablejsapi=1&origin=${encodeURIComponent(location.origin)}`;
    }else if(type === 'vk' || isVkUrl(url)){
      const vk = parseVkEmbed(url);
      if(!vk) return false;
      kind = 'vk';
      src = vk;
    }else if(type === 'mp4' || type === 'direct' || isDirectVideo(url)){
      kind = 'video';
      src = url;
    }else{
      return false;
    }

    const key = `${kind}:${src}`;
    if(key === lastRenderedKey && document.getElementById('jc65DirectPlayer')) return true;
    lastRenderedKey = key;
    lastUrl = url;
    lastType = type || kind;

    removeDirectPlayer();

    let el;
    if(kind === 'video'){
      el = document.createElement('video');
      el.controls = true;
      el.playsInline = true;
      el.preload = 'metadata';
      el.src = src;
    }else{
      el = document.createElement('iframe');
      el.src = src;
      el.allow = 'autoplay; fullscreen; encrypted-media; picture-in-picture; clipboard-write; web-share';
      el.allowFullscreen = true;
      el.referrerPolicy = 'strict-origin-when-cross-origin';
    }

    el.id = 'jc65DirectPlayer';
    el.className = `jc65-direct-player jc67-main-player jc65-${kind}`;
    el.setAttribute('data-jc65-url', url);
    el.setAttribute('data-jc65-kind', kind);

    frame.appendChild(el);
    document.body.classList.add('jc65-direct-player-active','jc67-main-player-active');
    try{ frame.setAttribute('data-jc67-main-player','1'); }catch(_){}
    return true;
  }

  function scheduleRender(url, type, delay=80){
    if(url) lastUrl = normalizeUrl(url);
    if(type) lastType = String(type).toLowerCase();
    clearTimeout(renderTimer);
    renderTimer = setTimeout(()=>{
      ensureDirectPlayer(lastUrl || getNativeSourceUrl(), lastType || getNativeSourceType());
    }, delay);
    setTimeout(()=>ensureDirectPlayer(lastUrl || getNativeSourceUrl(), lastType || getNativeSourceType()), 450);
    setTimeout(()=>ensureDirectPlayer(lastUrl || getNativeSourceUrl(), lastType || getNativeSourceType()), 1200);
  }

  function hookSourceSubmit(){
    document.addEventListener('click', function(e){
      const btn = e.target?.closest?.('#jc40RunBtn,#setSourceBtn,[data-jc40-paste-run]');
      if(!btn) return;

      const url =
        normalizeUrl(document.getElementById('jc40Url')?.value) ||
        normalizeUrl(document.getElementById('sourceUrl')?.value) ||
        lastUrl;
      const type =
        String(document.querySelector('.jc40-source-card.active')?.dataset?.jc40Source || '').toLowerCase() ||
        getNativeSourceType();

      if(url) scheduleRender(url, type, 160);
    }, true);

    document.addEventListener('change', function(e){
      if(e.target?.matches?.('#sourceUrl,#jc40Url,#sourceType,input[name="sourceUrl"]')){
        scheduleRender(getNativeSourceUrl(), getNativeSourceType(), 180);
      }
    }, true);
  }

  function keepNativeControlsAlive(){
    if(!isWatchMode()) return;
    const panel = document.querySelector('.source-panel-embedded');
    if(panel){
      panel.setAttribute('data-jc65-keepalive','1');
      panel.style.setProperty('display','block','important');
      panel.style.setProperty('position','absolute','important');
      panel.style.setProperty('left','-9999px','important');
      panel.style.setProperty('top','0','important');
      panel.style.setProperty('width','1px','important');
      panel.style.setProperty('height','1px','important');
      panel.style.setProperty('overflow','hidden','important');
      panel.style.setProperty('opacity','0','important');
      panel.style.setProperty('pointer-events','none','important');
    }
  }

  function fixYouTubeNativeVisibility(){
    if(!isWatchMode()) return;
    const frame = playerFrame();
    if(!frame) return;
    frame.querySelectorAll('#youtubePlayer,#youtubePlayer iframe,iframe[src*="youtube"],iframe[src*="youtu.be"],iframe[src*="youtube-nocookie"],iframe[src*="vk.com"],iframe[src*="vkvideo"]').forEach(el=>{
      el.style.setProperty('display','block','important');
      el.style.setProperty('position','absolute','important');
      el.style.setProperty('inset','0','important');
      el.style.setProperty('width','100%','important');
      el.style.setProperty('height','100%','important');
      el.style.setProperty('opacity','1','important');
      el.style.setProperty('visibility','visible','important');
      el.style.setProperty('border','0','important');
    });
  }

  function tick(){
    if(isAuthScreen()) return;
    keepNativeControlsAlive();
    fixYouTubeNativeVisibility();
    // If user already typed/selected a source and native player is still empty, render fallback.
    const url = lastUrl || getNativeSourceUrl();
    if(url) ensureDirectPlayer(url, lastType || getNativeSourceType());
  }

  hookSourceSubmit();
  tick();
  setTimeout(tick, 300);
  setTimeout(tick, 1000);
  setInterval(tick, 1200);

  window.jc65RenderSource = ensureDirectPlayer;
  window.jc65PlayerDebug = function(){
    const frame = playerFrame();
    const direct = document.getElementById('jc65DirectPlayer');
    return {
      build: BUILD,
      auth: isAuthScreen(),
      watchMode: isWatchMode(),
      url: lastUrl || getNativeSourceUrl(),
      type: lastType || getNativeSourceType(),
      direct: !!direct,
      directKind: direct?.getAttribute('data-jc65-kind') || '',
      directSrc: direct?.src || '',
      nativeSourceUrl: document.getElementById('sourceUrl')?.value || '',
      catalogUrl: document.getElementById('jc40Url')?.value || '',
      sourceType: document.getElementById('sourceType')?.value || '',
      frame: frame ? {w: frame.getBoundingClientRect().width, h: frame.getBoundingClientRect().height} : null,
      iframes: frame ? Array.from(frame.querySelectorAll('iframe')).map(i => i.src).slice(0,5) : []
    };
  };
})();


// Stage 67 public helpers. Direct player is the main active-view player; native source form stays alive only for room state.
try{
  window.jc67RenderSource = window.jc65RenderSource;
  window.jc67PlayerDebug = function(){
    const d = window.jc65PlayerDebug ? window.jc65PlayerDebug() : {};
    d.stage67 = true;
    d.mainPlayerActive = document.body.classList.contains('jc67-main-player-active');
    d.whiteScreenGuard = !!document.querySelector('.player-frame[data-jc67-main-player] #jc65DirectPlayer');
    return d;
  };
}catch(_){}


/* =========================================================
   Stage 68 — Player Geometry Fix.
   Главный плеер остаётся рабочим direct-shell, но геометрия больше не
   растягивает iframe на кривой контейнер. Для YouTube/VK держим чистый
   16:9 внутри левой области, центрируем и не залезаем под чат.
   ========================================================= */
(function(){
  const BUILD = "stage68-player-geometry-fix-20260502-1";

  function isAuthScreen(){
    return !!window.__jc62IsAuthScreen?.();
  }

  function isActiveMain(){
    return !isAuthScreen() && document.body.classList.contains('jc64-active-first');
  }

  function frame(){
    return document.querySelector('.player-frame');
  }

  function mainPlayer(){
    return document.getElementById('jc65DirectPlayer') ||
      document.querySelector('.jc67-main-player') ||
      document.querySelector('.player-frame iframe[src*="youtube"], .player-frame iframe[src*="vk.com"], .player-frame iframe[src*="vkvideo"], .player-frame video');
  }

  function playerKind(el){
    const kind = String(el?.getAttribute?.('data-jc65-kind') || '').toLowerCase();
    const src = String(el?.src || '').toLowerCase();
    if(kind) return kind;
    if(src.includes('youtube') || src.includes('youtu.be')) return 'youtube';
    if(src.includes('vk.com') || src.includes('vkvideo')) return 'vk';
    if(el?.tagName === 'VIDEO') return 'video';
    return '';
  }

  function fitPlayer(){
    if(!isActiveMain()) return false;
    const fr = frame();
    const el = mainPlayer();
    if(!fr || !el) return false;

    const r = fr.getBoundingClientRect();
    if(!r.width || !r.height) return false;

    fr.style.setProperty('position','relative','important');
    fr.style.setProperty('overflow','hidden','important');
    fr.style.setProperty('background','#000','important');

    const kind = playerKind(el);
    const isEmbed = kind === 'youtube' || kind === 'vk' || el.tagName === 'IFRAME';

    // Для embed-плееров лучше 16:9, иначе YouTube/VK сами рисуют кривые поля.
    // Для direct video можно растянуть в contain на весь контейнер.
    if(isEmbed){
      const aspect = 16 / 9;
      let w = r.width;
      let h = w / aspect;

      if(h > r.height){
        h = r.height;
        w = h * aspect;
      }

      // Чуть ниже центра не опускаем: место под dock уже снаружи, плеер должен выглядеть ровно.
      const left = Math.round((r.width - w) / 2);
      const top = Math.round((r.height - h) / 2);

      el.style.setProperty('position','absolute','important');
      el.style.setProperty('left', left + 'px', 'important');
      el.style.setProperty('top', top + 'px', 'important');
      el.style.setProperty('right','auto','important');
      el.style.setProperty('bottom','auto','important');
      el.style.setProperty('width', Math.round(w) + 'px', 'important');
      el.style.setProperty('height', Math.round(h) + 'px', 'important');
      el.style.setProperty('min-width','0','important');
      el.style.setProperty('min-height','0','important');
      el.style.setProperty('max-width','none','important');
      el.style.setProperty('max-height','none','important');
      el.style.setProperty('transform','none','important');
      el.style.setProperty('border','0','important');
      el.style.setProperty('background','#000','important');
      el.style.setProperty('z-index','30','important');
      el.style.setProperty('opacity','1','important');
      el.style.setProperty('visibility','visible','important');
    } else {
      el.style.setProperty('position','absolute','important');
      el.style.setProperty('inset','0','important');
      el.style.setProperty('width','100%','important');
      el.style.setProperty('height','100%','important');
      el.style.setProperty('object-fit','contain','important');
      el.style.setProperty('background','#000','important');
      el.style.setProperty('z-index','30','important');
    }

    document.body.classList.add('jc68-player-geometry');
    fr.setAttribute('data-jc68-fit','1');
    return true;
  }

  function tick(){
    try{ fitPlayer(); }catch(e){}
  }

  window.addEventListener('resize', tick, {passive:true});
  window.addEventListener('orientationchange', () => setTimeout(tick, 120), {passive:true});
  document.addEventListener('fullscreenchange', () => setTimeout(tick, 80), true);
  document.addEventListener('webkitfullscreenchange', () => setTimeout(tick, 80), true);
  document.addEventListener('click', () => setTimeout(tick, 80), true);

  const mo = new MutationObserver(() => setTimeout(tick, 0));
  mo.observe(document.documentElement || document.body, {
    subtree:true,
    childList:true,
    attributes:true,
    attributeFilter:['src','style','class','data-jc65-kind']
  });

  tick();
  setTimeout(tick, 250);
  setTimeout(tick, 900);
  setInterval(tick, 1200);

  window.jc68FitPlayer = fitPlayer;
  window.jc68PlayerDebug = function(){
    const fr = frame();
    const el = mainPlayer();
    const frR = fr?.getBoundingClientRect?.();
    const elR = el?.getBoundingClientRect?.();
    return {
      build: BUILD,
      active: isActiveMain(),
      hasFrame: !!fr,
      hasPlayer: !!el,
      kind: playerKind(el),
      frame: frR ? {x:Math.round(frR.x), y:Math.round(frR.y), w:Math.round(frR.width), h:Math.round(frR.height)} : null,
      player: elR ? {x:Math.round(elR.x), y:Math.round(elR.y), w:Math.round(elR.width), h:Math.round(elR.height)} : null,
      src: el?.src || '',
      fitted: fr?.getAttribute?.('data-jc68-fit') === '1'
    };
  };
})();
