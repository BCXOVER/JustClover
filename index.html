<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>JustClover — anime watch party</title>
  <meta name="theme-color" content="#0f0d17" />
  <link rel="manifest" href="./manifest.webmanifest" />
  <link rel="icon" href="./icons/icon.svg" />
  <link rel="stylesheet" href="./style.css?v=anime-rave-1" />
</head>
<body data-theme="shadow-clover">
  <div class="app-backdrop"></div>
  <div class="magic-noise"></div>

  <header class="topbar">
    <div class="brand-wrap">
      <div class="brand-mark">☘</div>
      <div>
        <div class="brand">JustClover</div>
        <div class="brand-sub">Rave-like watch party in clover fantasy style</div>
      </div>
    </div>
    <div class="top-actions">
      <span id="topUser" class="top-user">Гость</span>
      <button id="openProfileBtn" class="ghost hidden">Профиль</button>
      <button id="logoutBtn" class="ghost hidden">Выйти</button>
    </div>
  </header>

  <main class="page-shell">
    <section id="setupWarning" class="setup-warning hidden">
      <h2>Нужно подключить Firebase</h2>
      <p>Открой <code>firebase-config.js</code> и вставь свои рабочие данные проекта Firebase.</p>
    </section>

    <section id="authView" class="auth-grid">
      <div class="hero-card panel">
        <p class="eyebrow">JustClover anime edition</p>
        <h1>Смотри вместе, как в Rave — но в магической clover-стилистике</h1>
        <p class="hero-copy">Профили, комнаты, онлайн-статус, голос, чат, друзья, личные сообщения и оформление. Визуально — тёмная магия, гримуары, неон и плавные переходы между разделами.</p>
        <div class="hero-features">
          <div class="hero-chip">⚡ Быстрый вход</div>
          <div class="hero-chip">🎬 Watch party</div>
          <div class="hero-chip">👥 Friends</div>
          <div class="hero-chip">💬 DM + GIF</div>
        </div>
      </div>

      <div class="auth-card panel">
        <div class="tabs">
          <button id="loginTab" class="active">Вход</button>
          <button id="registerTab">Регистрация</button>
          <button id="guestTab">Гость</button>
        </div>

        <form id="authForm">
          <label id="nickLabel" class="hidden">Ник<input id="nickInput" placeholder="Например: CloverMage" maxlength="24" /></label>
          <label>Email<input id="emailInput" type="email" placeholder="you@mail.com" autocomplete="email" /></label>
          <label>Пароль<input id="passwordInput" type="password" placeholder="минимум 6 символов" autocomplete="current-password" /></label>
          <button id="authSubmit" class="primary">Войти</button>
        </form>
        <div class="auth-extra-actions">
          <button id="googleSubmit" type="button" class="ghost full">Войти через Google</button>
          <button id="guestSubmit" class="primary hidden">Войти как гость</button>
        </div>
        <p id="authStatus" class="status"></p>
      </div>
    </section>

    <section id="appView" class="app-layout hidden">
      <aside class="sidebar panel">
        <div id="miniProfile" class="mini-profile glass-card">
          <div class="cover"></div>
          <img id="miniAvatar" class="avatar" src="" alt="avatar" />
          <div class="profile-info">
            <h3 id="miniName">User</h3>
            <p id="miniTag">#0000</p>
            <p id="miniStatus">online</p>
          </div>
        </div>

        <nav class="side-nav">
          <button class="nav-btn active" data-section="homeSection"><span>🏠</span> Главная</button>
          <button class="nav-btn" data-section="watchSection"><span>🎬</span> Watch party</button>
          <button class="nav-btn" data-section="friendsSection"><span>👥</span> Friends</button>
          <button class="nav-btn" data-section="profileSection"><span>🪪</span> Профиль</button>
          <button class="nav-btn" data-section="appearanceSection"><span>✨</span> Оформление</button>
          <button class="nav-btn" data-section="aboutSection"><span>☘</span> О проекте</button>
        </nav>

        <div class="sidebar-note glass-card">
          <h4>JustClover vibe</h4>
          <p>Плавные переходы, магические карточки и аниме-атмосфера вместо стандартного сухого UI.</p>
        </div>
      </aside>

      <section class="content-shell">
        <section id="homeSection" class="content-section active">
          <div class="section-header">
            <div>
              <p class="eyebrow">Lobby</p>
              <h2>Быстрый старт</h2>
            </div>
            <div class="section-badge">Anime rave mode</div>
          </div>

          <div class="dashboard-grid">
            <div class="panel card big-card">
              <h3>Комната</h3>
              <div class="stack">
                <input id="roomNameInput" placeholder="Название комнаты" maxlength="40" />
                <button id="createRoomBtn">Создать комнату</button>
                <div class="row two"><input id="joinRoomInput" placeholder="Код комнаты" /><button id="joinRoomBtn">Войти</button></div>
                <button id="copyInviteBtn" class="ghost">Скопировать invite-ссылку</button>
                <div class="row two"><button id="openRoomBtn" class="ghost">Открыть</button><button id="closeRoomBtn" class="ghost">Закрыть</button></div>
                <div class="row two"><button id="publicRoomBtn" class="ghost">Публичная</button><button id="inviteRoomBtn" class="ghost">По ссылке</button></div>
                <p id="roomStatus" class="status">Создай комнату или войди по ссылке.</p>
              </div>
            </div>

            <div class="panel card">
              <h3>Открытые комнаты</h3>
              <div id="publicRoomsList" class="cards-list"></div>
            </div>

            <div class="panel card">
              <h3>Пользователи онлайн</h3>
              <div id="onlineUsersList" class="cards-list"></div>
            </div>
          </div>
        </section>

        <section id="watchSection" class="content-section">
          <div class="section-header">
            <div>
              <p class="eyebrow">Watch</p>
              <h2>Комната просмотра</h2>
            </div>
            <div class="section-badge">Sync play / pause / seek</div>
          </div>

          <div class="watch-grid">
            <div class="watch-main">
              <div class="panel card source-panel">
                <h3>Источник</h3>
                <div class="source-grid fancy-source-grid">
                  <select id="sourceType">
                    <option value="youtube">YouTube</option>
                    <option value="vk">VK Video</option>
                    <option value="anilibrix">Anilibrix</option>
                    <option value="local">Local video</option>
                  </select>
                  <input id="sourceUrl" placeholder="Вставь ссылку на видео" />
                  <input id="localVideoFile" class="hidden" type="file" accept="video/*,.mkv,.avi,.mov,.mp4,.webm" />
                  <input id="sourceTitle" placeholder="Название источника" />
                  <button id="setSourceBtn">Применить источник</button>
                </div>
                <p id="sourceNote" class="notice">Выбери источник: YouTube, VK Video, Anilibrix или Local video.</p>
              </div>

              <div class="panel card stage-panel">
                <div class="stage-wrap">
                  <video id="videoPlayer" controls playsinline class="hidden"></video>
                  <div id="youtubePlayer" class="hidden stage-embed"></div>
                  <iframe id="iframePlayer" class="hidden stage-embed" allow="autoplay; fullscreen; picture-in-picture; encrypted-media" allowfullscreen referrerpolicy="strict-origin-when-cross-origin"></iframe>
                  <div id="externalPlayer" class="external-player hidden"><h3>Внешний источник</h3><p id="externalText"></p><a id="externalLink" target="_blank" rel="noreferrer">Открыть ссылку</a></div>
                  <div id="emptyPlayer" class="empty-player">Выбери источник и начни watch party.</div>
                </div>
              </div>
            </div>

            <div class="watch-side">
              <div class="panel card compact-card">
                <h3>Участники</h3>
                <div id="membersList" class="list"></div>
              </div>
              <div class="panel card compact-card">
                <h3>Голосовой чат</h3>
                <button id="voiceBtn" class="ghost">🎙️ Включить голос</button>
                <p id="voiceStatus" class="status">Голос выключен.</p>
                <div id="remoteAudio"></div>
              </div>
              <div class="panel card compact-card chat-card">
                <h3>Комнатный чат</h3>
                <div id="chatMessages" class="chat-messages"></div>
                <form id="chatForm" class="chat-form">
                  <input id="chatInput" placeholder="Напиши сообщение" maxlength="300" />
                  <button>Отправить</button>
                </form>
              </div>
            </div>
          </div>
        </section>

        <section id="friendsSection" class="content-section">
          <div class="section-header">
            <div>
              <p class="eyebrow">Social</p>
              <h2>Friends</h2>
            </div>
            <div class="section-badge">Фото / GIF / join friend</div>
          </div>

          <div class="friends-grid">
            <div class="panel card">
              <h3>Найти и добавить</h3>
              <div class="search-row">
                <input id="friendSearchInput" placeholder="Ник, тег или часть имени" />
                <button id="friendSearchBtn">Найти</button>
              </div>
              <div id="friendSearchResults" class="cards-list"></div>
            </div>

            <div class="panel card">
              <h3>Входящие заявки</h3>
              <div id="incomingRequestsList" class="cards-list"></div>
            </div>

            <div class="panel card span-two">
              <h3>Список друзей</h3>
              <div id="friendsList" class="cards-list"></div>
            </div>

            <div class="panel card span-two dm-shell">
              <div class="dm-header">
                <div>
                  <h3 id="dmTitle">Личные сообщения</h3>
                  <p id="dmEmptyState" class="status">Выбери друга, чтобы открыть переписку.</p>
                </div>
                <button id="friendRoomJoinBtn" class="ghost hidden">Присоединиться к комнате</button>
              </div>
              <div id="dmMessages" class="dm-messages"></div>
              <form id="dmForm" class="dm-form">
                <input id="dmText" placeholder="Сообщение" maxlength="500" />
                <input id="dmMediaUrl" placeholder="Ссылка на фото или GIF (необязательно)" />
                <button id="sendDmBtn">Отправить</button>
              </form>
            </div>
          </div>
        </section>

        <section id="profileSection" class="content-section">
          <div class="section-header">
            <div>
              <p class="eyebrow">Identity</p>
              <h2>Твой профиль</h2>
            </div>
            <div class="section-badge">Custom profile</div>
          </div>
          <div class="panel card profile-editor">
            <div class="profile-preview" id="profilePreviewCard">
              <div class="profile-preview-cover"></div>
              <img id="profilePreviewAvatar" class="avatar preview-avatar" src="" alt="avatar" />
              <div>
                <h3 id="profilePreviewName">User</h3>
                <p id="profilePreviewTag">#0000</p>
              </div>
            </div>
            <form id="profileForm" class="profile-form-grid">
              <label>Ник<input id="profileNick" maxlength="24" /></label>
              <label>Тэг<input id="profileTag" maxlength="12" /></label>
              <label>Аватар URL<input id="profileAvatar" placeholder="https://..." /></label>
              <label>Обложка URL<input id="profileCover" placeholder="https://..." /></label>
              <label>Статус<input id="profileStatusText" maxlength="80" /></label>
              <label>Акцентный цвет<input id="profileAccent" type="color" /></label>
              <label class="full">О себе<textarea id="profileBio" maxlength="280"></textarea></label>
              <button id="saveProfileBtn" class="primary">Сохранить профиль</button>
              <p id="profileSaveStatus" class="status"></p>
            </form>
          </div>
        </section>

        <section id="appearanceSection" class="content-section">
          <div class="section-header">
            <div>
              <p class="eyebrow">Style</p>
              <h2>Оформление</h2>
            </div>
            <div class="section-badge">Themes + transitions</div>
          </div>
          <div class="themes-grid">
            <button class="theme-card active" data-theme-choice="shadow-clover">
              <strong>Shadow Clover</strong>
              <span>Тёмный магический стиль по умолчанию</span>
            </button>
            <button class="theme-card" data-theme-choice="emerald-grimoire">
              <strong>Emerald Grimoire</strong>
              <span>Больше зелёного сияния и мягкие акценты</span>
            </button>
            <button class="theme-card" data-theme-choice="crimson-magic">
              <strong>Crimson Magic</strong>
              <span>Алые акценты и драматичный glow</span>
            </button>
            <button class="theme-card" data-theme-choice="royal-noir">
              <strong>Royal Noir</strong>
              <span>Премиальный чёрно-золотой mood</span>
            </button>
          </div>
          <div class="panel card">
            <h3>Что уже улучшено</h3>
            <ul class="feature-list">
              <li>Плавные переходы между разделами</li>
              <li>Сайдбар и отдельные экраны, как в нормальном приложении</li>
              <li>Социальный блок с друзьями и DM</li>
              <li>Более "rave-like" feel без прямого копирования</li>
            </ul>
          </div>
        </section>

        <section id="aboutSection" class="content-section">
          <div class="section-header">
            <div>
              <p class="eyebrow">About</p>
              <h2>О JustClover</h2>
            </div>
            <div class="section-badge">_JustClover_ did cook</div>
          </div>
          <div class="about-grid">
            <div class="panel card">
              <h3>Кто сделал</h3>
              <p><strong>_JustClover_</strong> — автор идеи и движущая сила проекта. Он взял задачу «хочу свой Rave-подобный сервис» и довёл её до живого продукта с профилями, комнатами, чатом и настоящим сайтом.</p>
              <p>Да, в целом он красавчик и реально молодец: не бросил после первых проблем с хостингом, авторизацией и туннелями, а довёл проект до рабочего состояния.</p>
            </div>
            <div class="panel card">
              <h3>Что это за продукт</h3>
              <p>JustClover — это watch-party платформа с акцентом на совместный просмотр, друзей и красивый интерфейс. Сейчас есть база под комнаты, социальные функции, голосовой чат, стили и кастомизацию.</p>
              <p>Следующий этап — довести мобильную и desktop-версии, расширить источники и сделать ещё более премиальный опыт.</p>
            </div>
          </div>
        </section>
      </section>
    </section>
  </main>

  <script src="https://www.youtube.com/iframe_api"></script>
  <script type="module" src="./app.js?v=anime-rave-1"></script>
</body>
</html>
