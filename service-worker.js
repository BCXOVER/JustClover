<!DOCTYPE html>
<html lang="ru">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
  <title>JustClover</title>
  <meta name="theme-color" content="#080912" />
  <link rel="manifest" href="./manifest.webmanifest" />
  <link rel="icon" href="./icons/icon.svg" />
  <link rel="stylesheet" href="./style.css?v=stage118-gif-gallery-no-api-stable-20260503-1" />

  <script>
    window.JUSTCLOVER_BUILD = "stage118-gif-gallery-no-api-stable-20260503-1";
    window.JUSTCLOVER_STAGE_NOTE = "Stage114 emergency: static files, no CDN index loader, no room wallpaper experiments.";
    (function jc114EmergencyCleanup(){
      try {
        var deadPrefixes = [
          'jc90','jc91','jc92','jc93','jc94','jc95','jc96','jc97','jc98','jc99',
          'jc100','jc101','jc102','jc103','jc104','jc105','jc106','jc107','jc108','jc109','jc110','jc111','jc112','jc113',
          'jc-room-wallpaper','jc-chat-wallpaper','jc94-room-wallpaper','jc95-room-local','jc103'
        ];
        for (var i = localStorage.length - 1; i >= 0; i--) {
          var k = localStorage.key(i) || '';
          if (deadPrefixes.some(function(p){ return k.indexOf(p) === 0 || k.indexOf(p) >= 0; })) {
            localStorage.removeItem(k);
          }
        }
      } catch (_) {}
      try {
        if ('serviceWorker' in navigator) {
          navigator.serviceWorker.getRegistrations().then(function(regs){
            regs.forEach(function(r){ r.unregister(); });
          });
        }
        if ('caches' in window) {
          caches.keys().then(function(keys){ keys.forEach(function(k){ caches.delete(k); }); });
        }
      } catch (_) {}
    })();
  </script>

</head>
<body>
  <div class="bg" aria-hidden="true">
    <div class="aurora aurora-a"></div>
    <div class="aurora aurora-b"></div>
    <div class="aurora aurora-c"></div>
    <div class="grain"></div>
    <div class="grid-bg"></div>
  </div>

  <header class="topbar">
    <div class="brand-block" aria-label="JUST CLOVER">
      <div class="brand-mark">☘</div>
      <div>
        <div class="brand-title"><span>JUST</span><b>☘</b><span>CLOVER</span></div>
        <div class="brand-caption">watch together • chat • voice</div>
      </div>
    </div>
    <div class="top-actions">
      <span id="topUser" class="user-pill">Гость</span>
      <button id="openProfileBtn" class="btn soft hidden" type="button">Профиль</button>
      <button id="logoutBtn" class="btn soft hidden" type="button">Выйти</button>
    </div>
  </header>

  <main class="shell">
    <section id="setupWarning" class="notice-card panel hidden">
      <h2>Firebase не настроен</h2>
      <p>Проверь <code>firebase-config.js</code>. Без него авторизация, комнаты и чат не запустятся.</p>
    </section>

    <section id="authView" class="auth-screen">
      <div class="hero panel">
        <span class="kicker">Stage114 clean active layout</span>
        <h1>Смотри видео вместе — без старого перегруженного режима.</h1>
        <p>Вход оставлен обычным: выбери способ авторизации вручную. Автологина гостем и прямого anonymous-login при загрузке здесь нет.</p>
        <div class="hero-row">
          <span>YouTube</span>
          <span>VK</span>
          <span>Local</span>
          <span>Chat</span>
          <span>Mic</span>
        </div>
      </div>

      <div class="auth-card panel">
        <div class="segmented">
          <button id="loginTab" class="active" type="button">Вход</button>
          <button id="registerTab" type="button">Регистрация</button>
          <button id="guestTab" type="button">Гость</button>
        </div>

        <form id="authForm" class="form-stack">
          <label id="nickLabel" class="hidden">Ник
            <input id="nickInput" maxlength="24" placeholder="Например: Clover" />
          </label>
          <label>Email
            <input id="emailInput" type="email" autocomplete="email" placeholder="you@mail.com" />
          </label>
          <label>Пароль
            <input id="passwordInput" type="password" autocomplete="current-password" placeholder="минимум 6 символов" />
          </label>
          <button id="authSubmit" class="btn primary" type="submit">Войти</button>
        </form>

        <div class="auth-actions">
          <button id="googleSubmit" class="btn google" type="button">Войти через Google</button>
          <button id="guestSubmit" class="btn primary hidden" type="button">Войти как гость</button>
        </div>
        <p id="authStatus" class="status"></p>
      </div>
    </section>

    <section id="appView" class="app hidden">
      <aside class="rail panel" aria-label="Навигация">
        <div id="miniProfile" class="mini-card">
          <div class="cover"></div>
          <img id="miniAvatar" class="avatar" src="" alt="avatar" />
          <div class="mini-meta">
            <strong id="miniName">User</strong>
            <span id="miniTag">#0000</span>
            <small id="miniStatus">Готов смотреть вместе</small>
          </div>
        </div>

        <nav class="nav">
          <button class="nav-btn active" data-section="homeSection" type="button"><span>＋</span> Лобби</button>
          <button class="nav-btn" data-section="watchSection" type="button"><span>▶</span> Комната</button>
          <button class="nav-btn" data-section="profileSection" type="button"><span>◇</span> Профиль</button>
          <button class="nav-btn" data-section="aboutSection" type="button"><span>i</span> Stage114</button>
        </nav>

        <div class="rail-footer panel-soft">
          <div class="rail-note-title">Clean Active Room</div>
          <p class="status">Когда комната открыта, левый rail скрывается, а основным интерфейсом становится Rave-like сетка: плеер + чат.</p>
        </div>
      </aside>

      <section class="content">
        <section id="homeSection" class="section active">
          <div class="section-head">
            <div>
              <span class="kicker">Лобби</span>
              <h2>Создай комнату или зайди по invite</h2>
            </div>
            <p>После входа в комнату включается единый активный режим просмотра.</p>
          </div>

          <div class="dashboard-grid">
            <div class="card panel dashboard-main-card">
              <div class="dashboard-card-head">
                <div>
                  <h3>Комната</h3>
                  <p class="status">Создай свою watch-party комнату или вставь код существующей.</p>
                </div>
                <div class="pill-status">ROOM</div>
              </div>

              <div class="form-stack room-stack">
                <input id="roomNameInput" maxlength="40" placeholder="Название комнаты" />
                <button id="createRoomBtn" class="btn primary" type="button">Создать комнату</button>
                <div class="split"><input id="joinRoomInput" placeholder="Код комнаты" /><button id="joinRoomBtn" class="btn soft" type="button">Войти</button></div>
                <button id="copyInviteBtn" class="btn soft" type="button">Скопировать invite-ссылку</button>
                <div class="split"><button id="openRoomBtn" class="btn soft" type="button">Открыть</button><button id="closeRoomBtn" class="btn soft" type="button">Закрыть</button></div>
                <div class="split"><button id="publicRoomBtn" class="btn soft" type="button">Публичная</button><button id="inviteRoomBtn" class="btn soft" type="button">По ссылке</button></div>
                <p id="roomStatus" class="status">Создай комнату или войди по invite-ссылке.</p>
              </div>
            </div>

            <div class="card panel">
              <div class="dashboard-card-head compact-head">
                <h3>Открытые комнаты</h3>
                <span class="soft-badge">Public</span>
              </div>
              <div id="publicRoomsList" class="list"></div>
            </div>

            <div class="card panel">
              <div class="dashboard-card-head compact-head">
                <h3>Пользователи онлайн</h3>
                <span class="soft-badge">Online</span>
              </div>
              <div id="onlineUsersList" class="list"></div>
            </div>
          </div>
        </section>

        <section id="watchSection" class="section">
          <div class="active-room-shell">
            <section class="room-player-column" aria-label="Плеер">
              <div class="room-topline">
                <div class="room-title-wrap">
                  <span class="kicker">ACTIVE VIEW</span>
                  <h2 id="activeRoomTitle">Комната просмотра</h2>
                </div>
                <div class="room-status-line">
                  <span id="activeRoomMeta">Источник не выбран</span>
                  <button id="leaveRoomBtn" class="btn soft" type="button">В лобби</button>
                </div>
              </div>

              <div class="player-card active-player-card">
                <div id="playerFrame" class="player-frame">
                  <video id="videoPlayer" class="hidden" controls playsinline></video>
                  <div id="youtubePlayer" class="hidden embed-box"></div>
                  <iframe id="iframePlayer" class="hidden embed-box" title="Embedded video" allow="autoplay; fullscreen; encrypted-media; picture-in-picture" allowfullscreen referrerpolicy="strict-origin-when-cross-origin"></iframe>
                  <div id="externalPlayer" class="external-player hidden">
                    <h3>Внешний источник</h3>
                    <p id="externalText"></p>
                    <a id="externalLink" class="btn primary" target="_blank" rel="noreferrer">Открыть</a>
                  </div>
                  <div id="emptyPlayer" class="empty-player">Выбери источник, чтобы начать просмотр.</div>

                  <div class="player-bottom-controls" aria-label="Управление комнатой">
                    <button id="voiceBtn" class="control-btn" type="button" title="Микрофон" aria-label="Микрофон">🎙</button>
                    <button id="chatToggleBtn" class="control-btn" type="button" title="Чат" aria-label="Чат">💬</button>
                    <button id="catalogToggleBtn" class="control-btn" type="button" title="Источники" aria-label="Источники">▦</button>
                    <button id="fullscreenBtn" class="control-btn" type="button" title="Fullscreen" aria-label="Fullscreen">⛶</button>
                  </div>
                </div>
              </div>

              <aside id="sourcePanel" class="source-panel source-panel-embedded panel" aria-label="Источники">
                <div class="source-panel-head">
                  <div>
                    <span class="kicker">Sources</span>
                    <h3>Источник комнаты</h3>
                  </div>
                  <button id="closeSourcePanelBtn" class="mini-icon-btn" type="button" aria-label="Закрыть источники">×</button>
                </div>
                <div class="source-tabs" aria-label="Быстрый выбор источника">
                  <button class="source-pill active" data-source-choice="youtube" type="button">YouTube</button>
                  <button class="source-pill" data-source-choice="vk" type="button">VK Video</button>
                  <button class="source-pill" data-source-choice="local" type="button">Local</button>
                </div>
                <div class="source-grid compact-source-grid">
                  <select id="sourceType">
                    <option value="youtube">YouTube</option>
                    <option value="vk">VK Video</option>
                    <option value="local">Local video</option>
                  </select>
                  <input id="sourceUrl" placeholder="Вставь ссылку YouTube или VK" />
                  <input id="localVideoFile" class="hidden" type="file" accept="video/*,.mkv,.avi,.mov,.mp4,.webm" />
                  <input id="sourceTitle" placeholder="Название источника" />
                  <button id="setSourceBtn" class="btn primary" type="button">Применить</button>
                </div>
                <p id="sourceNote" class="status">Панель остаётся живой в DOM и не ломает обработчики источников.</p>
              </aside>
            </section>

            <aside id="roomChatColumn" class="room-chat-column" aria-label="Чат комнаты">
              <div class="chat-card panel">
                <div class="chat-head">
                  <div>
                    <span class="kicker">Live chat</span>
                    <h3>Чат комнаты</h3>
                  </div>
                  <span id="memberCount" class="soft-badge">0 online</span>
                </div>
                <div id="membersList" class="members-inline" aria-label="Участники"></div>
                <div id="chatMessages" class="messages"></div>
                <div class="composer-tools" aria-label="Быстрые реакции">
                  <button type="button" data-emoji="☘">☘</button>
                  <button type="button" data-emoji="😂">😂</button>
                  <button type="button" data-emoji="❤️">❤️</button>
                  <button type="button" data-emoji="🔥">🔥</button>
                  <button type="button" data-emoji="👀">👀</button>
                  <button type="button" class="gif-tool" data-jc116-gif>GIF</button>
                </div>
                <form id="chatForm" class="message-form">
                  <input id="chatInput" maxlength="300" placeholder="Написать сообщение..." />
                  <button class="btn primary" type="submit">Отправить</button>
                </form>
              </div>
            </aside>
          </div>
          <p id="voiceStatus" class="voice-status status">Голос выключен.</p>
          <div id="remoteAudio" class="hidden"></div>
        </section>

        <section id="profileSection" class="section">
          <div class="section-head">
            <div>
              <span class="kicker">Profile</span>
              <h2>Профиль</h2>
            </div>
            <p>Профиль оставлен отдельным, но не вмешивается в активный просмотр.</p>
          </div>
          <div class="profile-grid">
            <div id="profilePreviewCard" class="profile-preview panel">
              <div class="profile-preview-cover"></div>
              <img id="profilePreviewAvatar" class="avatar big" src="" alt="avatar" />
              <h3 id="profilePreviewName">User</h3>
              <p id="profilePreviewTag" class="status">#0000</p>
            </div>
            <form class="card panel profile-form">
              <label>Ник<input id="profileNick" maxlength="24" /></label>
              <label>Тег<input id="profileTag" maxlength="12" /></label>
              <label>Аватар URL<input id="profileAvatar" placeholder="https://..." /></label>
              <label>Обложка URL<input id="profileCover" placeholder="https://..." /></label>
              <label>Статус<input id="profileStatusText" maxlength="80" /></label>
              <label>Цвет<input id="profileAccent" type="color" /></label>
              <label class="full">О себе<textarea id="profileBio" maxlength="280"></textarea></label>
              <button id="saveProfileBtn" class="btn primary" type="button">Сохранить</button>
              <p id="profileSaveStatus" class="status"></p>
            </form>
          </div>
        </section>

        <section id="aboutSection" class="section">
          <div class="section-head">
            <div>
              <span class="kicker">Stage114</span>
              <h2>Clean Active Room Layout</h2>
            </div>
            <p>Не продолжай Stage74 как базу, начни от Stage62 или от чистого base commit и сделай Stage114 clean active layout.</p>
          </div>
          <div class="about-grid">
            <div class="card panel">
              <h3>Что изменено</h3>
              <p>Активный просмотр стал главным режимом комнаты: большой плеер слева, живой чат справа, нижняя панель управления поверх плеера.</p>
            </div>
            <div class="card panel">
              <h3>Чего нет</h3>
              <p>Нет auto guest login, нет appendChild переноса чата, нет MutationObserver по document и нет постоянных интервалов для подгонки геометрии.</p>
            </div>
          </div>
        </section>
      </section>
    </section>
  </main>

  <script src="https://www.youtube.com/iframe_api"></script>
  <script type="module" src="./app.js?v=stage118-gif-gallery-no-api-stable-20260503-1"></script>
</body>
</html>
