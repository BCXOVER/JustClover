/* =========================================================
   JustClover Stage 74 — Fixed Viewport Player
   Version: stage87-rollback-icon-mic-dock-20260502-1

   Цель: не чинить старый каталог патчами поверх патчей, а заменить
   его новым изолированным modal, который не зависит от Stage35/36/37.
   ========================================================= */

const JC40_BUILD = "stage87-rollback-icon-mic-dock-20260502-1";
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
      micStateClass: document.querySelector('#jc80Dock [data-jc80-mic]')?.className || '',
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
   Version: stage87-rollback-icon-mic-dock-20260502-1
   ========================================================= */
(function(){
  const BUILD = "stage87-rollback-icon-mic-dock-20260502-1";
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

  function inferMicEnabled(){
    const btn = document.getElementById('voiceBtn');
    const status = document.getElementById('voiceStatus');

    if(btn?.hasAttribute('aria-pressed')) return btn.getAttribute('aria-pressed') === 'true';

    const text = [
      btn?.textContent,
      status?.textContent,
      btn?.getAttribute('aria-label'),
      status?.getAttribute('aria-label'),
      btn?.getAttribute('title'),
      status?.getAttribute('title'),
      btn?.dataset?.state,
      status?.dataset?.state
    ].filter(Boolean).join(' ').toLowerCase();

    const classBag = [btn?.className, status?.className].filter(Boolean).join(' ').toLowerCase();
    const offRx = /(выкл|выключ|откл|muted|mute|off|disabled|blocked)/;
    const onRx = /(вкл|включ|unmuted|unmute|enabled|active|connected|on)/;

    if(offRx.test(text) || offRx.test(classBag)) return false;
    if(onRx.test(text) || onRx.test(classBag)) return true;

    return true;
  }

  function syncMicState(){
    const btn = document.querySelector('#jc80Dock [data-jc80-mic]');
    if(!btn) return;
    const on = inferMicEnabled();
    btn.classList.toggle('is-off', !on);
    btn.classList.toggle('is-on', on);
    btn.setAttribute('aria-pressed', on ? 'true' : 'false');
    btn.title = on ? 'Микрофон включен' : 'Микрофон выключен';
    btn.setAttribute('aria-label', btn.title);
  }

  function ensureDock(){
    let dock = document.getElementById('jc80Dock');
    if(!dock){
      dock = document.createElement('div');
      dock.id = 'jc80Dock';
      dock.setAttribute('aria-label','Нижняя панель комнаты');
      dock.innerHTML =         '<div class="jc80-dock-inner">' +
          '<button type="button" data-jc80-mic class="jc80-mic-btn" title="Микрофон" aria-label="Микрофон">' +
            '<span class="jc80-mic-icon" aria-hidden="true">' +
              '<svg viewBox="0 0 24 24" focusable="false" aria-hidden="true">' +
                '<rect x="9" y="3" width="6" height="11" rx="3"></rect>' +
                '<path d="M6 11a6 6 0 0 0 12 0"></path>' +
                '<path d="M12 17v4"></path>' +
                '<path d="M9 21h6"></path>' +
              '</svg>' +
            '</span>' +
          '</button>' +
          '<button type="button" data-jc80-source title="Источники" aria-label="Источники">▦ Источники</button>' +
          '<button type="button" data-jc80-full title="Fullscreen" aria-label="Fullscreen">⛶ Экран</button>' +
        '</div>';

      dock.addEventListener('click', function(e){
        const btn = e.target.closest('button');
        if(!btn) return;
        e.preventDefault();
        e.stopPropagation();

        if(btn.hasAttribute('data-jc80-mic')){
          document.getElementById('voiceBtn')?.click?.();
          setTimeout(syncMicState, 60);
          setTimeout(syncMicState, 240);
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
    syncMicState();
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

  window.jc87PlayerDebug = function(){
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
      hasSource: !!document.querySelector('#jc80Dock [data-jc80-source]'),
      hasFull: !!document.querySelector('#jc80Dock [data-jc80-full]')
    };
  };
})();
