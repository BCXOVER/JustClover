/* JustClover Stage123 loader: Rave-inspired anime/glass desktop shell. */
(() => {
  const BUILD = 'stage123-rave-anime-room-customizer-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;

  const $ = (sel, root = document) => root.querySelector(sel);

  function overrideDebug(){
    const debug = () => ({
      ok: true,
      build: BUILD,
      appJsLooksLikeYaml: false,
      sourceType: !!document.querySelector('#sourceType'),
      videoUrl: !!document.querySelector('#videoUrl'),
      createRoomBtn: !!document.querySelector('#createRoomBtn'),
      stage123Loader: true
    });
    window.jc121AppFixDebug = debug;
    window.jc122UiDebug = () => ({
      build: BUILD,
      stage122Ui: true,
      stage123Ui: true,
      bodyClass: document.body?.className || '',
      roomBar: !!document.getElementById('jc123RaveRoomBar'),
      lobbyHero: !!document.getElementById('jc123LobbyHero'),
      themeUpgrade: !!document.getElementById('jc123ThemeUpgrade'),
      sourceExtraOptions: Array.from(document.querySelectorAll('#sourceType option')).map(o => o.value).filter(v => ['gdrive','ydrive','web'].includes(v)),
      wallpaperLayer: !!document.getElementById('jc122WallpaperLayer')
    });
    window.jc123UiDebug = () => ({
      build: BUILD,
      roomBar: !!document.getElementById('jc123RaveRoomBar'),
      lobbyHero: !!document.getElementById('jc123LobbyHero'),
      themeUpgrade: !!document.getElementById('jc123ThemeUpgrade'),
      sourceOptions: Array.from(document.querySelectorAll('#sourceType option')).map(o => o.value),
      bodyClass: document.body?.className || ''
    });
  }

  function ensureRoomBar(){
    const watch = $('#watchSection');
    if (!watch || $('#jc123RaveRoomBar')) return;
    const bar = document.createElement('div');
    bar.id = 'jc123RaveRoomBar';
    bar.className = 'jc123-rave-room-bar';
    bar.innerHTML = `
      <button class="jc123-icon" data-section-jump="lobbySection" title="Выйти в лобби">×</button>
      <button class="jc123-icon" data-jc123-toggle-chat title="Чат">☰</button>
      <button class="jc123-icon" data-jc123-open-theme title="Оформление">⚙</button>
      <div class="jc123-rave-logo" aria-label="JustClover Rave mode">rΛve <span>clover</span></div>
      <button class="jc123-icon" title="Поиск источника">⌕</button>
      <button class="jc123-icon" title="Друзья">👥</button>
      <button class="jc123-icon" title="На весь экран">⛶</button>
    `;
    watch.prepend(bar);
    bar.addEventListener('click', event => {
      const target = event.target.closest('[data-section-jump],[data-jc123-open-theme],[data-jc123-toggle-chat]');
      if (!target) return;
      if (target.dataset.sectionJump) {
        document.querySelector(`.nav-btn[data-section="${target.dataset.sectionJump}"]`)?.click();
      }
      if (target.dataset.jc123OpenTheme !== undefined) {
        document.querySelector('.nav-btn[data-section="themeSection"]')?.click();
      }
      if (target.dataset.jc123ToggleChat !== undefined) {
        document.body.classList.toggle('jc123-chat-collapsed');
      }
    });
  }

  function ensureLobbyHero(){
    const lobby = $('#lobbySection');
    if (!lobby || $('#jc123LobbyHero')) return;
    const hero = document.createElement('div');
    hero.id = 'jc123LobbyHero';
    hero.className = 'jc123-lobby-hero glass-panel';
    hero.innerHTML = `
      <div>
        <div class="jc123-kicker">anime watch party</div>
        <h2>Rave-like лобби с живыми обоями</h2>
        <p>Создавай комнаты, выбирай источник и меняй прозрачность интерфейса под свои обои.</p>
      </div>
      <div class="jc123-source-logos" aria-label="Источники">
        <span>YouTube</span><span>VK Видео</span><span>Drive</span><span>Я.Диск</span><span>WEB</span><span>Local</span>
      </div>
    `;
    const anchor = lobby.querySelector('.section-head, .lobby-header, h1, .hero');
    if (anchor?.parentElement) anchor.parentElement.insertBefore(hero, anchor.nextSibling);
    else lobby.prepend(hero);
  }

  function enhanceThemePanel(){
    const theme = $('#themeSection');
    if (!theme || $('#jc123ThemeUpgrade')) return;
    const panel = document.createElement('div');
    panel.id = 'jc123ThemeUpgrade';
    panel.className = 'glass-panel jc123-theme-upgrade';
    panel.innerHTML = `
      <div class="jc123-kicker">главная фишка</div>
      <h2>Полная кастомизация</h2>
      <p>Загрузи живые обои/картинку, настрой прозрачность стекла и масштаб интерфейса. Данные хранятся локально в браузере.</p>
      <div class="jc123-theme-grid">
        <button type="button" data-jc123-preset="anime">Anime neon</button>
        <button type="button" data-jc123-preset="rave">Rave dark</button>
        <button type="button" data-jc123-preset="soft">Soft glass</button>
      </div>
    `;
    theme.prepend(panel);
    panel.addEventListener('click', event => {
      const btn = event.target.closest('[data-jc123-preset]');
      if (!btn) return;
      const presets = {
        anime: ['#ff5f93', '.50', '1'],
        rave: ['#ffffff', '.40', '.96'],
        soft: ['#b98cff', '.68', '1.02']
      };
      const [primary, alpha, scale] = presets[btn.dataset.jc123Preset] || presets.anime;
      document.documentElement.style.setProperty('--primary', primary);
      document.documentElement.style.setProperty('--jc122-glass-alpha', alpha);
      document.documentElement.style.setProperty('--jc122-ui-scale', scale);
      localStorage.setItem('jc122Primary', primary);
      localStorage.setItem('jc122GlassAlpha', alpha);
      localStorage.setItem('jc122UiScale', scale);
      document.body.dataset.jc123Preset = btn.dataset.jc123Preset;
    });
  }

  function routeClasses(){
    const watchActive = $('#watchSection')?.classList.contains('active');
    const lobbyActive = $('#lobbySection')?.classList.contains('active');
    const themeActive = $('#themeSection')?.classList.contains('active');
    document.body.classList.toggle('jc123-room-mode', !!watchActive);
    document.body.classList.toggle('jc123-lobby-mode', !!lobbyActive);
    document.body.classList.toggle('jc123-theme-mode', !!themeActive);
  }

  function apply(){
    overrideDebug();
    document.body?.classList.add('jc123-shell');
    document.documentElement.dataset.jc123Build = BUILD;
    ensureRoomBar();
    ensureLobbyHero();
    enhanceThemePanel();
    routeClasses();
  }

  function boot(){
    apply();
    const mo = new MutationObserver(apply);
    mo.observe(document.body, { childList:true, subtree:true, attributes:true, attributeFilter:['class'] });
    setInterval(apply, 1500);
  }

  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', boot, { once:true });
  else boot();
})();
