/* =========================================================
   JustClover Stage 38 — Clean Scroll/Focus Rewrite
   Version: stage38-clean-scroll-focus-rewrite-20260502-1
   ========================================================= */

const JC38_BUILD = "stage38-clean-scroll-focus-rewrite-20260502-1";
const JC38_BASE_COMMIT = "f658b5bfad3fade4eb7f9c4d82865452cdc19f00";
const JC38_BASE_APP = `https://cdn.jsdelivr.net/gh/BCXOVER/JustClover@${JC38_BASE_COMMIT}/app.js`;

window.JUSTCLOVER_BUILD = JC38_BUILD;
console.log("JustClover Stage 38 CLEAN loader:", JC38_BUILD);

try {
  await import(JC38_BASE_APP + `?base=stage37&stage38=${Date.now()}`);
} catch (e) {
  console.error("JustClover Stage 38: base app import failed", e);
  throw e;
}

window.JUSTCLOVER_BUILD = JC38_BUILD;

(function(){
  const BUILD = JC38_BUILD;
  const PLAYER_SELECTOR = '.player-frame, #youtubePlayer, #iframePlayer, #videoPlayer, video.embed-box, iframe.embed-box';
  let playerGuardUntil = 0;
  let playerGuardY = 0;
  let playerClickUntil = 0;
  let lastOpenState = false;

  document.body.classList.add('jc38-clean-scroll');

  function layer(){
    return document.querySelector('.jc-catalog-layer');
  }

  function isOpen(){
    const l = layer();
    return !!(l && l.classList.contains('open'));
  }

  function modal(){
    const l = layer();
    if(!l) return null;
    return l.querySelector('.jc-catalog-modal, .jc-catalog-panel, .jc-catalog-content, .panel') || l.firstElementChild || l;
  }

  function inCatalog(node){
    return !!node?.closest?.('.jc-catalog-layer.open');
  }

  function closeCatalog(){
    const l = layer();
    if(!l) return;
    l.classList.remove('open');
    l.setAttribute('aria-hidden', 'true');
    normalizeCatalog();
  }

  function setPageScroll(x, y){
    try { window.scroll(x, y); } catch (_) {}
    try { document.documentElement.scrollLeft = Number(x) || 0; document.documentElement.scrollTop = Number(y) || 0; } catch (_) {}
    try { document.body.scrollLeft = Number(x) || 0; document.body.scrollTop = Number(y) || 0; } catch (_) {}
  }

  // Stage37 подменял scrollTo. Возвращаем предсказуемую версию без modal-lock loop.
  window.scrollTo = function(...args){
    if(isOpen()) return;
    if(args.length === 1 && typeof args[0] === 'object'){
      return setPageScroll(args[0].left || 0, args[0].top || 0);
    }
    return setPageScroll(args[0] || 0, args[1] || 0);
  };

  window.scrollBy = function(...args){
    if(isOpen()) return;
    if(args.length === 1 && typeof args[0] === 'object'){
      return setPageScroll((window.scrollX || 0) + (args[0].left || 0), (window.scrollY || 0) + (args[0].top || 0));
    }
    return setPageScroll((window.scrollX || 0) + (args[0] || 0), (window.scrollY || 0) + (args[1] || 0));
  };

  // Убираем причину прыжка: старый focus() на поле каталога больше не скроллит страницу.
  const nativeFocus = HTMLElement.prototype.focus;
  HTMLElement.prototype.focus = function(options){
    if(this && (this.id === 'jcCatalogUrl' || this.closest?.('.jc-catalog-layer'))){
      try { return nativeFocus.call(this, { ...(options || {}), preventScroll:true }); }
      catch (_) { return; }
    }
    return nativeFocus.call(this, options);
  };

  const nativeScrollIntoView = Element.prototype.scrollIntoView;
  Element.prototype.scrollIntoView = function(options){
    if(this && (this.id === 'jcCatalogUrl' || this.closest?.('.jc-catalog-layer'))){
      return;
    }
    return nativeScrollIntoView.call(this, options);
  };

  function ensureCloseButton(){
    const box = modal();
    if(!box || document.getElementById('jc38CatalogClose')) return;
    const b = document.createElement('button');
    b.id = 'jc38CatalogClose';
    b.type = 'button';
    b.title = 'Закрыть каталог';
    b.setAttribute('aria-label', 'Закрыть каталог');
    b.textContent = '×';
    b.addEventListener('click', function(e){
      e.preventDefault();
      e.stopPropagation();
      closeCatalog();
    });
    box.insertBefore(b, box.firstChild);
  }

  function normalizeCatalog(){
    const open = isOpen();
    const l = layer();
    const box = modal();

    document.documentElement.classList.toggle('jc38-catalog-open', open);
    document.body.classList.toggle('jc38-catalog-open', open);
    document.body.classList.add('jc38-clean-scroll');

    // Нейтрализуем Stage35/37 body lock и старый guard. CSS тоже страхует это.
    document.documentElement.classList.remove('jc37-modal-lock');
    document.body.classList.remove('jc37-modal-lock', 'jc35-scroll-guard');
    document.body.style.position = '';
    document.body.style.top = '';
    document.body.style.left = '';
    document.body.style.width = '';

    if(l){
      l.setAttribute('role', 'dialog');
      l.setAttribute('aria-modal', open ? 'true' : 'false');
      l.setAttribute('aria-hidden', open ? 'false' : 'true');
    }

    if(open){
      // Если каталог открылся как побочный эффект клика по плееру — сразу закрываем.
      if(Date.now() < playerClickUntil){
        closeCatalog();
        return;
      }

      ensureCloseButton();
      const input = document.getElementById('jcCatalogUrl');
      if(input && document.activeElement === input) input.blur();

      if(box){
        box.style.overscrollBehavior = 'contain';
        box.style.webkitOverflowScrolling = 'touch';
      }
    }

    lastOpenState = open;
  }

  // Play/iframe не должен открывать каталог и не должен отправлять страницу к input.
  document.addEventListener('pointerdown', function(e){
    if(e.target?.closest?.(PLAYER_SELECTOR)){
      playerGuardY = window.scrollY || document.documentElement.scrollTop || 0;
      playerGuardUntil = Date.now() + 1200;
      playerClickUntil = Date.now() + 900;
      document.body.classList.remove('jc35-scroll-guard');
    }
  }, true);

  document.addEventListener('click', function(e){
    if(e.target?.closest?.(PLAYER_SELECTOR)){
      playerClickUntil = Date.now() + 700;
      document.body.classList.remove('jc35-scroll-guard');
    }
  }, true);

  // Минимальная защита от прыжка после Play: одно короткое окно, не вечный scroll loop.
  window.addEventListener('scroll', function(){
    if(isOpen()) return;
    if(Date.now() > playerGuardUntil) return;
    const y = window.scrollY || document.documentElement.scrollTop || 0;
    if(Math.abs(y - playerGuardY) > 80){
      requestAnimationFrame(() => setPageScroll(window.scrollX || 0, playerGuardY));
    }
  }, {passive:true});

  // Фон каталога закрывает, Escape закрывает, а скролл фона не уводит страницу.
  document.addEventListener('mousedown', function(e){
    const l = layer();
    if(l && l.classList.contains('open') && e.target === l){
      e.preventDefault();
      closeCatalog();
    }
  }, true);

  document.addEventListener('keydown', function(e){
    if(e.key === 'Escape' && isOpen()){
      e.preventDefault();
      closeCatalog();
    }
  }, true);

  document.addEventListener('wheel', function(e){
    if(!isOpen()) return;
    if(inCatalog(e.target)) return;
    e.preventDefault();
  }, {capture:true, passive:false});

  let touchY = 0;
  document.addEventListener('touchstart', function(e){
    if(!isOpen()) return;
    touchY = e.touches?.[0]?.clientY || 0;
  }, {capture:true, passive:true});

  document.addEventListener('touchmove', function(e){
    if(!isOpen()) return;
    if(inCatalog(e.target)) return;
    e.preventDefault();
  }, {capture:true, passive:false});

  function observeLayer(){
    const l = layer();
    if(!l || l.dataset.jc38Observed === '1') return;
    l.dataset.jc38Observed = '1';
    new MutationObserver(normalizeCatalog).observe(l, {attributes:true, attributeFilter:['class', 'style', 'aria-hidden']});
  }

  window.jc38CleanDebug = function(){
    const box = modal();
    return {
      build: BUILD,
      catalogOpen: isOpen(),
      lastOpenState,
      playerGuardMsLeft: Math.max(0, playerGuardUntil - Date.now()),
      playerClickMsLeft: Math.max(0, playerClickUntil - Date.now()),
      scrollY: window.scrollY,
      activeElement: document.activeElement?.id || document.activeElement?.tagName || '',
      bodyClass: document.body.className,
      bodyPosition: document.body.style.position || '',
      modalClass: String(box?.className || ''),
      modalScrollTop: box?.scrollTop || 0,
      modalScrollHeight: box?.scrollHeight || 0,
      modalClientHeight: box?.clientHeight || 0
    };
  };

  // Старое имя оставляем как alias, чтобы пользовательские команды не ломались.
  window.jcCatalogHardDebug = window.jc38CleanDebug;

  setInterval(function(){
    observeLayer();
    normalizeCatalog();
  }, 120);

  setTimeout(function(){
    observeLayer();
    normalizeCatalog();
    console.log('[JC38 clean scroll/focus] ready', window.jc38CleanDebug());
  }, 300);
})();
