/* =========================================================
   JustClover Stage 107 — EARLY Build Lock / No Reload Guard
   Version: stage108-chat-only-wallpaper-optimized-20260503-1
   Must run before older stage patches.
   ========================================================= */
(function(){
  const BUILD="stage108-chat-only-wallpaper-optimized-20260503-1";
  window.JUSTCLOVER_BUILD=BUILD;
  window.JC_STAGE_EXPECTED_BUILD=BUILD;
  window.JC_DISABLE_AUTO_RELOAD=true;
  window.JC_DISABLE_UPDATE_LOOP=true;
  try{
    sessionStorage.removeItem('jc72ApplyingBuild');
    sessionStorage.setItem('jc72NoReload','1');
    localStorage.setItem('jc72AutoUpdateDisabled','1');
  }catch(_){}
  try{
    window.__jc107NativeReload = Location.prototype.reload;
    Location.prototype.reload = function(){
      console.warn('[JC107] blocked location.reload() to prevent update loop');
    };
  }catch(_){
    try{ window.location.reload = function(){ console.warn('[JC107] blocked window.location.reload()'); }; }catch(__){}
  }
})();

/* =========================================================
   JustClover Stage 74 — Fixed Viewport Player
   Version: stage108-chat-only-wallpaper-optimized-20260503-1

   Цель: не чинить старый каталог патчами поверх патчей, а заменить
   его новым изолированным modal, который не зависит от Stage35/36/37.
   ========================================================= */

const JC40_BUILD = "stage108-chat-only-wallpaper-optimized-20260503-1";
const JC40_BASE_COMMIT = "f658b5bfad3fade4eb7f9c4d82865452cdc19f00";
const JC40_BASE_APP = `https://cdn.jsdelivr.net/gh/BCXOVER/JustClover@${JC40_BASE_COMMIT}/app.js`;

window.JUSTCLOVER_BUILD = JC40_BUILD;
console.log("JustClover Stage 74 FIXEDPLAYER loader:", JC40_BUILD);

try {
  await import(JC40_BASE_APP + `?base=stage37&stage45=${Date.now()}`);
} catch (e) {
  console.error("JustClover Stage 74: base app import failed", e);
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
   JustClover Stage 74 — Fixed Viewport Player
   Version: stage108-chat-only-wallpaper-optimized-20260503-1
   ========================================================= */
(function(){
  const BUILD = "stage108-chat-only-wallpaper-optimized-20260503-1";
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
   JustClover Stage 74 — Fixed Viewport Player
   Главная идея: после входа в комнату показываем только active-view.
   Auth/guest/login не трогаем. Чат не переносим в DOM.
   ========================================================= */
(function(){
  const BUILD = "stage108-chat-only-wallpaper-optimized-20260503-1";
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
  window.jc83DockMicDebug = window.jc88IconMicDebug;
})();



/* =========================================================
   JustClover Stage 65 — Player Load Repair
   Active-first stays main. Auth is untouched.
   Fix: source controls remain alive offscreen, and YouTube/VK are rendered
   into the player slot immediately after setting a source.
   ========================================================= */
(function(){
  const BUILD = "stage108-chat-only-wallpaper-optimized-20260503-1";
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


// Stage 71 public helpers. Stable direct player + persistent source state.
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
   Stage 71 — Stable Persistent Player.
   Base: Stage67 because it actually loads YouTube/VK.
   Removed the later geometry loops idea: no per-frame resize, no iframe reflow.
   Adds source persistence and one-time stable sizing only.
   ========================================================= */
(function(){
  const BUILD = 'stage108-chat-only-wallpaper-optimized-20260503-1';
  const PREFIX = 'jc71:lastSource:';
  let restoreAttempts = 0;
  let lastStableKey = '';

  function auth(){ return !!window.__jc62IsAuthScreen?.(); }
  function roomId(){
    try { return new URL(location.href).searchParams.get('room') || 'default'; }
    catch(_) { return 'default'; }
  }
  function key(){ return PREFIX + roomId(); }
  function isWatch(){
    const app = document.getElementById('appView');
    const watch = document.getElementById('watchSection');
    return !auth() && !!(watch && watch.classList.contains('active') && !app?.classList.contains('hidden'));
  }
  function normalizeUrl(raw){
    raw = String(raw || '').trim();
    if(!raw) return '';
    try{ return new URL(raw, location.href).href; }catch(_){ return raw; }
  }
  function typeFromUrl(url){
    url = String(url||'').toLowerCase();
    if(/youtu\.be|youtube\.com|youtube-nocookie\.com/.test(url)) return 'youtube';
    if(/vk\.com|vkvideo\.ru|video(-?\d+)_(\d+)/.test(url)) return 'vk';
    if(/\.(mp4|webm|ogg)(?:[?#].*)?$/.test(url)) return 'mp4';
    return '';
  }
  function currentSourceFromDom(){
    const url = normalizeUrl(document.getElementById('jc40Url')?.value) ||
      normalizeUrl(document.getElementById('sourceUrl')?.value) ||
      normalizeUrl(document.querySelector('#jc65DirectPlayer')?.getAttribute('data-jc65-url'));
    const type = String(document.querySelector('.jc40-source-card.active')?.dataset?.jc40Source ||
      document.getElementById('sourceType')?.value || typeFromUrl(url) || '').toLowerCase();
    return url ? {url, type:type || typeFromUrl(url), room:roomId(), savedAt:Date.now()} : null;
  }
  function saveSource(data){
    if(!data?.url || auth()) return false;
    const source = {url:normalizeUrl(data.url), type:String(data.type || typeFromUrl(data.url) || '').toLowerCase(), room:roomId(), savedAt:Date.now()};
    if(!source.url) return false;
    try{ localStorage.setItem(key(), JSON.stringify(source)); }catch(_){}
    return true;
  }
  function readSource(){
    try{
      const raw = localStorage.getItem(key());
      if(!raw) return null;
      const data = JSON.parse(raw);
      if(!data?.url) return null;
      return {url:normalizeUrl(data.url), type:String(data.type || typeFromUrl(data.url) || '').toLowerCase(), room:roomId(), savedAt:data.savedAt||0};
    }catch(_){ return null; }
  }
  function directPlayer(){ return document.getElementById('jc65DirectPlayer'); }
  function frame(){ return document.querySelector('.player-frame'); }

  function stabilizePlayer(){
    if(!isWatch()) return false;
    const fr = frame();
    const el = directPlayer();
    if(!fr || !el) return false;
    const src = String(el.src || el.getAttribute('data-jc65-url') || '');
    const k = `${src}|${roomId()}`;
    // Important: do not constantly write layout. Only enforce if source changed or first run.
    if(k === lastStableKey && el.getAttribute('data-jc71-stable') === '1') return true;
    lastStableKey = k;

    fr.setAttribute('data-jc71-stable-frame','1');
    el.setAttribute('data-jc71-stable','1');
    el.style.setProperty('position','absolute','important');
    el.style.setProperty('inset','0','important');
    el.style.setProperty('width','100%','important');
    el.style.setProperty('height','100%','important');
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
    return true;
  }

  function renderSaved(delay=0){
    const data = readSource();
    if(!data?.url || !isWatch()) return false;
    setTimeout(()=>{
      if(!isWatch()) return;
      const direct = directPlayer();
      const same = direct && normalizeUrl(direct.getAttribute('data-jc65-url') || '') === data.url;
      if(!same && typeof window.jc65RenderSource === 'function'){
        window.jc65RenderSource(data.url, data.type || typeFromUrl(data.url));
      }
      stabilizePlayer();
    }, delay);
    return true;
  }

  // Wrap the Stage67 renderer: save once, render once, no geometry loop.
  const prevRender = window.jc65RenderSource;
  if(typeof prevRender === 'function' && !prevRender.__jc71Wrapped){
    const wrapped = function(url, type){
      const data = {url:normalizeUrl(url), type:String(type || typeFromUrl(url) || '').toLowerCase()};
      if(data.url) saveSource(data);
      const out = prevRender.apply(this, arguments);
      setTimeout(stabilizePlayer, 60);
      setTimeout(stabilizePlayer, 350);
      return out;
    };
    wrapped.__jc71Wrapped = true;
    window.jc65RenderSource = wrapped;
    window.jc67RenderSource = wrapped;
  }

  document.addEventListener('click', function(e){
    const btn = e.target?.closest?.('#jc40RunBtn,#setSourceBtn,[data-jc40-paste-run]');
    if(!btn) return;
    setTimeout(()=>{
      const data = currentSourceFromDom();
      if(data) saveSource(data);
      stabilizePlayer();
    }, 80);
  }, true);

  document.addEventListener('change', function(e){
    if(e.target?.matches?.('#sourceUrl,#jc40Url,#sourceType,input[name="sourceUrl"]')){
      setTimeout(()=>{ const data=currentSourceFromDom(); if(data) saveSource(data); }, 80);
    }
  }, true);

  // Restore with finite attempts only. No infinite reload/re-render loop.
  function restoreTick(){
    if(!isWatch()) return;
    restoreAttempts += 1;
    const live = currentSourceFromDom();
    if(live?.url) saveSource(live);
    renderSaved(0);
    stabilizePlayer();
  }

  [250, 800, 1600, 2800, 4500].forEach(ms => setTimeout(restoreTick, ms));
  window.addEventListener('resize', () => setTimeout(stabilizePlayer, 120), {passive:true});
  document.addEventListener('fullscreenchange', () => setTimeout(stabilizePlayer, 120), true);
  document.addEventListener('webkitfullscreenchange', () => setTimeout(stabilizePlayer, 120), true);

  window.jc71SaveCurrentSource = function(){ const data=currentSourceFromDom(); return data ? saveSource(data) : false; };
  window.jc71RestorePlayer = function(){ return renderSaved(0); };
  window.jc71StabilizePlayer = stabilizePlayer;
  window.jc71ForgetSource = function(){ try{ localStorage.removeItem(key()); }catch(_){} return true; };
  window.jc71PlayerDebug = function(){
    const fr = frame();
    const el = directPlayer();
    const frR = fr?.getBoundingClientRect?.();
    const elR = el?.getBoundingClientRect?.();
    return {
      build: BUILD,
      auth: auth(),
      watch: isWatch(),
      storageKey:key(),
      stored: readSource(),
      live: currentSourceFromDom(),
      direct: !!el,
      directUrl: el?.getAttribute('data-jc65-url') || '',
      directSrc: el?.src || '',
      stable: el?.getAttribute('data-jc71-stable') === '1',
      frame: frR ? {x:Math.round(frR.x), y:Math.round(frR.y), w:Math.round(frR.width), h:Math.round(frR.height)} : null,
      player: elR ? {x:Math.round(elR.x), y:Math.round(elR.y), w:Math.round(elR.width), h:Math.round(elR.height)} : null,
      attempts: restoreAttempts
    };
  };
})();


/* =========================================================
   Stage 106 — Auto Update Disabled / No Reload Loop
   Version: stage108-chat-only-wallpaper-optimized-20260503-1

   Emergency fix: Stage72 auto-updater caused reload loops when URL ?v,
   service worker, app.js and jsDelivr cache were out of sync. Do not reload
   automatically. Only expose manual debug/check helpers.
   ========================================================= */
(function(){
  const BUILD = "stage108-chat-only-wallpaper-optimized-20260503-1";
  window.JUSTCLOVER_BUILD = BUILD;

  function normalizeUrlOnce(){
    try{
      const u = new URL(location.href);
      if(u.searchParams.get('v') !== BUILD){
        u.searchParams.set('v', BUILD);
        u.searchParams.set('t', String(Date.now()));
        history.replaceState({}, '', u.pathname + u.search + u.hash);
      }
    }catch(_){}
  }

  normalizeUrlOnce();
  try{ sessionStorage.removeItem('jc72ApplyingBuild'); }catch(_){}
  document.getElementById('jc72UpdateNotice')?.remove?.();

  window.jc72CheckForUpdate = async function(){
    return {
      disabled:true,
      reason:'Stage106 disables automatic reloads to prevent update loops.',
      build:BUILD,
      url:new URLSearchParams(location.search).get('v') || ''
    };
  };

  window.jc72UpdateDebug = function(){
    return {
      disabled:true,
      build:BUILD,
      url:new URLSearchParams(location.search).get('v') || '',
      applying:(()=>{ try{return sessionStorage.getItem('jc72ApplyingBuild') || ''}catch(_){return ''} })(),
      noticeExists:!!document.getElementById('jc72UpdateNotice')
    };
  };
})();





/* =========================================================
   JustClover Stage 94 — Real Stable Player Dock
   Version: stage108-chat-only-wallpaper-optimized-20260503-1

   No player resize loop. No fixed/cover iframe fighting.
   JS only creates bottom buttons and toggles the stable CSS class.
   ========================================================= */
(function(){
  const BUILD = 'stage108-chat-only-wallpaper-optimized-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;

  let scheduled = false;
  let bodyObserver = null;
  let appObserver = null;
  let watchObserver = null;

  function isAuth(){
    try { return !!window.__jc62IsAuthScreen?.(); } catch(_) { return false; }
  }

  function appOpen(){
    const app = document.getElementById('appView');
    return !!(app && !app.classList.contains('hidden'));
  }

  function watchActive(){
    const watch = document.getElementById('watchSection');
    return !!(watch && watch.classList.contains('active'));
  }

  function activeRoomView(){
    return !isAuth() && appOpen() && watchActive();
  }

  function main(){
    return document.querySelector('.watch-main') || document.getElementById('watchSection');
  }

  function frame(){
    return document.querySelector('.player-frame');
  }

  function ensureDock(){
    let dock = document.getElementById('jc80Dock');
    if(!dock){
      dock = document.createElement('div');
      dock.id = 'jc80Dock';
      dock.setAttribute('aria-label','Нижняя панель комнаты');
      dock.innerHTML = `
        <div class="jc80-dock-inner">
          <button type="button" data-jc80-mic title="Микрофон" aria-label="Микрофон">🎙 Микро</button>
          <button type="button" data-jc80-chat title="Чат" aria-label="Чат">💬 Чат</button>
          <button type="button" data-jc80-source title="Источники" aria-label="Источники">▦ Источники</button>
          <button type="button" data-jc80-full title="Fullscreen" aria-label="Fullscreen">⛶ Экран</button>
        </div>`;

      dock.addEventListener('click', function(e){
        const btn = e.target.closest('button');
        if(!btn) return;
        e.preventDefault();
        e.stopPropagation();

        if(btn.hasAttribute('data-jc80-mic')){
          document.getElementById('voiceBtn')?.click?.();
        }

        if(btn.hasAttribute('data-jc80-chat')){
          const input = document.getElementById('chatInput');
          if(input){
            try { input.focus({preventScroll:true}); }
            catch(_) { input.focus(); }
          }
        }

        if(btn.hasAttribute('data-jc80-source')){
          const fn = window.jc40OpenCatalog || window.jc39OpenCatalog || window.jcStage8OpenCatalog;
          if(typeof fn === 'function') fn('youtube');
        }

        if(btn.hasAttribute('data-jc80-full')){
          toggleFullscreen();
        }
      });
    }

    const host = main();
    if(host && dock.parentNode !== host) host.appendChild(dock);
    return dock;
  }

  async function toggleFullscreen(){
    const cur = document.fullscreenElement || document.webkitFullscreenElement || document.msFullscreenElement;
    try{
      if(cur){
        if(document.exitFullscreen) return await document.exitFullscreen();
        if(document.webkitExitFullscreen) return document.webkitExitFullscreen();
        if(document.msExitFullscreen) return document.msExitFullscreen();
      }

      const target = main() || frame() || document.documentElement;
      if(target.requestFullscreen) return await target.requestFullscreen({navigationUI:'hide'});
      if(target.webkitRequestFullscreen) return target.webkitRequestFullscreen();
      if(target.msRequestFullscreen) return target.msRequestFullscreen();
    }catch(_){}
  }

  function setFullscreenText(){
    const on = !!(document.fullscreenElement || document.webkitFullscreenElement || document.msFullscreenElement);
    const b = document.querySelector('#jc80Dock [data-jc80-full]');
    if(!b) return;
    b.textContent = on ? '× Выйти' : '⛶ Экран';
    b.title = on ? 'Выйти из fullscreen' : 'Fullscreen';
    b.setAttribute('aria-label', b.title);
  }

  function cleanupOldPlayerFit(){
    const fr = frame();
    if(fr){
      fr.removeAttribute('data-jc73-player-frame');
      fr.removeAttribute('data-jc74-fixed-frame');
      fr.removeAttribute('data-jc74-fit');
      fr.setAttribute('data-jc80-frame','1');
      fr.querySelectorAll('[data-jc73-fit],[data-jc73-fit-mode],[data-jc74-fit]').forEach(el => {
        el.removeAttribute('data-jc73-fit');
        el.removeAttribute('data-jc73-fit-mode');
        el.removeAttribute('data-jc74-fit');
      });
    }
    document.body?.classList?.remove('jc73-player-cover','jc74-fixed-player');
  }

  function sync(){
    scheduled = false;

    const on = activeRoomView();
    const dock = ensureDock();

    document.documentElement.classList.toggle('jc80-real-dock', on);
    document.body?.classList?.toggle('jc80-real-dock', on);
    dock.hidden = !on;
    dock.setAttribute('aria-hidden', on ? 'false' : 'true');

    if(on) cleanupOldPlayerFit();
    setFullscreenText();
    attachObservers();
  }

  function schedule(){
    if(scheduled) return;
    scheduled = true;
    requestAnimationFrame(sync);
  }

  function attachObservers(){
    if(document.body && !bodyObserver){
      bodyObserver = new MutationObserver(schedule);
      bodyObserver.observe(document.body, {attributes:true, attributeFilter:['class']});
    }
    const app = document.getElementById('appView');
    if(app && !appObserver){
      appObserver = new MutationObserver(schedule);
      appObserver.observe(app, {attributes:true, attributeFilter:['class']});
    }
    const watch = document.getElementById('watchSection');
    if(watch && !watchObserver){
      watchObserver = new MutationObserver(schedule);
      watchObserver.observe(watch, {attributes:true, attributeFilter:['class']});
    }
  }

  document.addEventListener('click', function(){ setTimeout(schedule, 20); }, true);
  document.addEventListener('fullscreenchange', schedule, true);
  document.addEventListener('webkitfullscreenchange', schedule, true);
  window.addEventListener('resize', schedule, {passive:true});
  window.addEventListener('orientationchange', schedule, {passive:true});

  [0,80,250,700,1400].forEach(ms => setTimeout(schedule, ms));

  window.jc80PlayerDebug = function(){
    const fr = frame();
    const dr = document.getElementById('jc80Dock')?.getBoundingClientRect?.();
    const rr = fr?.getBoundingClientRect?.();
    return {
      build: BUILD,
      auth: isAuth(),
      appOpen: appOpen(),
      watchActive: watchActive(),
      classOn: document.body?.classList?.contains('jc80-real-dock'),
      oldFixedClass: document.body?.classList?.contains('jc74-fixed-player'),
      oldCoverClass: document.body?.classList?.contains('jc73-player-cover'),
      frameAttr: fr?.getAttribute('data-jc80-frame') || '',
      oldFrame73: fr?.getAttribute('data-jc73-player-frame') || '',
      oldFrame74: fr?.getAttribute('data-jc74-fixed-frame') || '',
      frame: rr ? {x:Math.round(rr.x), y:Math.round(rr.y), w:Math.round(rr.width), h:Math.round(rr.height)} : null,
      dock: dr ? {x:Math.round(dr.x), y:Math.round(dr.y), w:Math.round(dr.width), h:Math.round(dr.height)} : null,
      hasMic: !!document.querySelector('#jc80Dock [data-jc80-mic]'),
      hasChat: !!document.querySelector('#jc80Dock [data-jc80-chat]'),
      hasSource: !!document.querySelector('#jc80Dock [data-jc80-source]'),
      hasFull: !!document.querySelector('#jc80Dock [data-jc80-full]')
    };
  };
})();


/* =========================================================
   JustClover Stage 94 — Player Mic Overlay
   Version: stage108-chat-only-wallpaper-optimized-20260503-1

   Adds a clear mic toggle inside the player and removes the chat action from
   the bottom dock. Does not change auth, chat DOM, source logic, or player fit.
   ========================================================= */
(function(){
  const BUILD = 'stage108-chat-only-wallpaper-optimized-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;

  let scheduled = false;
  let frameObserver = null;
  let voiceObserver = null;
  let statusObserver = null;

  function isAuth(){
    try { return !!window.__jc62IsAuthScreen?.(); } catch(_) { return false; }
  }

  function activeRoomView(){
    const app = document.getElementById('appView');
    const watch = document.getElementById('watchSection');
    return !isAuth() && !!app && !app.classList.contains('hidden') && !!watch && watch.classList.contains('active');
  }

  function frame(){
    return document.querySelector('.player-frame');
  }

  function voiceBtn(){
    return document.getElementById('voiceBtn');
  }

  function voiceStatus(){
    return document.getElementById('voiceStatus');
  }

  function readVoiceState(){
    const b = voiceBtn();
    const s = voiceStatus();
    const text = `${b?.textContent || ''} ${s?.textContent || ''} ${b?.getAttribute('aria-pressed') || ''}`.toLowerCase();

    if(/ошибка|недоступ|запрещ|denied|error|failed/.test(text)) return 'error';
    if(/выключить|включ[её]н|enabled|on|true/.test(text)) return 'on';
    if(/загрузка|подключ|разреш|ожидан|pending|loading/.test(text)) return 'pending';
    return 'off';
  }

  function stateLabel(state){
    if(state === 'on') return '🎙 Микро вкл';
    if(state === 'pending') return '🎙 Микро…';
    if(state === 'error') return '🎙 Ошибка';
    return '🎙 Микро выкл';
  }

  function ensurePlayerMic(){
    let wrap = document.getElementById('jc81PlayerMic');
    if(!wrap){
      wrap = document.createElement('div');
      wrap.id = 'jc81PlayerMic';
      wrap.setAttribute('aria-label','Микрофон');
      wrap.innerHTML = '<button type="button" data-jc81-player-mic aria-label="Переключить микрофон">🎙 Микро выкл</button>';
      wrap.addEventListener('click', function(e){
        const btn = e.target.closest('button');
        if(!btn) return;
        e.preventDefault();
        e.stopPropagation();
        e.stopImmediatePropagation();
        wrap.dataset.state = 'pending';
        btn.textContent = stateLabel('pending');
        voiceBtn()?.click?.();
        setTimeout(updateMicState, 80);
        setTimeout(updateMicState, 450);
        setTimeout(updateMicState, 1200);
      }, true);
    }

    const fr = frame();
    if(fr && wrap.parentNode !== fr) fr.appendChild(wrap);
    return wrap;
  }

  function updateMicState(){
    const wrap = document.getElementById('jc81PlayerMic');
    if(!wrap) return;
    const state = readVoiceState();
    const btn = wrap.querySelector('button');
    wrap.dataset.state = state;
    if(btn){
      btn.textContent = stateLabel(state);
      btn.title = state === 'on' ? 'Микрофон включён — нажми, чтобы выключить' : 'Микрофон выключен — нажми, чтобы включить';
      btn.setAttribute('aria-label', btn.title);
      btn.setAttribute('aria-pressed', state === 'on' ? 'true' : 'false');
    }
  }

  function hideOldDockButtons(){
    document.querySelectorAll('#jc80Dock [data-jc80-mic], #jc80Dock [data-jc80-chat]').forEach(el => {
      el.hidden = true;
      el.setAttribute('aria-hidden','true');
      el.tabIndex = -1;
    });
  }

  function attachObservers(){
    const fr = frame();
    if(fr && !frameObserver){
      frameObserver = new MutationObserver(schedule);
      frameObserver.observe(fr, {childList:true, subtree:false});
    }
    const b = voiceBtn();
    if(b && !voiceObserver){
      voiceObserver = new MutationObserver(schedule);
      voiceObserver.observe(b, {childList:true, subtree:true, attributes:true, attributeFilter:['class','aria-pressed','disabled']});
    }
    const s = voiceStatus();
    if(s && !statusObserver){
      statusObserver = new MutationObserver(schedule);
      statusObserver.observe(s, {childList:true, subtree:true, characterData:true});
    }
  }

  function sync(){
    scheduled = false;
    const on = activeRoomView();
    document.documentElement.classList.toggle('jc81-player-mic-overlay', on);
    document.body?.classList?.toggle('jc81-player-mic-overlay', on);

    const mic = ensurePlayerMic();
    mic.hidden = !on;
    mic.setAttribute('aria-hidden', on ? 'false' : 'true');
    hideOldDockButtons();
    updateMicState();
    attachObservers();
  }

  function schedule(){
    if(scheduled) return;
    scheduled = true;
    requestAnimationFrame(sync);
  }

  document.addEventListener('click', function(){ setTimeout(schedule, 20); }, true);
  document.addEventListener('fullscreenchange', schedule, true);
  document.addEventListener('webkitfullscreenchange', schedule, true);
  window.addEventListener('resize', schedule, {passive:true});
  window.addEventListener('orientationchange', schedule, {passive:true});
  [0,80,250,700,1400].forEach(ms => setTimeout(schedule, ms));

  window.jc81MicDebug = function(){
    const wrap = document.getElementById('jc81PlayerMic');
    const r = wrap?.getBoundingClientRect?.();
    return {
      build: BUILD,
      activeRoomView: activeRoomView(),
      classOn: document.body?.classList?.contains('jc81-player-mic-overlay'),
      state: wrap?.dataset.state || '',
      micExists: !!wrap,
      micHidden: !!wrap?.hidden,
      micRect: r ? {x:Math.round(r.x), y:Math.round(r.y), w:Math.round(r.width), h:Math.round(r.height)} : null,
      dockHasChatVisible: !!Array.from(document.querySelectorAll('#jc80Dock [data-jc80-chat]')).find(el => !el.hidden && getComputedStyle(el).display !== 'none'),
      dockHasMicVisible: !!Array.from(document.querySelectorAll('#jc80Dock [data-jc80-mic]')).find(el => !el.hidden && getComputedStyle(el).display !== 'none'),
      voiceText: voiceBtn()?.textContent || '',
      voiceStatus: voiceStatus()?.textContent || '',
      fullscreen: !!(document.fullscreenElement || document.webkitFullscreenElement || document.msFullscreenElement)
    };
  };
})();


/* =========================================================
   JustClover Stage 82 — Fullscreen Mic Fix
   Version: stage108-chat-only-wallpaper-optimized-20260503-1

   Adds a robust mic control mounted on .watch-main. It is not a child of the
   YouTube iframe/player element and therefore remains visible in JustClover
   site fullscreen. No player scale/fit logic is changed.
   ========================================================= */
(function(){
  const BUILD = 'stage108-chat-only-wallpaper-optimized-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;

  let scheduled = false;
  let bodyObserver = null;
  let appObserver = null;
  let watchObserver = null;
  let voiceObserver = null;
  let statusObserver = null;

  function isAuth(){
    try { return !!window.__jc62IsAuthScreen?.(); } catch(_) { return false; }
  }

  function appOpen(){
    const app = document.getElementById('appView');
    return !!(app && !app.classList.contains('hidden'));
  }

  function watchActive(){
    const watch = document.getElementById('watchSection');
    return !!(watch && watch.classList.contains('active'));
  }

  function activeRoomView(){
    return !isAuth() && appOpen() && watchActive();
  }

  function main(){
    return document.querySelector('.watch-main') || document.getElementById('watchSection');
  }

  function voiceBtn(){
    return document.getElementById('voiceBtn');
  }

  function voiceStatus(){
    return document.getElementById('voiceStatus');
  }

  function readVoiceState(){
    const b = voiceBtn();
    const s = voiceStatus();
    const text = `${b?.textContent || ''} ${s?.textContent || ''} ${b?.getAttribute('aria-pressed') || ''}`.toLowerCase();

    if(/ошибка|недоступ|запрещ|denied|error|failed/.test(text)) return 'error';
    if(/выключить|включ[её]н|enabled|on|true/.test(text)) return 'on';
    if(/загрузка|подключ|разреш|ожидан|pending|loading/.test(text)) return 'pending';
    return 'off';
  }

  function label(state){
    if(state === 'on') return '🎙 Микро вкл';
    if(state === 'pending') return '🎙 Микро…';
    if(state === 'error') return '🎙 Ошибка';
    return '🎙 Микро выкл';
  }

  function ensureMic(){
    let wrap = document.getElementById('jc82PlayerMic');
    if(!wrap){
      wrap = document.createElement('div');
      wrap.id = 'jc82PlayerMic';
      wrap.setAttribute('aria-label','Микрофон в плеере');
      wrap.innerHTML = '<button type="button" data-jc82-player-mic aria-label="Переключить микрофон">🎙 Микро выкл</button>';
      wrap.addEventListener('click', function(e){
        const btn = e.target.closest('button');
        if(!btn) return;
        e.preventDefault();
        e.stopPropagation();
        e.stopImmediatePropagation();
        wrap.dataset.state = 'pending';
        btn.textContent = label('pending');
        voiceBtn()?.click?.();
        setTimeout(updateMic, 80);
        setTimeout(updateMic, 450);
        setTimeout(updateMic, 1200);
      }, true);
    }

    const host = main();
    if(host && wrap.parentNode !== host) host.appendChild(wrap);
    return wrap;
  }

  function updateMic(){
    const wrap = document.getElementById('jc82PlayerMic');
    if(!wrap) return;
    const state = readVoiceState();
    const btn = wrap.querySelector('button');
    wrap.dataset.state = state;
    if(btn){
      btn.textContent = label(state);
      btn.title = state === 'on' ? 'Микрофон включён — нажми, чтобы выключить' : 'Микрофон выключен — нажми, чтобы включить';
      btn.setAttribute('aria-label', btn.title);
      btn.setAttribute('aria-pressed', state === 'on' ? 'true' : 'false');
    }
  }

  function cleanOldButtons(){
    document.querySelectorAll('#jc80Dock [data-jc80-mic], #jc80Dock [data-jc80-chat]').forEach(el => {
      el.hidden = true;
      el.setAttribute('aria-hidden','true');
      el.tabIndex = -1;
    });
    const old = document.getElementById('jc81PlayerMic');
    if(old){
      old.hidden = true;
      old.setAttribute('aria-hidden','true');
    }
  }

  function attachObservers(){
    if(document.body && !bodyObserver){
      bodyObserver = new MutationObserver(schedule);
      bodyObserver.observe(document.body, {attributes:true, attributeFilter:['class']});
    }
    const app = document.getElementById('appView');
    if(app && !appObserver){
      appObserver = new MutationObserver(schedule);
      appObserver.observe(app, {attributes:true, attributeFilter:['class']});
    }
    const watch = document.getElementById('watchSection');
    if(watch && !watchObserver){
      watchObserver = new MutationObserver(schedule);
      watchObserver.observe(watch, {attributes:true, attributeFilter:['class']});
    }
    const b = voiceBtn();
    if(b && !voiceObserver){
      voiceObserver = new MutationObserver(schedule);
      voiceObserver.observe(b, {childList:true, subtree:true, attributes:true, attributeFilter:['class','aria-pressed','disabled']});
    }
    const s = voiceStatus();
    if(s && !statusObserver){
      statusObserver = new MutationObserver(schedule);
      statusObserver.observe(s, {childList:true, subtree:true, characterData:true});
    }
  }

  function sync(){
    scheduled = false;
    const on = activeRoomView();
    document.documentElement.classList.toggle('jc82-fullscreen-mic', on);
    document.body?.classList?.toggle('jc82-fullscreen-mic', on);

    const mic = ensureMic();
    mic.hidden = !on;
    mic.setAttribute('aria-hidden', on ? 'false' : 'true');
    cleanOldButtons();
    updateMic();
    attachObservers();
  }

  function schedule(){
    if(scheduled) return;
    scheduled = true;
    requestAnimationFrame(sync);
  }

  document.addEventListener('click', function(){ setTimeout(schedule, 20); }, true);
  document.addEventListener('fullscreenchange', schedule, true);
  document.addEventListener('webkitfullscreenchange', schedule, true);
  window.addEventListener('resize', schedule, {passive:true});
  window.addEventListener('orientationchange', schedule, {passive:true});
  [0,80,250,700,1400].forEach(ms => setTimeout(schedule, ms));

  window.jc82MicDebug = function(){
    const wrap = document.getElementById('jc82PlayerMic');
    const r = wrap?.getBoundingClientRect?.();
    const fs = document.fullscreenElement || document.webkitFullscreenElement || document.msFullscreenElement;
    return {
      build: BUILD,
      activeRoomView: activeRoomView(),
      classOn: document.body?.classList?.contains('jc82-fullscreen-mic'),
      state: wrap?.dataset.state || '',
      micExists: !!wrap,
      micHidden: !!wrap?.hidden,
      micParent: wrap?.parentElement?.className || wrap?.parentElement?.id || '',
      micRect: r ? {x:Math.round(r.x), y:Math.round(r.y), w:Math.round(r.width), h:Math.round(r.height)} : null,
      dockHasChatVisible: !!Array.from(document.querySelectorAll('#jc80Dock [data-jc80-chat]')).find(el => !el.hidden && getComputedStyle(el).display !== 'none'),
      dockHasMicVisible: !!Array.from(document.querySelectorAll('#jc80Dock [data-jc80-mic]')).find(el => !el.hidden && getComputedStyle(el).display !== 'none'),
      oldMicExists: !!document.getElementById('jc81PlayerMic'),
      voiceText: voiceBtn()?.textContent || '',
      voiceStatus: voiceStatus()?.textContent || '',
      fullscreen: !!fs,
      fullscreenElement: fs?.className || fs?.id || fs?.tagName || ''
    };
  };
})();


/* =========================================================
   JustClover Stage 83 — Dock Mic Fullscreen
   Version: stage108-chat-only-wallpaper-optimized-20260503-1

   Keep Stage80 layout. Put mic back into the bottom dock next to sources and
   fullscreen, keep chat hidden, and mirror voice state on the dock button.
   NOTE: this works in JustClover fullscreen (Экран). Native fullscreen opened
   inside the YouTube/VK iframe cannot show external DOM controls.
   ========================================================= */
(function(){
  const BUILD = 'stage108-chat-only-wallpaper-optimized-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;

  let scheduled = false;
  let bodyObserver = null;
  let appObserver = null;
  let watchObserver = null;
  let voiceObserver = null;
  let statusObserver = null;

  function isAuth(){
    try { return !!window.__jc62IsAuthScreen?.(); } catch(_) { return false; }
  }
  function appOpen(){
    const app = document.getElementById('appView');
    return !!(app && !app.classList.contains('hidden'));
  }
  function watchActive(){
    const watch = document.getElementById('watchSection');
    return !!(watch && watch.classList.contains('active'));
  }
  function activeRoomView(){
    return !isAuth() && appOpen() && watchActive();
  }
  function voiceBtn(){ return document.getElementById('voiceBtn'); }
  function voiceStatus(){ return document.getElementById('voiceStatus'); }
  function dockMic(){ return document.querySelector('#jc80Dock [data-jc80-mic]'); }
  function dockChat(){ return document.querySelector('#jc80Dock [data-jc80-chat]'); }
  function dockSource(){ return document.querySelector('#jc80Dock [data-jc80-source]'); }
  function dockFull(){ return document.querySelector('#jc80Dock [data-jc80-full]'); }

  function readVoiceState(){
    const b = voiceBtn();
    const s = voiceStatus();
    const text = `${b?.textContent || ''} ${s?.textContent || ''} ${b?.getAttribute('aria-pressed') || ''}`.toLowerCase();
    if(/ошибка|недоступ|запрещ|denied|error|failed/.test(text)) return 'error';
    if(/выключить|включ[её]н|enabled|on|true/.test(text)) return 'on';
    if(/загрузка|подключ|разреш|ожидан|pending|loading/.test(text)) return 'pending';
    return 'off';
  }

  function iconMarkup(){
    return '<span class="jc88-mic-icon" aria-hidden="true">' +
      '<svg viewBox="0 0 24 24" focusable="false" aria-hidden="true">' +
        '<rect x="9" y="3" width="6" height="11" rx="3"></rect>' +
        '<path d="M6 11a6 6 0 0 0 12 0"></path>' +
        '<path d="M12 17v4"></path>' +
        '<path d="M9 21h6"></path>' +
      '</svg>' +
    '</span>';
  }

  function syncDockMic(){
    const mic = dockMic();
    if(!mic) return;
    const state = readVoiceState();
    mic.hidden = false;
    mic.setAttribute('aria-hidden','false');
    mic.tabIndex = 0;
    mic.disabled = false;
    mic.dataset.micState = state;
    mic.classList.toggle('is-off', state !== 'on');
    mic.classList.toggle('is-on', state === 'on');
    if(!mic.querySelector('.jc88-mic-icon')) mic.innerHTML = iconMarkup();
    const title = state === 'on'
      ? 'Микрофон включён — нажми, чтобы выключить'
      : state === 'pending'
        ? 'Микрофон переключается'
        : state === 'error'
          ? 'Ошибка микрофона — нажми, чтобы попробовать снова'
          : 'Микрофон выключен — нажми, чтобы включить';
    mic.title = title;
    mic.setAttribute('aria-label', title);
    mic.setAttribute('aria-pressed', state === 'on' ? 'true' : 'false');
  }

  function cleanup(){
    const overlay = document.getElementById('jc82PlayerMic');
    if(overlay){
      overlay.hidden = true;
      overlay.setAttribute('aria-hidden','true');
      overlay.style.display = 'none';
    }
    const chat = dockChat();
    if(chat){
      chat.hidden = true;
      chat.setAttribute('aria-hidden','true');
      chat.tabIndex = -1;
    }
    const mic = dockMic();
    if(mic){
      mic.hidden = false;
      mic.setAttribute('aria-hidden','false');
      mic.tabIndex = 0;
    }
  }

  function attachObservers(){
    if(document.body && !bodyObserver){
      bodyObserver = new MutationObserver(schedule);
      bodyObserver.observe(document.body, {attributes:true, attributeFilter:['class']});
    }
    const app = document.getElementById('appView');
    if(app && !appObserver){
      appObserver = new MutationObserver(schedule);
      appObserver.observe(app, {attributes:true, attributeFilter:['class']});
    }
    const watch = document.getElementById('watchSection');
    if(watch && !watchObserver){
      watchObserver = new MutationObserver(schedule);
      watchObserver.observe(watch, {attributes:true, attributeFilter:['class']});
    }
    const b = voiceBtn();
    if(b && !voiceObserver){
      voiceObserver = new MutationObserver(schedule);
      voiceObserver.observe(b, {childList:true, subtree:true, attributes:true, attributeFilter:['class','aria-pressed','disabled']});
    }
    const s = voiceStatus();
    if(s && !statusObserver){
      statusObserver = new MutationObserver(schedule);
      statusObserver.observe(s, {childList:true, subtree:true, characterData:true});
    }
  }

  function sync(){
    scheduled = false;
    const on = activeRoomView();
    document.documentElement.classList.toggle('jc88-icon-mic-dock', on);
    document.body?.classList?.toggle('jc88-icon-mic-dock', on);
    cleanup();
    if(on) syncDockMic();
    attachObservers();
  }
  function schedule(){
    if(scheduled) return;
    scheduled = true;
    requestAnimationFrame(sync);
  }

  document.addEventListener('click', function(){ setTimeout(schedule, 20); }, true);
  document.addEventListener('fullscreenchange', schedule, true);
  document.addEventListener('webkitfullscreenchange', schedule, true);
  window.addEventListener('resize', schedule, {passive:true});
  window.addEventListener('orientationchange', schedule, {passive:true});
  [0,80,250,700,1400].forEach(ms => setTimeout(schedule, ms));

  window.jc88IconMicDebug = function(){
    const mic = dockMic();
    const fs = document.fullscreenElement || document.webkitFullscreenElement || document.msFullscreenElement;
    return {
      build: BUILD,
      activeRoomView: activeRoomView(),
      classOn: document.body?.classList?.contains('jc88-icon-mic-dock'),
      micExists: !!mic,
      micHidden: !!mic?.hidden,
      micState: mic?.dataset?.micState || '',
      micText: mic?.textContent || '',
      chatHidden: !!dockChat()?.hidden,
      sourceExists: !!dockSource(),
      fullExists: !!dockFull(),
      overlayHidden: !!document.getElementById('jc82PlayerMic')?.hidden,
      fullscreen: !!fs,
      fullscreenElement: fs?.className || fs?.id || fs?.tagName || ''
    };
  };
})();

/* =========================================================
   JustClover Stage 89 — Glass Chat + Dock Transparency
   Version: stage108-chat-only-wallpaper-optimized-20260503-1
   Small runtime marker/debug only; no layout JS hacks added.
   ========================================================= */
(()=>{
  const BUILD = 'stage108-chat-only-wallpaper-optimized-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;
  window.jc89GlassDebug = function(){
    const dock = document.getElementById('jc80Dock');
    const sidebar = document.querySelector('.watch-sidebar');
    const chat = document.querySelector('.chat-card');
    const css = el => el ? getComputedStyle(el) : null;
    const pick = s => s ? {
      backgroundColor: s.backgroundColor,
      backgroundImage: s.backgroundImage,
      backdropFilter: s.backdropFilter || s.webkitBackdropFilter || '',
      borderColor: s.borderColor,
      opacity: s.opacity
    } : null;
    return {
      build: BUILD,
      dock: pick(css(dock)),
      sidebar: pick(css(sidebar)),
      chat: pick(css(chat)),
      bodyClass: document.body?.className || ''
    };
  };
})();

/* =========================================================
   JustClover Stage 94 — Player Recovery Safe Glass
   Version: stage108-chat-only-wallpaper-optimized-20260503-1
   Debug marker only. No background/player mutation.
   ========================================================= */
(()=>{
  const BUILD = 'stage108-chat-only-wallpaper-optimized-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;
  window.jc93RecoveryDebug = function(){
    const q = s => document.querySelector(s);
    const visible = el => !!el && getComputedStyle(el).display !== 'none' && getComputedStyle(el).visibility !== 'hidden' && getComputedStyle(el).opacity !== '0';
    const iframe = q('.player-frame iframe, #youtubePlayer iframe, #jc65DirectPlayer');
    return {
      build: BUILD,
      playerFrameVisible: visible(q('.player-frame')),
      iframeVisible: visible(iframe),
      iframeSrc: iframe?.src || '',
      brokenBgLayers: ['#jc90LiveBg','#jc91RoomBg','#jc92RoomBg'].map(sel => ({sel, exists: !!q(sel), visible: visible(q(sel))})),
      dockVisible: visible(q('#jc80Dock')),
      micVisible: visible(q('#jc80Dock [data-jc80-mic]')),
      chatVisible: visible(q('.chat-card'))
    };
  };
})();

/* =========================================================
   JustClover Stage 94 — Room Appearance Wallpapers
   Version: stage108-chat-only-wallpaper-optimized-20260503-1

   Adds “Оформление комнаты” settings. Safe only: no iframe/video/player-frame
   mutation, no background layers over the player. Uses CSS variables and
   localStorage to paint dock/chat/topbar/watch-main surfaces.
   ========================================================= */
(function(){
  const BUILD = 'stage108-chat-only-wallpaper-optimized-20260503-1';
  const LS = {
    enabled:'jc94-room-wallpaper-enabled',
    wallpaper:'jc94-room-wallpaper',
    dim:'jc94-room-wallpaper-dim',
    blur:'jc94-room-wallpaper-blur',
    glass:'jc94-room-wallpaper-glass',
    preset:'jc94-room-wallpaper-preset'
  };
  const PRESETS = {
    menu: {
      title:'Меню',
      value:'radial-gradient(circle at 42% 16%, rgba(139,92,246,.32), transparent 36%), radial-gradient(circle at 82% 72%, rgba(236,72,153,.22), transparent 42%), linear-gradient(135deg, rgba(8,10,22,.96), rgba(24,14,33,.94))'
    },
    aurora: {
      title:'Aurora',
      value:'radial-gradient(circle at 20% 24%, rgba(34,211,238,.30), transparent 38%), radial-gradient(circle at 74% 18%, rgba(168,85,247,.34), transparent 36%), radial-gradient(circle at 82% 82%, rgba(34,197,94,.18), transparent 44%), linear-gradient(135deg, #050816, #160d23)'
    },
    crimson: {
      title:'Crimson',
      value:'radial-gradient(circle at 22% 28%, rgba(244,63,94,.34), transparent 38%), radial-gradient(circle at 76% 72%, rgba(168,85,247,.22), transparent 42%), linear-gradient(135deg, #09070c, #241018)'
    },
    clover: {
      title:'Clover',
      value:'radial-gradient(circle at 18% 22%, rgba(34,197,94,.26), transparent 38%), radial-gradient(circle at 80% 70%, rgba(20,184,166,.24), transparent 44%), linear-gradient(135deg, #040b0b, #111827)'
    }
  };

  window.JUSTCLOVER_BUILD = BUILD;

  function get(k, fallback=''){
    try { return localStorage.getItem(k) ?? fallback; } catch(_) { return fallback; }
  }
  function set(k,v){
    try { localStorage.setItem(k,v); return true; } catch(_) { return false; }
  }
  function del(k){ try { localStorage.removeItem(k); } catch(_){} }
  function cssUrl(url){
    const raw = String(url || '').trim();
    if(!raw) return '';
    if(raw.startsWith('radial-gradient') || raw.startsWith('linear-gradient')) return raw;
    return `url("${raw.replace(/\\/g,'\\\\').replace(/"/g,'\\"')}")`;
  }
  function activeRoom(){
    const app = document.getElementById('appView');
    const watch = document.getElementById('watchSection');
    const auth = window.__jc62IsAuthScreen?.();
    return !auth && !!app && !app.classList.contains('hidden') && !!watch && watch.classList.contains('active');
  }
  function currentWallpaper(){
    const saved = get(LS.wallpaper, '');
    if(saved) return saved;
    const preset = get(LS.preset, 'menu');
    return PRESETS[preset]?.value || PRESETS.menu.value;
  }
  function applyStyle(){
    const enabled = get(LS.enabled, '1') !== '0';
    const root = document.documentElement;
    const wallpaper = currentWallpaper();
    const dim = Math.min(.82, Math.max(.05, Number(get(LS.dim, '.34')) || .34));
    const blur = Math.min(28, Math.max(0, Number(get(LS.blur, '14')) || 14));
    const glass = Math.min(.88, Math.max(.12, Number(get(LS.glass, '.38')) || .38));
    root.style.setProperty('--jc94-room-wallpaper', cssUrl(wallpaper));
    root.style.setProperty('--jc94-room-dim', String(dim));
    root.style.setProperty('--jc94-room-blur', `${blur}px`);
    root.style.setProperty('--jc94-room-glass', `rgba(8,10,18,${glass})`);
    root.style.setProperty('--jc94-room-glass-strong', `rgba(8,10,18,${Math.min(.92, glass + .14)})`);
    document.body?.classList?.toggle('jc94-room-wallpaper', enabled && activeRoom());
    syncForm();
  }
  function setPreset(key){
    const p = PRESETS[key] || PRESETS.menu;
    set(LS.enabled, '1');
    set(LS.preset, key);
    del(LS.wallpaper);
    applyStyle();
    status(`Применён пресет: ${p.title}`);
  }
  function status(text){
    const el = document.getElementById('jc94RoomStyleStatus');
    if(el) el.textContent = text || '';
  }
  function syncForm(){
    const enabled = get(LS.enabled, '1') !== '0';
    const url = get(LS.wallpaper, '');
    const preset = get(LS.preset, 'menu');
    const dim = get(LS.dim, '.34');
    const blur = get(LS.blur, '14');
    const glass = get(LS.glass, '.38');
    const enabledEl = document.getElementById('jc94RoomEnabled');
    const urlEl = document.getElementById('jc94RoomUrl');
    const dimEl = document.getElementById('jc94RoomDim');
    const blurEl = document.getElementById('jc94RoomBlur');
    const glassEl = document.getElementById('jc94RoomGlass');
    if(enabledEl) enabledEl.checked = enabled;
    if(urlEl && document.activeElement !== urlEl) urlEl.value = url;
    if(dimEl && document.activeElement !== dimEl) dimEl.value = String(dim);
    if(blurEl && document.activeElement !== blurEl) blurEl.value = String(blur);
    if(glassEl && document.activeElement !== glassEl) glassEl.value = String(glass);
    document.querySelectorAll('.jc94-preset').forEach(btn => btn.classList.toggle('active', btn.dataset.preset === preset && !url));
  }
  function renderSettings(){
    const section = document.getElementById('appearanceSection');
    if(!section || document.getElementById('jc94RoomStyleCard')) return;
    const card = document.createElement('div');
    card.id = 'jc94RoomStyleCard';
    card.className = 'card panel jc94-room-style-card';
    card.innerHTML = `
      <div class="jc94-room-style-head">
        <div>
          <span class="kicker">Room style</span>
          <h3>Оформление в комнате</h3>
          <p class="status">Отдельные живые обои для режима просмотра. Это не трогает плеер: фон применяется только к нижней панели, чату, верхней панели и пустым зонам комнаты.</p>
        </div>
        <span class="soft-badge">Safe CSS</span>
      </div>
      <div class="jc94-room-style-grid">
        <div class="jc94-room-style-form">
          <label class="jc94-check"><span><input id="jc94RoomEnabled" type="checkbox" /> Включить фон комнаты</span><small>Можно выключить, если захочешь оставить строгий тёмный режим.</small></label>
          <div class="jc94-preset-row">
            <button type="button" class="jc94-preset" data-preset="menu" style="--jc94-preset-bg:${PRESETS.menu.value}">Меню</button>
            <button type="button" class="jc94-preset" data-preset="aurora" style="--jc94-preset-bg:${PRESETS.aurora.value}">Aurora</button>
            <button type="button" class="jc94-preset" data-preset="crimson" style="--jc94-preset-bg:${PRESETS.crimson.value}">Crimson</button>
            <button type="button" class="jc94-preset" data-preset="clover" style="--jc94-preset-bg:${PRESETS.clover.value}">Clover</button>
          </div>
          <label>Своя ссылка на живые обои / GIF / WebP / PNG
            <input id="jc94RoomUrl" placeholder="https://...gif или https://...webp" />
            <small>Лучше использовать прямую ссылку на картинку или GIF. YouTube/VK тут не нужны — это именно фон.</small>
          </label>
          <label>Загрузить файл с компьютера
            <input id="jc94RoomFile" type="file" accept="image/gif,image/webp,image/png,image/jpeg,image/*" />
            <small>Небольшие GIF/WebP сохраняются в браузере. Большие файлы могут примениться только до перезагрузки.</small>
          </label>
          <label>Затемнение фона
            <input id="jc94RoomDim" type="range" min="0.05" max="0.82" step="0.01" />
          </label>
          <label>Прозрачность glass-панелей
            <input id="jc94RoomGlass" type="range" min="0.12" max="0.88" step="0.01" />
          </label>
          <label>Размытие glass
            <input id="jc94RoomBlur" type="range" min="0" max="28" step="1" />
          </label>
          <div class="jc94-room-style-actions">
            <button id="jc94ApplyRoomStyle" class="btn primary" type="button">Применить</button>
            <button id="jc94ResetRoomStyle" class="btn soft" type="button">Сбросить</button>
            <button id="jc94OpenWatch" class="btn soft" type="button">К просмотру</button>
          </div>
          <p id="jc94RoomStyleStatus" class="status jc94-room-status"></p>
        </div>
        <div class="jc94-room-preview" aria-label="Превью оформления комнаты">
          <div class="jc94-room-preview-player">PLAYER</div>
          <div class="jc94-room-preview-chat"></div>
          <div class="jc94-room-preview-dock"></div>
        </div>
      </div>`;
    const themes = section.querySelector('.themes-grid') || section.lastElementChild;
    if(themes) themes.insertAdjacentElement('afterend', card); else section.appendChild(card);
    bindSettings(card);
    syncForm();
  }
  function bindSettings(card){
    card.querySelectorAll('.jc94-preset').forEach(btn => btn.addEventListener('click', () => setPreset(btn.dataset.preset)));
    const enabled = card.querySelector('#jc94RoomEnabled');
    const url = card.querySelector('#jc94RoomUrl');
    const dim = card.querySelector('#jc94RoomDim');
    const blur = card.querySelector('#jc94RoomBlur');
    const glass = card.querySelector('#jc94RoomGlass');
    enabled?.addEventListener('change', () => { set(LS.enabled, enabled.checked ? '1' : '0'); applyStyle(); status(enabled.checked ? 'Фон комнаты включён.' : 'Фон комнаты выключен.'); });
    url?.addEventListener('change', () => {
      const v = url.value.trim();
      if(v){ set(LS.enabled,'1'); set(LS.wallpaper, v); set(LS.preset, 'custom'); status('Своя ссылка применена.'); }
      applyStyle();
    });
    [dim, blur, glass].forEach(el => el?.addEventListener('input', () => {
      if(dim) set(LS.dim, dim.value);
      if(blur) set(LS.blur, blur.value);
      if(glass) set(LS.glass, glass.value);
      set(LS.enabled,'1');
      applyStyle();
    }));
    card.querySelector('#jc94ApplyRoomStyle')?.addEventListener('click', () => {
      const v = url?.value?.trim() || '';
      if(v){ set(LS.wallpaper, v); set(LS.preset, 'custom'); }
      set(LS.enabled,'1');
      if(dim) set(LS.dim, dim.value);
      if(blur) set(LS.blur, blur.value);
      if(glass) set(LS.glass, glass.value);
      applyStyle();
      status('Оформление комнаты применено.');
    });
    card.querySelector('#jc94ResetRoomStyle')?.addEventListener('click', () => {
      Object.values(LS).forEach(del);
      set(LS.enabled,'1');
      set(LS.preset,'menu');
      applyStyle();
      status('Сброшено к фону меню.');
    });
    card.querySelector('#jc94OpenWatch')?.addEventListener('click', () => {
      document.querySelector('[data-section="watchSection"]')?.click?.();
      setTimeout(applyStyle, 80);
    });
    card.querySelector('#jc94RoomFile')?.addEventListener('change', e => {
      const file = e.target.files?.[0];
      if(!file) return;
      if(!file.type.startsWith('image/')){ status('Выбери изображение/GIF/WebP.'); return; }
      const reader = new FileReader();
      reader.onload = () => {
        const data = String(reader.result || '');
        set(LS.enabled,'1');
        set(LS.preset,'custom-file');
        const ok = set(LS.wallpaper, data);
        if(!ok){
          window.__jc94SessionWallpaper = data;
          document.documentElement.style.setProperty('--jc94-room-wallpaper', cssUrl(data));
          status('Файл применён на текущую сессию. Для постоянного хранения нужен файл поменьше или ссылка.');
        }else{
          status('Файл применён и сохранён в браузере.');
        }
        applyStyle();
      };
      reader.onerror = () => status('Не удалось прочитать файл.');
      reader.readAsDataURL(file);
    });
  }
  let raf = 0;
  function schedule(){
    if(raf) return;
    raf = requestAnimationFrame(() => { raf = 0; renderSettings(); applyStyle(); });
  }
  document.addEventListener('DOMContentLoaded', schedule);
  document.addEventListener('click', () => setTimeout(schedule, 40), true);
  window.addEventListener('storage', schedule);
  const obsTargets = () => [document.body, document.getElementById('appView'), document.getElementById('watchSection')].filter(Boolean);
  function attachObservers(){
    obsTargets().forEach(el => {
      if(el.__jc94RoomObs) return;
      const mo = new MutationObserver(schedule);
      mo.observe(el, {attributes:true, attributeFilter:['class','style']});
      el.__jc94RoomObs = mo;
    });
  }
  [0,120,400,1000,1800].forEach(ms => setTimeout(() => { attachObservers(); schedule(); }, ms));
  window.jc94RoomAppearanceDebug = function(){
    const q = s => document.querySelector(s);
    const visible = el => !!el && getComputedStyle(el).display !== 'none' && getComputedStyle(el).visibility !== 'hidden' && getComputedStyle(el).opacity !== '0';
    const css = el => el ? getComputedStyle(el) : null;
    const iframe = q('.player-frame iframe, #youtubePlayer iframe, #jc65DirectPlayer');
    return {
      build: BUILD,
      fix: 'background-layer-parent-body-no-layout-shift',
      activeRoom: activeRoom(),
      wallpaperOn: document.body?.classList?.contains('jc94-room-wallpaper'),
      settingsExists: !!q('#jc94RoomStyleCard'),
      savedEnabled: get(LS.enabled,'1'),
      savedPreset: get(LS.preset,'menu'),
      hasCustomWallpaper: !!get(LS.wallpaper,''),
      playerFrameVisible: visible(q('.player-frame')),
      iframeVisible: visible(iframe),
      iframeSrc: iframe?.src || '',
      dockBg: css(q('#jc80Dock'))?.backgroundImage || '',
      sidebarBg: css(q('.watch-sidebar'))?.backgroundImage || '',
      bodyClass: document.body?.className || ''
    };
  };
})();

/* =========================================================
   JustClover Stage 95 — Local Room Wallpaper Fix
   Version: stage108-chat-only-wallpaper-optimized-20260503-1

   Fixes local file upload in “Оформление в комнате”. Supports:
   - images: GIF / WebP / PNG / JPG / SVG
   - videos: MP4 / WebM / OGG

   Does NOT touch player iframe/video/source/auth/chat handlers. The background
   video is a separate muted fixed layer behind room UI surfaces only.
   ========================================================= */
(function(){
  const BUILD = 'stage108-chat-only-wallpaper-optimized-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;

  const LS = {
    enabled:'jc94-room-wallpaper-enabled',
    wallpaper:'jc94-room-wallpaper',
    preset:'jc94-room-wallpaper-preset',
    localKind:'jc95-room-local-kind',
    localName:'jc95-room-local-name'
  };
  let objectUrl = null;
  let localKind = '';
  let localName = '';

  function get(k, fallback=''){
    try { return localStorage.getItem(k) ?? fallback; } catch(_) { return fallback; }
  }
  function set(k,v){
    try { localStorage.setItem(k,v); return true; } catch(_) { return false; }
  }
  function del(k){ try { localStorage.removeItem(k); } catch(_){} }
  function activeRoom(){
    const app = document.getElementById('appView');
    const watch = document.getElementById('watchSection');
    const auth = window.__jc62IsAuthScreen?.();
    return !auth && !!app && !app.classList.contains('hidden') && !!watch && watch.classList.contains('active');
  }
  function roomEnabled(){ return get(LS.enabled, '1') !== '0'; }
  function cssUrl(url){
    const raw = String(url || '').trim();
    if(!raw) return '';
    if(raw.startsWith('radial-gradient') || raw.startsWith('linear-gradient')) return raw;
    return `url("${raw.replace(/\\/g,'\\\\').replace(/"/g,'\\"')}")`;
  }
  function status(text){
    const el = document.getElementById('jc94RoomStyleStatus');
    if(el) el.textContent = text || '';
  }
  function isImage(file){ return /^image\//i.test(file?.type || '') || /\.(gif|webp|png|jpe?g|svg)$/i.test(file?.name || ''); }
  function isVideo(file){ return /^video\//i.test(file?.type || '') || /\.(mp4|webm|ogg|ogv|mov|m4v)$/i.test(file?.name || ''); }

  function ensureVideoLayer(){
    let v = document.getElementById('jc95RoomVideoBg');
    if(!v){
      v = document.createElement('video');
      v.id = 'jc95RoomVideoBg';
      v.muted = true;
      v.loop = true;
      v.autoplay = true;
      v.playsInline = true;
      v.setAttribute('playsinline','');
      v.setAttribute('muted','');
      v.setAttribute('aria-hidden','true');
      v.tabIndex = -1;
      document.body.appendChild(v);
    }
    return v;
  }

  function stopVideoLayer(){
    const v = document.getElementById('jc95RoomVideoBg');
    if(v){
      try { v.pause(); } catch(_) {}
      v.removeAttribute('src');
      try { v.load(); } catch(_) {}
    }
    document.body?.classList?.remove('jc95-room-video-wallpaper');
  }

  function setPreviewMedia(url, kind){
    const preview = document.querySelector('.jc94-room-preview');
    if(!preview) return;
    preview.querySelectorAll('.jc95-preview-video').forEach(el => el.remove());
    if(kind === 'video'){
      preview.style.backgroundImage = '';
      const v = document.createElement('video');
      v.className = 'jc95-preview-video';
      v.muted = true;
      v.loop = true;
      v.autoplay = true;
      v.playsInline = true;
      v.src = url;
      preview.prepend(v);
      v.play?.().catch(()=>{});
    }else{
      preview.style.backgroundImage = `linear-gradient(180deg,rgba(0,0,0,.28),rgba(0,0,0,.42)), ${cssUrl(url)}`;
    }
  }

  function applyLocalNow(){
    const enabled = roomEnabled();
    const root = document.documentElement;
    document.body?.classList?.toggle('jc95-room-local-wallpaper', enabled && !!objectUrl);

    if(!enabled || !objectUrl){
      stopVideoLayer();
      return;
    }

    set(LS.enabled, '1');
    set(LS.preset, 'custom-file');
    set(LS.localKind, localKind || 'image');
    set(LS.localName, localName || 'local file');

    if(localKind === 'video'){
      root.style.setProperty('--jc94-room-wallpaper', 'linear-gradient(135deg, rgba(8,10,22,.82), rgba(24,14,33,.78))');
      root.style.setProperty('--jc95-room-image', 'linear-gradient(135deg, rgba(8,10,22,.82), rgba(24,14,33,.78))');
      const v = ensureVideoLayer();
      if(v.src !== objectUrl) v.src = objectUrl;
      document.body?.classList?.toggle('jc95-room-video-wallpaper', activeRoom());
      if(activeRoom()) v.play?.().catch(()=>{}); else { try { v.pause(); } catch(_){} }
    }else{
      root.style.setProperty('--jc94-room-wallpaper', cssUrl(objectUrl));
      root.style.setProperty('--jc95-room-image', cssUrl(objectUrl));
      stopVideoLayer();
    }

    document.body?.classList?.toggle('jc94-room-wallpaper', enabled && activeRoom());
    setPreviewMedia(objectUrl, localKind);
  }

  function handleFile(file){
    if(!file) return;
    if(!isImage(file) && !isVideo(file)){
      status('Выбери GIF/WebP/PNG/JPG или MP4/WebM для живого фона комнаты.');
      return;
    }

    if(objectUrl){ try { URL.revokeObjectURL(objectUrl); } catch(_){} }
    objectUrl = URL.createObjectURL(file);
    localKind = isVideo(file) ? 'video' : 'image';
    localName = file.name || 'local file';
    window.__jc95RoomWallpaperUrl = objectUrl;
    window.__jc95RoomWallpaperKind = localKind;
    window.__jc95RoomWallpaperName = localName;

    // Blob URLs are intentionally session-only. Do not save blob URL to localStorage,
    // because it becomes invalid after reload. Small images are additionally saved below.
    del(LS.wallpaper);
    set(LS.enabled, '1');
    set(LS.preset, 'custom-file');
    set(LS.localKind, localKind);
    set(LS.localName, localName);

    applyLocalNow();

    if(localKind === 'image' && file.size <= 2.2 * 1024 * 1024){
      const reader = new FileReader();
      reader.onload = () => {
        const data = String(reader.result || '');
        if(data.startsWith('data:image/')){
          set(LS.wallpaper, data);
          document.documentElement.style.setProperty('--jc94-room-wallpaper', cssUrl(data));
          document.documentElement.style.setProperty('--jc95-room-image', cssUrl(data));
        }
      };
      reader.readAsDataURL(file);
      status(`Файл применён: ${localName}. Небольшая картинка сохранится после перезагрузки.`);
    }else if(localKind === 'image'){
      status(`Файл применён: ${localName}. Большая картинка работает в текущей сессии; для сохранения используй ссылку.`);
    }else{
      status(`Видео-фон применён: ${localName}. Локальные MP4/WebM работают до перезагрузки; для постоянного фона нужна ссылка.`);
    }
  }

  function upgradeFileInput(){
    const input = document.getElementById('jc94RoomFile');
    if(!input) return;
    input.setAttribute('accept','image/gif,image/webp,image/png,image/jpeg,image/svg+xml,image/*,video/mp4,video/webm,video/ogg,video/*,.mp4,.webm,.ogg,.ogv,.mov,.m4v');
  }

  function sync(){
    upgradeFileInput();
    applyLocalNow();
  }

  // Capture phase prevents Stage94's old image-only handler from rejecting MP4/WebM.
  document.addEventListener('change', function(e){
    const input = e.target?.closest?.('#jc94RoomFile');
    if(!input) return;
    const file = input.files?.[0];
    if(!file) return;
    e.preventDefault();
    e.stopPropagation();
    e.stopImmediatePropagation();
    handleFile(file);
  }, true);

  document.addEventListener('click', function(e){
    if(e.target?.closest?.('#jc94ApplyRoomStyle, #jc94OpenWatch, .jc94-preset, [data-section="watchSection"], [data-section="appearanceSection"]')){
      setTimeout(sync, 80);
    }
  }, true);
  document.addEventListener('input', function(e){
    if(e.target?.closest?.('#jc94RoomDim, #jc94RoomBlur, #jc94RoomGlass, #jc94RoomEnabled')) setTimeout(sync, 40);
  }, true);
  window.addEventListener('resize', sync, {passive:true});
  document.addEventListener('visibilitychange', sync, true);
  [0,120,400,900,1600].forEach(ms => setTimeout(sync, ms));

  window.jc95LocalWallpaperDebug = function(){
    const file = document.getElementById('jc94RoomFile');
    const video = document.getElementById('jc95RoomVideoBg');
    const css = el => el ? getComputedStyle(el) : null;
    return {
      build: BUILD,
      fix: 'background-layer-parent-body-no-layout-shift',
      activeRoom: activeRoom(),
      hasObjectUrl: !!objectUrl,
      localKind,
      localName,
      inputAccept: file?.getAttribute('accept') || '',
      roomClass: document.body?.classList?.contains('jc94-room-wallpaper'),
      localClass: document.body?.classList?.contains('jc95-room-local-wallpaper'),
      videoClass: document.body?.classList?.contains('jc95-room-video-wallpaper'),
      videoExists: !!video,
      videoSrc: video?.src || '',
      videoPaused: video?.paused ?? null,
      dockBg: css(document.getElementById('jc80Dock'))?.backgroundImage || '',
      sidebarBg: css(document.querySelector('.watch-sidebar'))?.backgroundImage || '',
      playerFrameVisible: (() => { const el = document.querySelector('.player-frame'); return !!el && css(el).display !== 'none' && css(el).visibility !== 'hidden'; })()
    };
  };
})();

/* =========================================================
   JustClover Stage 96 — Room Wallpaper Apply Fix
   Version: stage108-chat-only-wallpaper-optimized-20260503-1

   Mount selected room wallpaper inside the active watch layout. This fixes the
   case where a local file appears in the Appearance preview but not in the room.
   No player iframe/video/source/auth/chat handlers are touched.
   ========================================================= */
(function(){
  const BUILD = 'stage108-chat-only-wallpaper-optimized-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;

  const LS = {
    enabled:'jc94-room-wallpaper-enabled',
    wallpaper:'jc94-room-wallpaper',
    preset:'jc94-room-wallpaper-preset',
    localKind:'jc95-room-local-kind',
    localName:'jc95-room-local-name',
    dim:'jc94-room-wallpaper-dim',
    blur:'jc94-room-wallpaper-blur',
    glass:'jc94-room-wallpaper-glass'
  };

  const PRESET_BG = {
    menu:'radial-gradient(circle at 42% 16%, rgba(139,92,246,.32), transparent 36%), radial-gradient(circle at 82% 72%, rgba(236,72,153,.22), transparent 42%), linear-gradient(135deg, rgba(8,10,22,.96), rgba(24,14,33,.94))',
    aurora:'radial-gradient(circle at 20% 24%, rgba(34,211,238,.30), transparent 38%), radial-gradient(circle at 74% 18%, rgba(168,85,247,.34), transparent 36%), radial-gradient(circle at 82% 82%, rgba(34,197,94,.18), transparent 44%), linear-gradient(135deg, #050816, #160d23)',
    crimson:'radial-gradient(circle at 22% 28%, rgba(244,63,94,.34), transparent 38%), radial-gradient(circle at 76% 72%, rgba(168,85,247,.22), transparent 42%), linear-gradient(135deg, #09070c, #241018)',
    clover:'radial-gradient(circle at 18% 22%, rgba(34,197,94,.26), transparent 38%), radial-gradient(circle at 80% 70%, rgba(20,184,166,.24), transparent 44%), linear-gradient(135deg, #040b0b, #111827)'
  };

  let lastVideoSrc = '';
  let raf = 0;

  function get(k, fallback=''){
    try { return localStorage.getItem(k) ?? fallback; } catch(_) { return fallback; }
  }
  function set(k,v){
    try { localStorage.setItem(k,v); return true; } catch(_) { return false; }
  }
  function cssUrl(value){
    const raw = String(value || '').trim();
    if(!raw) return '';
    if(raw.startsWith('radial-gradient') || raw.startsWith('linear-gradient')) return raw;
    return `url("${raw.replace(/\\/g,'\\\\').replace(/"/g,'\\"')}")`;
  }
  function activeRoom(){
    const app = document.getElementById('appView');
    const watch = document.getElementById('watchSection');
    const auth = window.__jc62IsAuthScreen?.();
    return !auth && !!app && !app.classList.contains('hidden') && !!watch && watch.classList.contains('active');
  }
  function enabled(){ return get(LS.enabled,'1') !== '0'; }
  function presetBg(){ return PRESET_BG[get(LS.preset,'menu')] || PRESET_BG.menu; }
  function currentKind(){ return window.__jc95RoomWallpaperKind || get(LS.localKind,'') || ''; }
  function currentUrl(){
    return window.__jc95RoomWallpaperUrl || get(LS.wallpaper,'') || '';
  }
  function currentImage(){
    const url = currentUrl();
    const kind = currentKind();
    if(url && kind !== 'video') return url;
    return get(LS.wallpaper,'') || presetBg();
  }
  function ensureLayer(){
    const layout = document.querySelector('.watch-layout');
    if(!layout) return null;
    let layer = document.getElementById('jc96RoomBg');
    if(!layer){
      layer = document.createElement('div');
      layer.id = 'jc96RoomBg';
      layer.setAttribute('aria-hidden','true');
      layer.innerHTML = '<video id="jc96RoomBgVideo" muted loop autoplay playsinline></video>';
    }
    if(layer.parentNode !== document.body) document.body.appendChild(layer);
    const v = layer.querySelector('#jc96RoomBgVideo');
    if(v){
      v.muted = true;
      v.loop = true;
      v.autoplay = true;
      v.playsInline = true;
      v.setAttribute('muted','');
      v.setAttribute('playsinline','');
      v.setAttribute('aria-hidden','true');
      v.tabIndex = -1;
    }
    return layer;
  }
  function syncVars(){
    const root = document.documentElement;
    const dim = Math.min(.82, Math.max(.05, Number(get(LS.dim,'.34')) || .34));
    const blur = Math.min(28, Math.max(0, Number(get(LS.blur,'14')) || 14));
    const glass = Math.min(.88, Math.max(.12, Number(get(LS.glass,'.38')) || .38));
    root.style.setProperty('--jc94-room-dim', String(dim));
    root.style.setProperty('--jc94-room-blur', `${blur}px`);
    root.style.setProperty('--jc94-room-glass', `rgba(8,10,18,${glass})`);
    root.style.setProperty('--jc96-room-image', cssUrl(currentImage()));
  }
  function syncVideo(layer){
    const kind = currentKind();
    const url = currentUrl();
    const v = layer?.querySelector?.('#jc96RoomBgVideo');
    const on = enabled() && activeRoom() && kind === 'video' && !!url;
    document.body?.classList?.toggle('jc96-room-video-on', on);
    if(!v) return;
    if(on){
      if(lastVideoSrc !== url){
        lastVideoSrc = url;
        v.src = url;
        try { v.load(); } catch(_) {}
      }
      v.play?.().catch(()=>{});
    }else{
      try { v.pause(); } catch(_) {}
    }
  }
  function sync(){
    raf = 0;
    syncVars();
    const on = enabled() && activeRoom();
    document.body?.classList?.toggle('jc96-room-bg-on', on);
    document.body?.classList?.toggle('jc94-room-wallpaper', on);
    document.body?.classList?.toggle('jc95-room-local-wallpaper', on && !!currentUrl());
    const layer = ensureLayer();
    if(layer) layer.hidden = !on;
    syncVideo(layer);
  }
  function schedule(){
    if(!raf) raf = requestAnimationFrame(sync);
  }

  // After Stage95 processes a selected file, it exposes window.__jc95RoomWallpaperUrl.
  // We sync after the same user action instead of listening to the file event directly,
  // because Stage95 intentionally stops the old image-only handler.
  document.addEventListener('click', () => setTimeout(schedule, 80), true);
  document.addEventListener('change', () => setTimeout(schedule, 120), true);
  document.addEventListener('input', e => {
    if(e.target?.closest?.('#jc94RoomDim,#jc94RoomBlur,#jc94RoomGlass,#jc94RoomEnabled,#jc94RoomUrl')) setTimeout(schedule, 40);
  }, true);
  window.addEventListener('storage', schedule);
  window.addEventListener('resize', schedule, {passive:true});
  document.addEventListener('visibilitychange', schedule, true);
  const observe = () => {
    [document.body, document.getElementById('appView'), document.getElementById('watchSection')].filter(Boolean).forEach(el => {
      if(el.__jc96RoomBgObs) return;
      const mo = new MutationObserver(schedule);
      mo.observe(el, {attributes:true, attributeFilter:['class','style']});
      el.__jc96RoomBgObs = mo;
    });
  };
  [0,80,240,700,1300,2200].forEach(ms => setTimeout(() => { observe(); schedule(); }, ms));

  window.jc96RoomWallpaperDebug = window.jc97RoomWallpaperDebug = function(){
    const q = s => document.querySelector(s);
    const css = el => el ? getComputedStyle(el) : null;
    const iframe = q('.player-frame iframe, #youtubePlayer iframe, #jc65DirectPlayer');
    const layer = q('#jc96RoomBg');
    const video = q('#jc96RoomBgVideo');
    return {
      build: BUILD,
      fix: 'background-layer-parent-body-no-layout-shift',
      activeRoom: activeRoom(),
      enabled: enabled(),
      bodyClassOn: document.body?.classList?.contains('jc96-room-bg-on'),
      videoClassOn: document.body?.classList?.contains('jc96-room-video-on'),
      kind: currentKind(),
      url: currentUrl(),
      localName: window.__jc95RoomWallpaperName || get(LS.localName,''),
      layerExists: !!layer,
      layerParent: layer?.parentElement?.className || layer?.parentElement?.id || '',
      layerHidden: !!layer?.hidden,
      layerBg: css(layer)?.backgroundImage || '',
      videoExists: !!video,
      videoSrc: video?.src || '',
      videoPaused: video?.paused ?? null,
      dockBg: css(q('#jc80Dock'))?.backgroundColor + ' / ' + (css(q('#jc80Dock'))?.backgroundImage || ''),
      sidebarBg: css(q('.watch-sidebar'))?.backgroundColor + ' / ' + (css(q('.watch-sidebar'))?.backgroundImage || ''),
      playerFrameVisible: (() => { const el = q('.player-frame'); const s = css(el); return !!el && s.display !== 'none' && s.visibility !== 'hidden'; })(),
      iframeVisible: (() => { const s = css(iframe); return !!iframe && s.display !== 'none' && s.visibility !== 'hidden'; })()
    };
  };
})();

/* =========================================================
   JustClover Stage 97 — Room BG Layout Fix
   Version: stage108-chat-only-wallpaper-optimized-20260503-1
   Runtime safeguard only: keep the room background layer attached to body so
   it can never push .watch-layout / player / chat down.
   ========================================================= */
(()=>{
  const BUILD='stage108-chat-only-wallpaper-optimized-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;
  function activeRoom(){
    const app=document.getElementById('appView');
    const watch=document.getElementById('watchSection');
    let auth=false;
    try{ auth=!!window.__jc62IsAuthScreen?.(); }catch(_){}
    return !auth && !!app && !app.classList.contains('hidden') && !!watch && watch.classList.contains('active');
  }
  function fixLayerParent(){
    const layer=document.getElementById('jc96RoomBg');
    if(layer && layer.parentNode !== document.body) document.body.appendChild(layer);
    document.body?.classList?.toggle('jc97-room-bg-layout-fix', activeRoom());
  }
  let raf=0;
  function schedule(){
    if(raf) return;
    raf=requestAnimationFrame(()=>{ raf=0; fixLayerParent(); });
  }
  document.addEventListener('click',()=>setTimeout(schedule,30),true);
  document.addEventListener('change',()=>setTimeout(schedule,30),true);
  document.addEventListener('input',schedule,true);
  window.addEventListener('resize',schedule,{passive:true});
  [0,80,200,600,1200,2200].forEach(ms=>setTimeout(schedule,ms));
  const mo=new MutationObserver(schedule);
  setTimeout(()=>{ try{ mo.observe(document.body,{childList:true,subtree:true,attributes:true,attributeFilter:['class']}); }catch(_){} },80);
  window.jc97RoomBgFixDebug=function(){
    const q=s=>document.querySelector(s);
    const css=el=>el?getComputedStyle(el):null;
    const rect=el=>{ const r=el?.getBoundingClientRect?.(); return r?{x:Math.round(r.x),y:Math.round(r.y),w:Math.round(r.width),h:Math.round(r.height)}:null; };
    return {
      build:BUILD,
      activeRoom:activeRoom(),
      bodyClass:document.body?.classList?.contains('jc97-room-bg-layout-fix'),
      bgParent:q('#jc96RoomBg')?.parentElement?.tagName || '',
      bgPosition:css(q('#jc96RoomBg'))?.position || '',
      bgZ:css(q('#jc96RoomBg'))?.zIndex || '',
      watchMain:rect(q('.watch-main')),
      playerFrame:rect(q('.player-frame')),
      sidebar:rect(q('.watch-sidebar')),
      dock:rect(q('#jc80Dock')),
      sidebarBg:css(q('.watch-sidebar'))?.backgroundColor || '',
      chatBg:css(q('.chat-card'))?.backgroundColor || '',
      dockBg:css(q('#jc80Dock'))?.backgroundColor || '',
      iframeVisible:(()=>{ const el=q('.player-frame iframe, #youtubePlayer iframe, #jc65DirectPlayer'); const s=css(el); return !!el && s.display!=='none' && s.visibility!=='hidden'; })()
    };
  };
})();

/* =========================================================
   JustClover Stage 98 — Room Wallpaper Surface Fix
   Version: stage108-chat-only-wallpaper-optimized-20260503-1

   Fix: the wallpaper/video selected in Appearance is mounted as a fixed room
   background and also pushed into safe glass surfaces. It never participates
   in .watch-layout flow and never touches player iframe/video/source logic.
   ========================================================= */
(()=>{
  const BUILD='stage108-chat-only-wallpaper-optimized-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;

  const LS={
    enabled:'jc94-room-wallpaper-enabled',
    wallpaper:'jc94-room-wallpaper',
    preset:'jc94-room-wallpaper-preset',
    localKind:'jc95-room-local-kind',
    localName:'jc95-room-local-name',
    dim:'jc94-room-wallpaper-dim',
    blur:'jc94-room-wallpaper-blur',
    glass:'jc94-room-wallpaper-glass'
  };
  const PRESET_BG={
    menu:'radial-gradient(circle at 42% 16%, rgba(139,92,246,.32), transparent 36%), radial-gradient(circle at 82% 72%, rgba(236,72,153,.22), transparent 42%), linear-gradient(135deg, rgba(8,10,22,.96), rgba(24,14,33,.94))',
    aurora:'radial-gradient(circle at 20% 24%, rgba(34,211,238,.30), transparent 38%), radial-gradient(circle at 74% 18%, rgba(168,85,247,.34), transparent 36%), radial-gradient(circle at 82% 82%, rgba(34,197,94,.18), transparent 44%), linear-gradient(135deg, #050816, #160d23)',
    crimson:'radial-gradient(circle at 22% 28%, rgba(244,63,94,.34), transparent 38%), radial-gradient(circle at 76% 72%, rgba(168,85,247,.22), transparent 42%), linear-gradient(135deg, #09070c, #241018)',
    clover:'radial-gradient(circle at 18% 22%, rgba(34,197,94,.26), transparent 38%), radial-gradient(circle at 80% 70%, rgba(20,184,166,.24), transparent 44%), linear-gradient(135deg, #040b0b, #111827)'
  };

  let raf=0;
  let lastVideoSrc='';

  function get(k,f=''){ try{return localStorage.getItem(k) ?? f;}catch(_){return f;} }
  function enabled(){ return get(LS.enabled,'1') !== '0'; }
  function num(k,f,min,max){ const n=Number(get(k,String(f))); return Math.max(min,Math.min(max,Number.isFinite(n)?n:f)); }
  function cssUrl(raw){
    raw=String(raw||'').trim();
    if(!raw) return 'none';
    if(raw.startsWith('radial-gradient') || raw.startsWith('linear-gradient')) return raw;
    return `url("${raw.replace(/\\/g,'\\\\').replace(/"/g,'\\"')}")`;
  }
  function activeRoom(){
    const app=document.getElementById('appView');
    const watch=document.getElementById('watchSection');
    let auth=false;
    try{ auth=!!window.__jc62IsAuthScreen?.(); }catch(_){}
    return !auth && !!app && !app.classList.contains('hidden') && !!watch && watch.classList.contains('active');
  }
  function kind(){ return window.__jc95RoomWallpaperKind || get(LS.localKind,'') || ''; }
  function url(){ return window.__jc95RoomWallpaperUrl || get(LS.wallpaper,'') || ''; }
  function preset(){ return PRESET_BG[get(LS.preset,'menu')] || PRESET_BG.menu; }
  function imageValue(){
    const u=url();
    if(u && kind() !== 'video') return u;
    const saved=get(LS.wallpaper,'');
    if(saved && kind() !== 'video') return saved;
    return preset();
  }
  function ensureLayer(){
    let layer=document.getElementById('jc98RoomBg');
    if(!layer){
      layer=document.createElement('div');
      layer.id='jc98RoomBg';
      layer.setAttribute('aria-hidden','true');
      layer.innerHTML='<video id="jc98RoomBgVideo" muted loop autoplay playsinline></video>';
    }
    if(layer.parentNode !== document.body) document.body.appendChild(layer);
    const v=layer.querySelector('#jc98RoomBgVideo');
    if(v){
      v.muted=true; v.loop=true; v.autoplay=true; v.playsInline=true;
      v.setAttribute('muted',''); v.setAttribute('playsinline',''); v.setAttribute('aria-hidden','true');
      v.tabIndex=-1;
    }
    return layer;
  }
  function setVars(){
    const root=document.documentElement;
    const dim=num(LS.dim,.28,.02,.82);
    const blur=num(LS.blur,14,0,28);
    const glass=num(LS.glass,.32,.08,.88);
    const img=cssUrl(imageValue());
    root.style.setProperty('--jc98-room-image', img);
    root.style.setProperty('--jc98-room-dim', String(dim));
    root.style.setProperty('--jc98-room-blur', `${blur}px`);
    root.style.setProperty('--jc98-inner-alpha', String(Math.min(.56, Math.max(.16, glass))));
    root.style.setProperty('--jc98-card-alpha', String(Math.min(.44, Math.max(.10, glass * .58))));
  }
  function syncVideo(layer,on){
    const v=layer?.querySelector?.('#jc98RoomBgVideo');
    const u=url();
    const videoOn=on && kind()==='video' && !!u;
    document.body?.classList?.toggle('jc98-room-video-on', videoOn);
    if(!v) return;
    if(videoOn){
      if(lastVideoSrc !== u){
        lastVideoSrc=u;
        v.src=u;
        try{ v.load(); }catch(_){}
      }
      v.play?.().catch(()=>{});
    }else{
      try{ v.pause(); }catch(_){}
    }
  }
  function sync(){
    raf=0;
    setVars();
    const on=enabled() && activeRoom();
    const layer=ensureLayer();
    document.body?.classList?.toggle('jc98-room-bg-on', on);
    // Keep older stage classes on so existing safe CSS still participates, but hide older layers.
    document.body?.classList?.toggle('jc96-room-bg-on', on);
    document.body?.classList?.toggle('jc94-room-wallpaper', on);
    document.body?.classList?.toggle('jc95-room-local-wallpaper', on && !!url());
    if(layer) layer.hidden=!on;
    syncVideo(layer,on);
  }
  function schedule(){ if(!raf) raf=requestAnimationFrame(sync); }

  // Stage95 stops the file change event in capture phase. This catches local file
  // selection indirectly because Stage95 uses URL.createObjectURL(file).
  try{
    if(URL && !URL.__jc98Patched){
      const original=URL.createObjectURL.bind(URL);
      URL.createObjectURL=function(obj){
        const out=original(obj);
        setTimeout(schedule,60);
        setTimeout(schedule,260);
        setTimeout(schedule,900);
        return out;
      };
      URL.__jc98Patched=true;
    }
  }catch(_){}

  document.addEventListener('click',()=>{ setTimeout(schedule,40); setTimeout(schedule,240); },true);
  document.addEventListener('input',e=>{
    if(e.target?.closest?.('#jc94RoomDim,#jc94RoomBlur,#jc94RoomGlass,#jc94RoomEnabled,#jc94RoomUrl')) setTimeout(schedule,40);
  },true);
  document.addEventListener('change',()=>setTimeout(schedule,160),true);
  window.addEventListener('resize',schedule,{passive:true});
  window.addEventListener('storage',schedule);
  document.addEventListener('visibilitychange',schedule,true);
  [0,80,220,650,1300,2400].forEach(ms=>setTimeout(schedule,ms));

  window.jc98RoomWallpaperDebug=function(){
    const q=s=>document.querySelector(s);
    const css=el=>el?getComputedStyle(el):null;
    const rect=el=>{ const r=el?.getBoundingClientRect?.(); return r?{x:Math.round(r.x),y:Math.round(r.y),w:Math.round(r.width),h:Math.round(r.height)}:null; };
    const layer=q('#jc98RoomBg');
    const video=q('#jc98RoomBgVideo');
    const iframe=q('.player-frame iframe, #youtubePlayer iframe, #jc65DirectPlayer');
    return {
      build:BUILD,
      activeRoom:activeRoom(),
      enabled:enabled(),
      kind:kind(),
      url:url(),
      localName:window.__jc95RoomWallpaperName || get(LS.localName,''),
      bodyClassOn:document.body?.classList?.contains('jc98-room-bg-on'),
      videoClassOn:document.body?.classList?.contains('jc98-room-video-on'),
      layerExists:!!layer,
      layerParent:layer?.parentElement?.tagName || '',
      layerHidden:!!layer?.hidden,
      layerPosition:css(layer)?.position || '',
      layerBg:css(layer)?.backgroundImage || '',
      videoExists:!!video,
      videoSrc:video?.src || '',
      videoPaused:video?.paused ?? null,
      watchMain:rect(q('.watch-main')),
      sidebar:rect(q('.watch-sidebar')),
      dock:rect(q('#jc80Dock')),
      dockBg:(css(q('#jc80Dock'))?.backgroundColor || '')+' / '+(css(q('#jc80Dock'))?.backgroundImage || ''),
      sidebarBg:(css(q('.watch-sidebar'))?.backgroundColor || '')+' / '+(css(q('.watch-sidebar'))?.backgroundImage || ''),
      chatBg:css(q('.chat-card'))?.backgroundColor || '',
      iframeVisible:(()=>{ const s=css(iframe); return !!iframe && s.display!=='none' && s.visibility!=='hidden'; })(),
      playerFrameVisible:(()=>{ const el=q('.player-frame'); const s=css(el); return !!el && s.display!=='none' && s.visibility!=='hidden'; })()
    };
  };
})();

/* =========================================================
   JustClover Stage 99 — Room Wallpaper Surfaces
   Version: stage108-chat-only-wallpaper-optimized-20260503-1

   Fix for the case where the preview shows the selected local wallpaper/video,
   but the room/chat/dock stay black. We paint the chosen background directly
   inside safe UI surfaces instead of trying to see through black parents.
   Player iframe/video/source logic is not touched.
   ========================================================= */
(()=>{
  const BUILD='stage108-chat-only-wallpaper-optimized-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;

  const LS={
    enabled:'jc94-room-wallpaper-enabled',
    wallpaper:'jc94-room-wallpaper',
    preset:'jc94-room-wallpaper-preset',
    localKind:'jc95-room-local-kind',
    localName:'jc95-room-local-name',
    dim:'jc94-room-wallpaper-dim',
    blur:'jc94-room-wallpaper-blur',
    glass:'jc94-room-wallpaper-glass'
  };
  const DB_NAME='justclover-room-wallpaper-db-v1';
  const STORE='wallpaper';
  const KEY='current';
  const PRESET_BG={
    menu:'radial-gradient(circle at 42% 16%, rgba(139,92,246,.32), transparent 36%), radial-gradient(circle at 82% 72%, rgba(236,72,153,.22), transparent 42%), linear-gradient(135deg, rgba(8,10,22,.96), rgba(24,14,33,.94))',
    aurora:'radial-gradient(circle at 20% 24%, rgba(34,211,238,.30), transparent 38%), radial-gradient(circle at 74% 18%, rgba(168,85,247,.34), transparent 36%), radial-gradient(circle at 82% 82%, rgba(34,197,94,.18), transparent 44%), linear-gradient(135deg, #050816, #160d23)',
    crimson:'radial-gradient(circle at 22% 28%, rgba(244,63,94,.34), transparent 38%), radial-gradient(circle at 76% 72%, rgba(168,85,247,.22), transparent 42%), linear-gradient(135deg, #09070c, #241018)',
    clover:'radial-gradient(circle at 18% 22%, rgba(34,197,94,.26), transparent 38%), radial-gradient(circle at 80% 70%, rgba(20,184,166,.24), transparent 44%), linear-gradient(135deg, #040b0b, #111827)'
  };

  let raf=0;
  let localUrl='';
  let localKind='';
  let localName='';
  let dbLoaded=false;

  const get=(k,f='')=>{ try{return localStorage.getItem(k) ?? f;}catch(_){return f;} };
  const set=(k,v)=>{ try{localStorage.setItem(k,String(v));}catch(_){} };
  const del=k=>{ try{localStorage.removeItem(k);}catch(_){} };

  function cssUrl(raw){
    raw=String(raw||'').trim();
    if(!raw) return 'none';
    if(/gradient\(/i.test(raw)) return raw;
    return `url("${raw.replace(/\\/g,'\\\\').replace(/"/g,'\\"')}")`;
  }
  function isVideo(file){ return /^video\//i.test(file?.type || '') || /\.(mp4|webm|ogg|ogv|mov|m4v)$/i.test(file?.name || ''); }
  function isImage(file){ return /^image\//i.test(file?.type || '') || /\.(gif|webp|png|jpe?g|svg)$/i.test(file?.name || ''); }
  function activeRoom(){
    const app=document.getElementById('appView');
    const watch=document.getElementById('watchSection');
    let auth=false;
    try{ auth=!!window.__jc62IsAuthScreen?.(); }catch(_){}
    return !auth && !!app && !app.classList.contains('hidden') && !!watch && watch.classList.contains('active');
  }
  function enabled(){ return get(LS.enabled,'1') !== '0'; }
  function n(k,f,min,max){ const v=Number(get(k,String(f))); return Math.max(min,Math.min(max,Number.isFinite(v)?v:f)); }
  function presetBg(){ return PRESET_BG[get(LS.preset,'menu')] || PRESET_BG.menu; }
  function currentKind(){ return localKind || window.__jc95RoomWallpaperKind || get(LS.localKind,'') || ''; }
  function currentName(){ return localName || window.__jc95RoomWallpaperName || get(LS.localName,'') || ''; }
  function currentUrl(){ return localUrl || window.__jc95RoomWallpaperUrl || get(LS.wallpaper,'') || ''; }
  function currentImage(){
    const u=currentUrl();
    if(u && currentKind() !== 'video') return cssUrl(u);
    const saved=get(LS.wallpaper,'');
    if(saved && currentKind() !== 'video') return cssUrl(saved);
    return presetBg();
  }

  function openDb(){
    return new Promise((resolve,reject)=>{
      if(!('indexedDB' in window)) return reject(new Error('no indexedDB'));
      const req=indexedDB.open(DB_NAME,1);
      req.onupgradeneeded=()=>{
        const db=req.result;
        if(!db.objectStoreNames.contains(STORE)) db.createObjectStore(STORE);
      };
      req.onsuccess=()=>resolve(req.result);
      req.onerror=()=>reject(req.error || new Error('db open failed'));
    });
  }
  async function saveBlob(file,kind){
    // Stage104 emergency: do NOT persist local files to IndexedDB.
    // Large MP4/WebM blobs caused browser freezes when written/read back.
    try { localStorage.setItem('jc104-room-wallpaper-persist-disabled','1'); } catch(_) {}
    return false;
  }

  async function loadBlob(){
    // Stage104 emergency: skip old IndexedDB restore and remove the heavy DB in idle time.
    if(dbLoaded) return;
    dbLoaded=true;
    try {
      const run = () => { try { indexedDB.deleteDatabase(DB_NAME); } catch(_) {} };
      if('requestIdleCallback' in window) requestIdleCallback(run, {timeout: 1200});
      else setTimeout(run, 1200);
    } catch(_) {}
  }

  function ensureSurface(host,name){
    if(!host) return null;
    let layer=host.querySelector(`:scope > .jc99SurfaceBg[data-jc99="${name}"]`);
    if(!layer){
      layer=document.createElement('div');
      layer.className='jc99SurfaceBg';
      layer.dataset.jc99=name;
      layer.setAttribute('aria-hidden','true');
      layer.innerHTML='<video muted loop autoplay playsinline></video>';
      host.prepend(layer);
    }
    const v=layer.querySelector('video');
    if(v){
      v.muted=true; v.loop=true; v.autoplay=true; v.playsInline=true;
      v.setAttribute('muted',''); v.setAttribute('playsinline','');
      v.tabIndex=-1;
    }
    return layer;
  }
  function setSurfaceVideo(layer,src,on){
    const v=layer?.querySelector?.('video');
    if(!v) return;
    if(on && src){
      if(v.src !== src) v.src=src;
      v.play?.().catch(()=>{});
    }else{
      try{v.pause();}catch(_){}
      v.removeAttribute('src');
    }
  }

  function setVars(){
    const root=document.documentElement;
    const dim=n(LS.dim,.30,.02,.82);
    const blur=n(LS.blur,14,0,28);
    const glass=n(LS.glass,.32,.08,.88);
    root.style.setProperty('--jc99-room-image', currentImage());
    root.style.setProperty('--jc99-room-dim', String(dim));
    root.style.setProperty('--jc99-room-blur', `${blur}px`);
    root.style.setProperty('--jc99-card-alpha', String(Math.min(.34,Math.max(.08,glass*.50))));
    root.style.setProperty('--jc99-dock-alpha', String(Math.min(.46,Math.max(.14,glass))));
  }

  function sync(){
    raf=0;
    loadBlob();
    setVars();
    const on=enabled() && activeRoom();
    const kind=currentKind();
    const src=currentUrl();
    const videoOn=on && kind==='video' && !!src;
    document.body?.classList?.toggle('jc99-room-surfaces',on);
    document.body?.classList?.toggle('jc99-room-video',videoOn);

    // Prevent older background layers from creating misleading black/stacked layers.
    ['#jc96RoomBg','#jc98RoomBg','#jc95RoomVideoBg'].forEach(sel=>{
      const el=document.querySelector(sel);
      if(el){ el.hidden=true; el.style.setProperty('display','none','important'); }
    });

    const sidebar=ensureSurface(document.querySelector('.watch-sidebar'),'sidebar');
    const dock=ensureSurface(document.getElementById('jc80Dock'),'dock');
    const top=null; // Stage104: never mount wallpaper layer into topbar
    [sidebar,dock].forEach(layer=>{
      if(layer){ layer.hidden=!on; setSurfaceVideo(layer,src,videoOn); }
    });
  }
  function schedule(){ if(!raf) raf=requestAnimationFrame(sync); }

  document.addEventListener('change',function(e){
    const input=e.target?.closest?.('#jc94RoomFile');
    if(!input) return;
    const file=input.files?.[0];
    if(!file || (!isVideo(file) && !isImage(file))) return;
    if(localUrl){ try{URL.revokeObjectURL(localUrl);}catch(_){} }
    localUrl=URL.createObjectURL(file);
    localKind=isVideo(file)?'video':'image';
    localName=file.name || 'local file';
    window.__jc95RoomWallpaperUrl=localUrl;
    window.__jc95RoomWallpaperKind=localKind;
    window.__jc95RoomWallpaperName=localName;
    set(LS.enabled,'1');
    set(LS.preset,'custom-file');
    set(LS.localKind,localKind);
    set(LS.localName,localName);
    if(localKind==='video') del(LS.wallpaper);
    saveBlob(file,localKind);
    setTimeout(schedule,40);
    setTimeout(schedule,200);
    setTimeout(schedule,800);
  },true);

  document.addEventListener('click',function(e){
    if(e.target?.closest?.('#jc94ApplyRoomStyle,#jc94OpenWatch,.jc94-preset,[data-section="watchSection"],[data-section="appearanceSection"]')){
      setTimeout(schedule,40); setTimeout(schedule,240); setTimeout(schedule,900);
    }
  },true);
  document.addEventListener('input',function(e){
    if(e.target?.closest?.('#jc94RoomDim,#jc94RoomBlur,#jc94RoomGlass,#jc94RoomEnabled,#jc94RoomUrl')) setTimeout(schedule,40);
  },true);
  window.addEventListener('resize',schedule,{passive:true});
  window.addEventListener('storage',schedule);
  document.addEventListener('visibilitychange',schedule,true);
  [0,80,220,650,1300,2600].forEach(ms=>setTimeout(schedule,ms));

  window.jc99RoomSurfacesDebug=function(){
    const q=s=>document.querySelector(s);
    const css=el=>el?getComputedStyle(el):null;
    const rect=el=>{ const r=el?.getBoundingClientRect?.(); return r?{x:Math.round(r.x),y:Math.round(r.y),w:Math.round(r.width),h:Math.round(r.height)}:null; };
    const layer=s=>q(`.jc99SurfaceBg[data-jc99="${s}"]`);
    const video=s=>layer(s)?.querySelector('video');
    const iframe=q('.player-frame iframe, #youtubePlayer iframe, #jc65DirectPlayer');
    return {
      build:BUILD,
      activeRoom:activeRoom(),
      bodyClassOn:document.body?.classList?.contains('jc99-room-surfaces'),
      videoClassOn:document.body?.classList?.contains('jc99-room-video'),
      kind:currentKind(),
      name:currentName(),
      hasUrl:!!currentUrl(),
      dbLoaded,
      sidebarLayer:!!layer('sidebar'),
      dockLayer:!!layer('dock'),
      topbarLayer:false,
      sidebarVideoSrc:video('sidebar')?.src || '',
      sidebarVideoPaused:video('sidebar')?.paused ?? null,
      sidebarBg:css(q('.watch-sidebar'))?.backgroundColor || '',
      chatBg:css(q('.chat-card'))?.backgroundColor || '',
      dockBg:css(q('#jc80Dock'))?.backgroundColor || '',
      watchMain:rect(q('.watch-main')),
      sidebar:rect(q('.watch-sidebar')),
      dock:rect(q('#jc80Dock')),
      playerFrameVisible:(()=>{ const s=css(q('.player-frame')); return !!q('.player-frame') && s.display!=='none' && s.visibility!=='hidden'; })(),
      iframeVisible:(()=>{ const s=css(iframe); return !!iframe && s.display!=='none' && s.visibility!=='hidden'; })()
    };
  };
})();

/* =========================================================
   JustClover Stage 100 — Topbar Recovery + Safe Surfaces
   Version: stage108-chat-only-wallpaper-optimized-20260503-1

   Do not touch player iframe/video. Remove only Stage99 topbar surface layer and
   force the active-room topbar back to fixed/visible. Wallpaper surfaces remain
   limited to dock + chat.
   ========================================================= */
(function(){
  const BUILD = 'stage108-chat-only-wallpaper-optimized-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;
  let raf = 0;
  let observer = null;

  function isAuth(){ try { return !!window.__jc62IsAuthScreen?.(); } catch(_) { return false; } }
  function appOpen(){ const app=document.getElementById('appView'); return !!(app && !app.classList.contains('hidden')); }
  function watchActive(){ const w=document.getElementById('watchSection'); return !!(w && w.classList.contains('active')); }
  function activeRoom(){ return !isAuth() && appOpen() && watchActive(); }
  function q(s){ return document.querySelector(s); }
  function topbar(){ return document.getElementById('jc51RaveTopbar'); }

  function removeTopbarSurface(){
    document.querySelectorAll('.jc99SurfaceBg[data-jc99="topbar"], #jc51RaveTopbar .jc99SurfaceBg').forEach(el => el.remove());
  }

  function ensureFallbackExit(){
    let b = document.getElementById('jc100FallbackExit');
    if(!b){
      b = document.createElement('button');
      b.id = 'jc100FallbackExit';
      b.type = 'button';
      b.title = 'Комнаты';
      b.setAttribute('aria-label','Комнаты');
      b.textContent = '×';
      b.addEventListener('click', function(e){
        e.preventDefault();
        e.stopPropagation();
        const native = topbar()?.querySelector('[data-jc51-exit]');
        if(native){ native.click(); return; }
        const candidates = Array.from(document.querySelectorAll('button,a,[role="button"]'));
        const rooms = candidates.find(x => /комнаты|создать комнату|rooms/i.test((x.textContent || x.title || x.getAttribute('aria-label') || '').trim()));
        if(rooms) rooms.click();
      });
      document.body.appendChild(b);
    }
    return b;
  }

  function restoreTopbar(){
    const bar = topbar();
    const on = activeRoom();
    document.body?.classList?.toggle('jc100-topbar-recovery', on);
    removeTopbarSurface();
    ensureFallbackExit();
    document.body?.classList?.toggle('jc100-no-topbar', on && !bar);
    if(!on || !bar) return;

    bar.style.setProperty('position','fixed','important');
    bar.style.setProperty('inset','0 0 auto 0','important');
    bar.style.setProperty('height','var(--jc80-topbar-h,var(--jc64-topbar-h,58px))','important');
    bar.style.setProperty('z-index','2147483200','important');
    bar.style.setProperty('display','grid','important');
    bar.style.setProperty('opacity','1','important');
    bar.style.setProperty('visibility','visible','important');
    bar.style.setProperty('pointer-events','auto','important');
    bar.style.setProperty('transform','none','important');
    bar.removeAttribute('hidden');
    bar.setAttribute('aria-hidden','false');

    const exit = bar.querySelector('[data-jc51-exit]');
    if(exit){
      exit.title = 'Комнаты';
      exit.setAttribute('aria-label','Комнаты');
      exit.style.setProperty('display','inline-flex','important');
      exit.style.setProperty('visibility','visible','important');
      exit.style.setProperty('opacity','1','important');
    }
  }

  function sync(){ raf = 0; restoreTopbar(); }
  function schedule(){ if(!raf) raf = requestAnimationFrame(sync); }

  if(document.body && !observer){
    observer = new MutationObserver(schedule);
    observer.observe(document.body, {childList:true, subtree:true, attributes:true, attributeFilter:['class','style','hidden']});
  }
  document.addEventListener('click', () => setTimeout(schedule, 20), true);
  window.addEventListener('resize', schedule, {passive:true});
  [0,80,250,700,1400].forEach(ms => setTimeout(schedule, ms));

  window.jc100TopbarDebug = function(){
    const bar = topbar();
    const br = bar?.getBoundingClientRect?.();
    const surf = q('.jc99SurfaceBg[data-jc99="topbar"], #jc51RaveTopbar .jc99SurfaceBg');
    const iframe = q('.player-frame iframe, #youtubePlayer iframe, #jc65DirectPlayer');
    const dock = document.getElementById('jc80Dock');
    return {
      build: BUILD,
      activeRoom: activeRoom(),
      bodyClassOn: document.body?.classList?.contains('jc100-topbar-recovery'),
      topbarExists: !!bar,
      topbarSurfaceExists: !!surf,
      topbarRect: br ? {x:Math.round(br.x), y:Math.round(br.y), w:Math.round(br.width), h:Math.round(br.height)} : null,
      topbarDisplay: bar ? getComputedStyle(bar).display : '',
      topbarPosition: bar ? getComputedStyle(bar).position : '',
      topbarZ: bar ? getComputedStyle(bar).zIndex : '',
      exitExists: !!bar?.querySelector('[data-jc51-exit]'),
      fallbackVisible: getComputedStyle(document.getElementById('jc100FallbackExit') || document.body).display,
      playerFrameVisible: !!q('.player-frame') && getComputedStyle(q('.player-frame')).visibility !== 'hidden',
      iframeVisible: !!iframe && getComputedStyle(iframe).visibility !== 'hidden',
      dockVisible: !!dock && getComputedStyle(dock).display !== 'none'
    };
  };
})();

/* =========================================================
   JustClover Stage 101 — Chat Glass Room Background
   Version: stage108-chat-only-wallpaper-optimized-20260503-1

   Mounts wallpaper surfaces directly in chat/dock only. It does not touch the
   active topbar, player iframe/video, source state, chat handlers or auth.
   ========================================================= */
(function(){
  const BUILD = 'stage108-chat-only-wallpaper-optimized-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;

  let raf = 0;
  let observer = null;
  let lastVideoSrc = '';

  function isAuth(){ try { return !!window.__jc62IsAuthScreen?.(); } catch(_) { return false; } }
  function appOpen(){ const app=document.getElementById('appView'); return !!(app && !app.classList.contains('hidden')); }
  function watchActive(){ const w=document.getElementById('watchSection'); return !!(w && w.classList.contains('active')); }
  function activeRoom(){ return !isAuth() && appOpen() && watchActive(); }
  function q(s){ return document.querySelector(s); }
  function getLS(k,d=''){ try { return localStorage.getItem(k) ?? d; } catch(_) { return d; } }
  function enabled(){ return getLS('jc94-room-wallpaper-enabled','1') !== '0'; }
  function kind(){
    return window.__jc95RoomWallpaperKind || getLS('jc95-room-local-kind','') || (currentUrl().match(/\.(mp4|webm|ogg)(\?|#|$)/i) ? 'video' : 'image');
  }
  function currentUrl(){
    return window.__jc95RoomWallpaperUrl || getLS('jc94-room-wallpaper','') || '';
  }
  function currentImage(){
    const url=currentUrl();
    const k=kind();
    if(k==='video') return 'none';
    const css=getComputedStyle(document.documentElement).getPropertyValue('--jc99-room-image').trim();
    if(css && css !== 'none') return css;
    if(!url) return 'none';
    if(/^url\(/i.test(url) || /^linear-gradient|^radial-gradient/i.test(url)) return url;
    return `url("${url.replace(/"/g,'\\"')}")`;
  }
  function roomDim(){
    const n = parseFloat(getLS('jc94-room-wallpaper-dim','0.30'));
    return String(Math.max(.04, Math.min(.82, Number.isFinite(n) ? n : .30)));
  }
  function roomBlur(){
    const n = parseFloat(getLS('jc94-room-wallpaper-blur','14'));
    return `${Math.max(0, Math.min(28, Number.isFinite(n) ? n : 14))}px`;
  }

  function ensureLayer(host,name){
    if(!host) return null;
    let layer = host.querySelector(`:scope > .jc101SurfaceBg[data-jc101="${name}"]`);
    if(!layer){
      layer = document.createElement('div');
      layer.className = 'jc101SurfaceBg';
      layer.dataset.jc101 = name;
      layer.setAttribute('aria-hidden','true');
      layer.innerHTML = '<video muted loop autoplay playsinline></video>';
      host.prepend(layer);
    }
    const v = layer.querySelector('video');
    if(v){
      v.muted = true; v.loop = true; v.autoplay = true; v.playsInline = true; v.preload = 'metadata';
      v.setAttribute('muted',''); v.setAttribute('playsinline',''); v.setAttribute('preload','metadata'); v.tabIndex = -1;
    }
    return layer;
  }

  function setVideo(layer,src,on){
    const v = layer?.querySelector?.('video');
    if(!v) return;
    if(on && src){
      if(v.src !== src) v.src = src;
      v.play?.().catch(()=>{});
    }else{
      try{ v.pause(); }catch(_){}
      v.removeAttribute('src');
      try{ v.load?.(); }catch(_){}
    }
  }

  function sync(){
    raf = 0;
    const on = enabled() && activeRoom();
    const k = kind();
    const src = currentUrl();
    const videoOn = on && k === 'video' && !!src;

    document.body?.classList?.toggle('jc101-chat-glass', on);
    document.body?.classList?.toggle('jc101-chat-video', videoOn);

    const root = document.documentElement;
    root.style.setProperty('--jc101-room-image', currentImage());
    root.style.setProperty('--jc101-room-dim', roomDim());
    root.style.setProperty('--jc101-room-blur', roomBlur());

    // Never keep wallpaper surfaces in the topbar.
    document.querySelectorAll('#jc51RaveTopbar .jc101SurfaceBg, .topbar .jc101SurfaceBg, #jc51RaveTopbar .jc99SurfaceBg, .topbar .jc99SurfaceBg').forEach(el => el.remove());

    // Chat-only wallpaper mode: keep exactly one wallpaper surface in the
    // right sidebar. This prevents the extra bottom image strip and reduces
    // decoding / repaint load near the player.
    document.querySelectorAll('.chat-card > .jc101SurfaceBg, .chat-card > .jc99SurfaceBg, .chat-card #chatForm > .jc101SurfaceBg, .chat-card #chatForm > .jc99SurfaceBg, .chat-card .message-form > .jc101SurfaceBg, .chat-card .message-form > .jc99SurfaceBg, #jc80Dock > .jc101SurfaceBg, #jc80Dock > .jc99SurfaceBg').forEach(el => el.remove());

    const layers = [
      ensureLayer(q('.watch-sidebar'), 'sidebar')
    ];

    layers.forEach(layer => {
      if(!layer) return;
      layer.hidden = !on;
      layer.style.display = on ? '' : 'none';
      setVideo(layer, src, videoOn);
    });

    if(videoOn) lastVideoSrc = src;
  }

  function schedule(){ if(!raf) raf = requestAnimationFrame(sync); }

  if(document.body && !observer){
    observer = new MutationObserver(schedule);
    observer.observe(document.body, {childList:true, subtree:true, attributes:true, attributeFilter:['class','style','hidden']});
  }
  document.addEventListener('click', () => { setTimeout(schedule,25); setTimeout(schedule,260); }, true);
  document.addEventListener('change', e => {
    if(e.target?.closest?.('#jc94RoomFile')){ setTimeout(schedule,50); setTimeout(schedule,350); setTimeout(schedule,1000); }
  }, true);
  document.addEventListener('input', e => {
    if(e.target?.closest?.('#jc94RoomDim,#jc94RoomBlur,#jc94RoomGlass,#jc94RoomEnabled,#jc94RoomUrl')) setTimeout(schedule,25);
  }, true);
  window.addEventListener('resize', schedule, {passive:true});
  window.addEventListener('storage', schedule);
  document.addEventListener('visibilitychange', schedule, true);
  [0,80,250,700,1400,2600].forEach(ms => setTimeout(schedule, ms));

  window.jc101ChatGlassDebug = function(){
    const css = el => el ? getComputedStyle(el) : null;
    const vis = el => !!el && css(el).display !== 'none' && css(el).visibility !== 'hidden';
    const layer = name => q(`.jc101SurfaceBg[data-jc101="${name}"]`);
    const video = name => layer(name)?.querySelector('video');
    const iframe = q('.player-frame iframe, #youtubePlayer iframe, #jc65DirectPlayer');
    return {
      build: BUILD,
      activeRoom: activeRoom(),
      bodyClassOn: document.body?.classList?.contains('jc101-chat-glass'),
      videoClassOn: document.body?.classList?.contains('jc101-chat-video'),
      kind: kind(),
      hasUrl: !!currentUrl(),
      lastVideoSrc,
      sidebarLayer: !!layer('sidebar'),
      chatLayer: !!layer('chat'),
      composerLayer: !!layer('composer'),
      dockLayer: !!layer('dock'),
      topbarLayer: !!q('#jc51RaveTopbar .jc101SurfaceBg, .topbar .jc101SurfaceBg, #jc51RaveTopbar .jc99SurfaceBg, .topbar .jc99SurfaceBg'),
      sidebarVideoPaused: video('sidebar')?.paused ?? null,
      chatVideoPaused: video('chat')?.paused ?? null,
      sidebarBg: css(q('.watch-sidebar'))?.backgroundColor || '',
      chatBg: css(q('.chat-card'))?.backgroundColor || '',
      formBg: css(q('.chat-card #chatForm, .chat-card .message-form'))?.backgroundColor || '',
      topbarExists: !!document.getElementById('jc51RaveTopbar'),
      playerFrameVisible: vis(q('.player-frame')),
      iframeVisible: vis(iframe)
    };
  };
})();


/* =========================================================
   JustClover Stage 102 — Room Glass Tuning
   Version: stage108-chat-only-wallpaper-optimized-20260503-1

   Adds fine tuning controls for chat/dock readability. Safe: no player,
   iframe, source, auth, chat handler, or topbar geometry changes.
   ========================================================= */
(function(){
  const BUILD = 'stage108-chat-only-wallpaper-optimized-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;

  const LS = {
    chatDim: 'jc102-chat-dim',
    chatPanel: 'jc102-chat-panel',
    chatBlur: 'jc102-chat-blur',
    dockDim: 'jc102-dock-dim',
    dockPanel: 'jc102-dock-panel',
    dockBlur: 'jc102-dock-blur'
  };

  const DEF = {
    chatDim: .54,
    chatPanel: .22,
    chatBlur: 14,
    dockDim: .36,
    dockPanel: .14,
    dockBlur: 12
  };

  let raf = 0;
  let observer = null;

  function get(k, d){
    try {
      const raw = localStorage.getItem(k);
      if(raw === null || raw === '') return d;
      const n = Number(raw);
      return Number.isFinite(n) ? n : d;
    } catch(_) { return d; }
  }

  function set(k,v){ try { localStorage.setItem(k,String(v)); } catch(_){} }
  function del(k){ try { localStorage.removeItem(k); } catch(_){} }
  function clamp(n,min,max){ return Math.max(min, Math.min(max, n)); }
  function isAuth(){ try { return !!window.__jc62IsAuthScreen?.(); } catch(_) { return false; } }
  function activeRoom(){
    const app = document.getElementById('appView');
    const watch = document.getElementById('watchSection');
    return !isAuth() && !!app && !app.classList.contains('hidden') && !!watch && watch.classList.contains('active');
  }
  function wallpaperEnabled(){
    try { return localStorage.getItem('jc94-room-wallpaper-enabled') !== '0'; }
    catch(_) { return true; }
  }

  function vals(){
    const chatPanel = clamp(get(LS.chatPanel, DEF.chatPanel), .02, .72);
    const dockPanel = clamp(get(LS.dockPanel, DEF.dockPanel), .00, .62);
    return {
      chatDim: clamp(get(LS.chatDim, DEF.chatDim), .00, .86),
      chatPanel,
      chatCardPanel: clamp(chatPanel + .08, .04, .82),
      chatComposerPanel: clamp(chatPanel + .16, .08, .86),
      chatInputPanel: clamp(.08 + chatPanel * .28, .06, .26),
      chatBlur: clamp(get(LS.chatBlur, DEF.chatBlur), 0, 32),
      dockDim: clamp(get(LS.dockDim, DEF.dockDim), .00, .82),
      dockPanel,
      dockInnerPanel: clamp(dockPanel + .16, .10, .78),
      dockBlur: clamp(get(LS.dockBlur, DEF.dockBlur), 0, 32)
    };
  }

  function apply(){
    const v = vals();
    const root = document.documentElement;
    root.style.setProperty('--jc102-chat-dim', String(v.chatDim));
    root.style.setProperty('--jc102-chat-panel', String(v.chatPanel));
    root.style.setProperty('--jc102-chat-card-panel', String(v.chatCardPanel));
    root.style.setProperty('--jc102-chat-composer-panel', String(v.chatComposerPanel));
    root.style.setProperty('--jc102-chat-input-panel', String(v.chatInputPanel));
    root.style.setProperty('--jc102-chat-blur', `${v.chatBlur}px`);
    root.style.setProperty('--jc102-dock-dim', String(v.dockDim));
    root.style.setProperty('--jc102-dock-panel', String(v.dockPanel));
    root.style.setProperty('--jc102-dock-inner-panel', String(v.dockInnerPanel));
    root.style.setProperty('--jc102-dock-blur', `${v.dockBlur}px`);

    const on = activeRoom() && wallpaperEnabled();
    document.body?.classList?.toggle('jc102-glass-tuning', on);

    syncInputs();
  }

  function syncInputs(){
    const v = vals();
    const map = {
      jc102ChatDim: v.chatDim,
      jc102ChatPanel: v.chatPanel,
      jc102ChatBlur: v.chatBlur,
      jc102DockDim: v.dockDim,
      jc102DockPanel: v.dockPanel,
      jc102DockBlur: v.dockBlur
    };
    Object.entries(map).forEach(([id,val]) => {
      const el = document.getElementById(id);
      if(el && document.activeElement !== el) el.value = String(val);
    });
  }

  function renderSettings(){
    const card = document.getElementById('jc94RoomStyleCard');
    if(!card || document.getElementById('jc102GlassTuning')) return;

    const host = card.querySelector('.jc94-room-style-form') || card;
    const block = document.createElement('div');
    block.id = 'jc102GlassTuning';
    block.innerHTML = `
      <div class="jc102-tuning-title">
        <div>
          <h4>Тонкая настройка комнаты</h4>
          <small>Фон уже есть. Здесь настраивается читаемость чата и нижней панели.</small>
        </div>
        <button id="jc102ResetGlassTuning" type="button">Сброс</button>
      </div>
      <div class="jc102-tuning-grid">
        <label>Чат — затемнение фона
          <input id="jc102ChatDim" type="range" min="0" max="0.86" step="0.01" />
        </label>
        <label>Чат — плотность glass
          <input id="jc102ChatPanel" type="range" min="0.02" max="0.72" step="0.01" />
        </label>
        <label>Чат — blur
          <input id="jc102ChatBlur" type="range" min="0" max="32" step="1" />
        </label>
        <label>Нижняя панель — затемнение
          <input id="jc102DockDim" type="range" min="0" max="0.82" step="0.01" />
        </label>
        <label>Нижняя панель — плотность glass
          <input id="jc102DockPanel" type="range" min="0" max="0.62" step="0.01" />
        </label>
        <label>Нижняя панель — blur
          <input id="jc102DockBlur" type="range" min="0" max="32" step="1" />
        </label>
      </div>`;
    const status = host.querySelector('#jc94RoomStyleStatus');
    if(status) status.insertAdjacentElement('beforebegin', block);
    else host.appendChild(block);

    block.querySelectorAll('input[type="range"]').forEach(el => {
      el.addEventListener('input', () => {
        if(el.id === 'jc102ChatDim') set(LS.chatDim, el.value);
        if(el.id === 'jc102ChatPanel') set(LS.chatPanel, el.value);
        if(el.id === 'jc102ChatBlur') set(LS.chatBlur, el.value);
        if(el.id === 'jc102DockDim') set(LS.dockDim, el.value);
        if(el.id === 'jc102DockPanel') set(LS.dockPanel, el.value);
        if(el.id === 'jc102DockBlur') set(LS.dockBlur, el.value);
        apply();
      });
    });

    block.querySelector('#jc102ResetGlassTuning')?.addEventListener('click', () => {
      Object.values(LS).forEach(del);
      apply();
      const st = document.getElementById('jc94RoomStyleStatus');
      if(st) st.textContent = 'Тонкая настройка glass сброшена.';
    });

    syncInputs();
  }

  function sync(){
    raf = 0;
    renderSettings();
    apply();
  }

  function schedule(){
    if(!raf) raf = requestAnimationFrame(sync);
  }

  document.addEventListener('DOMContentLoaded', schedule);
  document.addEventListener('click', () => setTimeout(schedule, 35), true);
  document.addEventListener('input', e => {
    if(e.target?.closest?.('#jc94RoomStyleCard,#jc102GlassTuning')) setTimeout(schedule, 20);
  }, true);
  window.addEventListener('storage', schedule);
  window.addEventListener('resize', schedule, {passive:true});

  if(document.body && !observer){
    observer = new MutationObserver(schedule);
    observer.observe(document.body, {attributes:true, attributeFilter:['class','style','hidden'], childList:true, subtree:true});
  }

  [0,100,350,900,1800].forEach(ms => setTimeout(schedule, ms));

  window.jc102GlassTuningDebug = function(){
    const q = s => document.querySelector(s);
    const css = el => el ? getComputedStyle(el) : null;
    const iframe = q('.player-frame iframe, #youtubePlayer iframe, #jc65DirectPlayer');
    const visible = el => !!el && css(el).display !== 'none' && css(el).visibility !== 'hidden' && css(el).opacity !== '0';
    return {
      build: BUILD,
      activeRoom: activeRoom(),
      bodyClassOn: document.body?.classList?.contains('jc102-glass-tuning'),
      settingsExists: !!q('#jc102GlassTuning'),
      topbarExists: !!q('#jc51RaveTopbar'),
      topbarLayer: !!q('#jc51RaveTopbar .jc101SurfaceBg, .topbar .jc101SurfaceBg'),
      sidebarLayer: !!q('.jc101SurfaceBg[data-jc101="sidebar"]'),
      chatLayer: !!q('.jc101SurfaceBg[data-jc101="chat"]'),
      dockLayer: !!q('.jc101SurfaceBg[data-jc101="dock"]'),
      values: vals(),
      chatBg: css(q('.watch-sidebar'))?.backgroundColor || '',
      chatCardBg: css(q('.watch-sidebar .chat-card'))?.backgroundColor || '',
      dockBg: css(q('#jc80Dock'))?.backgroundColor || '',
      playerFrameVisible: visible(q('.player-frame')),
      iframeVisible: visible(iframe)
    };
  };
})();


/* =========================================================
   JustClover Stage 104 — Safe Local Wallpaper No-Freeze
   Version: stage108-chat-only-wallpaper-optimized-20260503-1

   Emergency safety patch: local MP4/WebM backgrounds are session-only and are
   never stored in IndexedDB. This prevents browser hangs with large video files.
   URL wallpapers remain persistent through localStorage. Player/topbar/layout are
   not touched.
   ========================================================= */
(()=>{
  const BUILD='stage108-chat-only-wallpaper-optimized-20260503-1';
  window.JUSTCLOVER_BUILD=BUILD;
  const DB_NAME='justclover-room-wallpaper-db-v1';
  const MAX_IMAGE_PERSIST=1.5*1024*1024;
  const MAX_LOCAL_VIDEO=180*1024*1024;

  function note(text){
    const el=document.getElementById('jc94RoomStyleStatus');
    if(el) el.textContent=text;
  }
  function isFileInput(t){ return t?.closest?.('#jc94RoomFile'); }
  function killOldDb(){
    try{
      const run=()=>{ try{ indexedDB.deleteDatabase(DB_NAME); }catch(_){} };
      if('requestIdleCallback' in window) requestIdleCallback(run,{timeout:1800}); else setTimeout(run,1600);
    }catch(_){}
  }
  function currentKind(){
    return window.__jc95RoomWallpaperKind || localStorage.getItem('jc95-room-local-kind') || '';
  }
  function currentUrl(){
    return window.__jc95RoomWallpaperUrl || localStorage.getItem('jc94-room-wallpaper') || '';
  }
  function activeRoom(){
    const app=document.getElementById('appView');
    const watch=document.getElementById('watchSection');
    let auth=false; try{auth=!!window.__jc62IsAuthScreen?.();}catch(_){}
    return !auth && !!app && !app.classList.contains('hidden') && !!watch && watch.classList.contains('active');
  }
  function decorateSettings(){
    const input=document.getElementById('jc94RoomFile');
    if(input){
      input.setAttribute('accept','image/gif,image/webp,image/png,image/jpeg,image/*,video/mp4,video/webm,video/ogg,.mp4,.webm,.ogg,.ogv');
    }
    const card=document.getElementById('jc94RoomStyleCard');
    if(card && !document.getElementById('jc104SafeNote')){
      const p=document.createElement('p');
      p.id='jc104SafeNote';
      p.className='status';
      p.textContent='Stage104 safe: локальные видео не сохраняются после перезагрузки, чтобы не подвешивать браузер. Для постоянного живого фона используй прямую ссылку на .mp4/.webm/.gif/.webp.';
      const file=input?.closest?.('label');
      (file || card).insertAdjacentElement('afterend', p);
    }
  }

  document.addEventListener('change', function(e){
    const input=isFileInput(e.target);
    if(!input) return;
    const file=input.files?.[0];
    if(!file) return;
    const isVideo=/^video\//i.test(file.type||'') || /\.(mp4|webm|ogg|ogv)$/i.test(file.name||'');
    if(isVideo && file.size>MAX_LOCAL_VIDEO){
      input.value='';
      e.preventDefault();
      e.stopImmediatePropagation();
      note('Видео слишком большое для локального фона. Чтобы браузер не зависал, используй файл до ~180 MB или прямую ссылку на .mp4/.webm.');
      return;
    }
    if(isVideo){
      try{ localStorage.removeItem('jc94-room-wallpaper'); }catch(_){}
      setTimeout(()=>note(`Видео-фон применён только на текущую сессию: ${file.name}. После перезагрузки выбери файл заново или используй прямую ссылку.`), 120);
    }else if(file.size>MAX_IMAGE_PERSIST){
      setTimeout(()=>note(`Картинка применена на текущую сессию: ${file.name}. Для сохранения после перезагрузки используй файл до 1.5 MB или прямую ссылку.`), 120);
    }else{
      setTimeout(()=>note(`Фон применён: ${file.name}. Небольшие картинки могут сохраняться, видео больше не пишем в IndexedDB.`), 120);
    }
  }, true);

  document.addEventListener('click', function(e){
    if(e.target?.closest?.('[data-section="appearanceSection"],#jc94ApplyRoomStyle,#jc94OpenWatch')) setTimeout(decorateSettings,80);
  }, true);

  killOldDb();
  [0,150,600,1600].forEach(ms=>setTimeout(decorateSettings,ms));

  window.jc104SafeWallpaperDebug=function(){
    const q=s=>document.querySelector(s);
    const css=el=>el?getComputedStyle(el):null;
    return {
      build:BUILD,
      oldDbDisabled:true,
      indexedDbCleanupScheduled:true,
      activeRoom:activeRoom(),
      kind:currentKind(),
      hasUrl:!!currentUrl(),
      globalUrlIsBlob:String(window.__jc95RoomWallpaperUrl||'').startsWith('blob:'),
      sidebarLayer:!!q('.jc99SurfaceBg[data-jc99="sidebar"], .jc101SurfaceBg[data-jc101="sidebar"]'),
      chatLayer:!!q('.jc101SurfaceBg[data-jc101="chat"], .jc99SurfaceBg[data-jc99="chat"]'),
      dockLayer:!!q('.jc99SurfaceBg[data-jc99="dock"], .jc101SurfaceBg[data-jc101="dock"]'),
      topbarLayer:false,
      playerFrameVisible:(()=>{const el=q('.player-frame');const st=css(el);return !!el&&st.display!=='none'&&st.visibility!=='hidden';})(),
      iframeVisible:(()=>{const el=q('.player-frame iframe,#jc65DirectPlayer,iframe');const st=css(el);return !!el&&st.display!=='none'&&st.visibility!=='hidden';})(),
      persistDisabled:localStorage.getItem('jc104-room-wallpaper-persist-disabled')||''
    };
  };
})();

/* =========================================================
   JustClover Stage 105 — Room Wallpaper Performance + Clean Glass
   Version: stage108-chat-only-wallpaper-optimized-20260503-1
   One fixed wallpaper layer for the room. Transparent chat/sidebar/dock like
   the lobby, no fragmented surface backgrounds, better performance.
   ========================================================= */
(function(){
  const BUILD='stage108-chat-only-wallpaper-optimized-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;
  const LS={
    enabled:'jc94-room-wallpaper-enabled',
    wallpaper:'jc94-room-wallpaper',
    dim:'jc94-room-wallpaper-dim',
    blur:'jc94-room-wallpaper-blur',
    glass:'jc94-room-wallpaper-glass'
  };
  const q=(s,r=document)=>r.querySelector(s);
  const clamp=(n,min,max)=>Math.max(min,Math.min(max,n));
  const get=(k,d='')=>{ try{ const v=localStorage.getItem(k); return v==null?d:v; }catch(_){ return d; } };
  const isBlob=u=>String(u||'').startsWith('blob:');
  function activeRoom(){
    const watch=q('#watchSection');
    const app=q('#appView');
    if(!watch) return false;
    const active=watch.classList.contains('active') || !!watch.closest('.active');
    const hidden=app?.classList?.contains('hidden');
    return !!(active && !hidden);
  }
  function enabled(){ return get(LS.enabled,'1') !== '0'; }
  function currentUrl(){ return window.__jc95RoomWallpaperUrl || get(LS.wallpaper,'') || ''; }
  function currentKind(){
    return window.__jc95RoomWallpaperKind || get('jc95-room-local-kind','') || (/\.(mp4|webm|ogg)(\?|#|$)/i.test(currentUrl()) ? 'video' : 'image');
  }
  function currentCssWallpaper(){
    const raw=(getComputedStyle(document.documentElement).getPropertyValue('--jc94-room-wallpaper')||'').trim();
    return raw;
  }
  function currentSpec(){
    const url=currentUrl();
    const kind=currentKind();
    if(url) return {type:kind==='video'?'video':'image', value:url};
    const css=currentCssWallpaper();
    if(css) return {type:'css', value:css};
    return {type:'none', value:''};
  }
  function numeric(name, dflt, min, max){
    const v=parseFloat(get(name, String(dflt)));
    return Number.isFinite(v) ? clamp(v,min,max) : dflt;
  }
  function ensureLayer(){
    let layer=document.getElementById('jc105RoomBg');
    if(!layer){
      layer=document.createElement('div');
      layer.id='jc105RoomBg';
      const video=document.createElement('video');
      video.id='jc105RoomBgVideo';
      video.muted=true;
      video.loop=true;
      video.autoplay=true;
      video.playsInline=true;
      video.preload='metadata';
      video.disablePictureInPicture=true;
      video.setAttribute('aria-hidden','true');
      video.setAttribute('playsinline','');
      video.setAttribute('muted','');
      layer.appendChild(video);
      document.body.appendChild(layer);
    } else if(!layer.querySelector('#jc105RoomBgVideo')){
      const video=document.createElement('video');
      video.id='jc105RoomBgVideo';
      video.muted=true;
      video.loop=true;
      video.autoplay=true;
      video.playsInline=true;
      video.preload='metadata';
      video.disablePictureInPicture=true;
      video.setAttribute('aria-hidden','true');
      video.setAttribute('playsinline','');
      video.setAttribute('muted','');
      layer.appendChild(video);
    }
    return layer;
  }
  function stopVideo(video){
    if(!video) return;
    try{ video.pause(); }catch(_){}
    try{ video.removeAttribute('src'); video.load(); }catch(_){}
    video.style.display='none';
  }
  function normalizeGlass(){
    const blur=numeric(LS.blur,14,0,24);
    const dim=numeric(LS.dim,0.30,0,0.70);
    const glass=numeric(LS.glass,0.34,0.06,0.85);
    // Lower alpha than previous stages -> lobby-like transparency.
    const panelAlpha=clamp(0.12 + glass * 0.24, 0.14, 0.30);
    const cardAlpha=clamp(0.18 + glass * 0.28, 0.20, 0.36);
    const inputAlpha=clamp(0.08 + glass * 0.15, 0.10, 0.22);
    const root=document.documentElement;
    root.style.setProperty('--jc105-room-dim', String(dim.toFixed(3)));
    root.style.setProperty('--jc105-room-blur', `${blur.toFixed(2)}px`);
    root.style.setProperty('--jc105-room-panel-alpha', String(panelAlpha.toFixed(3)));
    root.style.setProperty('--jc105-room-card-alpha', String(cardAlpha.toFixed(3)));
    root.style.setProperty('--jc105-room-input-alpha', String(inputAlpha.toFixed(3)));
  }
  function apply(){
    normalizeGlass();
    const on=enabled() && activeRoom();
    const layer=ensureLayer();
    const video=q('#jc105RoomBgVideo', layer);
    document.body.classList.toggle('jc105-room-bg-active', on);
    if(!on){
      layer.style.backgroundImage='none';
      stopVideo(video);
      return;
    }
    const spec=currentSpec();
    if(spec.type==='video' && spec.value){
      layer.style.backgroundImage='none';
      if(video.dataset.src !== spec.value){
        try{ video.src=spec.value; video.dataset.src=spec.value; }catch(_){}
      }
      video.style.display='block';
      const playPromise=video.play?.();
      if(playPromise && typeof playPromise.catch==='function') playPromise.catch(()=>{});
    } else {
      stopVideo(video);
      if(spec.type==='image' && spec.value){
        layer.style.backgroundImage=`url("${String(spec.value).replace(/"/g,'\\"')}")`;
      } else if(spec.type==='css' && spec.value){
        layer.style.backgroundImage=spec.value;
      } else {
        layer.style.backgroundImage='linear-gradient(135deg, rgba(9,12,26,.94), rgba(18,10,28,.90))';
      }
    }
  }
  function tick(){
    try{ apply(); }catch(err){ console.error('JC105 apply failed', err); }
  }

  // Observe app state and surface changes.
  let raf=0;
  const schedule=()=>{ if(raf) return; raf=requestAnimationFrame(()=>{ raf=0; tick(); }); };
  const mo=new MutationObserver(schedule);
  const boot=()=>{
    ensureLayer();
    schedule();
    mo.observe(document.documentElement,{attributes:true,childList:true,subtree:true,attributeFilter:['class','style']});
    window.addEventListener('storage', schedule);
    window.addEventListener('resize', schedule, {passive:true});
    document.addEventListener('visibilitychange', ()=>{
      const video=document.getElementById('jc105RoomBgVideo');
      if(document.hidden){ try{ video?.pause?.(); }catch(_){} }
      else schedule();
    });
    setInterval(schedule, 1200);
  };
  if(document.readyState==='loading') document.addEventListener('DOMContentLoaded', boot, {once:true});
  else boot();

  window.jc105RoomPerfDebug=()=>{
    const layer=document.getElementById('jc105RoomBg');
    const video=document.getElementById('jc105RoomBgVideo');
    const css=el=>el?getComputedStyle(el):null;
    return {
      build:BUILD,
      roomActive:activeRoom(),
      enabled:enabled(),
      wallpaperUrl:currentUrl(),
      wallpaperKind:currentKind(),
      cssWallpaper:currentCssWallpaper(),
      layerExists:!!layer,
      layerBg:css(layer)?.backgroundImage || '',
      layerOpacity:css(layer)?.opacity || '',
      videoShown:css(video)?.display || '',
      videoSrc:video?.currentSrc || video?.src || '',
      sidebarBg:css(q('.watch-sidebar'))?.backgroundColor || '',
      chatBg:css(q('.chat-card'))?.backgroundColor || '',
      dockBg:css(q('#jc80Dock'))?.backgroundColor || ''
    };
  };
})();

/* =========================================================
   JustClover Stage 107 — FINAL Build Lock / Debug
   Version: stage108-chat-only-wallpaper-optimized-20260503-1
   ========================================================= */
(function(){
  const BUILD="stage108-chat-only-wallpaper-optimized-20260503-1";
  window.JUSTCLOVER_BUILD=BUILD;
  window.JC_STAGE_EXPECTED_BUILD=BUILD;
  window.JC_DISABLE_AUTO_RELOAD=true;
  window.JC_DISABLE_UPDATE_LOOP=true;
  try{
    sessionStorage.removeItem('jc72ApplyingBuild');
    sessionStorage.setItem('jc72NoReload','1');
    localStorage.setItem('jc72AutoUpdateDisabled','1');
  }catch(_){}

  function normalizeUrl(){
    try{
      const u=new URL(location.href);
      if(u.searchParams.get('v')!==BUILD){
        u.searchParams.set('v',BUILD);
        history.replaceState({},'',u.pathname+u.search+u.hash);
      }
    }catch(_){}
  }
  normalizeUrl();

  function removeNotice(){
    document.getElementById('jc72UpdateNotice')?.remove?.();
    document.querySelectorAll('[id*="UpdateNotice"],[class*="update-notice"],[class*="UpdateNotice"]').forEach(el=>{
      const id=String(el.id||'');
      const text=String(el.textContent||'');
      if(id.includes('jc72') || text.includes('Обновление JustClover') || text.includes('JustClover')) el.remove();
    });
  }
  removeNotice();
  setInterval(removeNotice, 1500);

  window.jc72CheckForUpdate = async function(){
    return {disabled:true, build:BUILD, reason:'Stage107 blocks auto-reload and update-loop.'};
  };
  window.jc72UpdateDebug = function(){
    return {
      disabled:true,
      build:BUILD,
      currentBuild:window.JUSTCLOVER_BUILD,
      expected:window.JC_STAGE_EXPECTED_BUILD,
      url:new URLSearchParams(location.search).get('v')||'',
      applying:(()=>{try{return sessionStorage.getItem('jc72ApplyingBuild')||''}catch(_){return ''}})(),
      noReload:(()=>{try{return sessionStorage.getItem('jc72NoReload')||''}catch(_){return ''}})(),
      noticeExists:!!document.getElementById('jc72UpdateNotice')
    };
  };
  window.jc107StageDebug = function(){
    return {
      build:BUILD,
      justCloverBuild:window.JUSTCLOVER_BUILD,
      urlVersion:new URLSearchParams(location.search).get('v')||'',
      noReload:window.JC_DISABLE_AUTO_RELOAD===true,
      updateLoopOff:window.JC_DISABLE_UPDATE_LOOP===true,
      badge:'107 NOLOOP'
    };
  };
})();
