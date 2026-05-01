/* =========================================================
   JustClover Profile + Themes + Catalog + Android Hotfix
   Version: profilethemes-20260501-8

   Подключить ПОСЛЕ app.js:
   <script type="module" src="./jc-profilethemes-hotfix.js?v=profilethemes-20260501-8"></script>
   ========================================================= */

const JC_HOTFIX_VERSION = 'profilethemes-20260501-8';
console.log('JustClover profile/themes hotfix loaded:', JC_HOTFIX_VERSION);

const $ = id => document.getElementById(id);

const THEME_PACK = [
  ['anime','Anime','Neon sakura room'],
  ['sakura','Sakura','Розовый вечер'],
  ['winter','Winter','Снег и голубой glow'],
  ['spring','Spring','Clover garden'],
  ['summer','Summer','Тёплый sunset'],
  ['autumn','Autumn','Оранжевый уют'],
  ['cyber','Cyber','Digital city'],
  ['midnight','Midnight','Ночной anime']
];

const COLOR_PRESETS = [
  '#6d5dfc','#ff415f','#22c55e','#38bdf8','#f59e0b','#fb7185','#a855f7','#14b8a6','#ef4444','#eab308'
];

function waitFor(check, cb, timeout = 12000) {
  const start = Date.now();
  const timer = setInterval(() => {
    if (check()) {
      clearInterval(timer);
      cb();
    } else if (Date.now() - start > timeout) {
      clearInterval(timer);
    }
  }, 120);
}

function safeDispatchInput(el) {
  if (!el) return;
  el.dispatchEvent(new Event('input', { bubbles: true }));
  el.dispatchEvent(new Event('change', { bubbles: true }));
}

function setTheme(theme) {
  document.body.dataset.theme = theme;
  localStorage.setItem('jc-theme', theme);
  document.querySelectorAll('.theme-card').forEach(card => {
    card.classList.toggle('active', card.dataset.themeChoice === theme);
  });
}

function hexToRgb(hex) {
  const clean = String(hex || '').replace('#','').trim();
  if (!/^[0-9a-f]{6}$/i.test(clean)) return [109, 93, 252];
  return [
    parseInt(clean.slice(0,2),16),
    parseInt(clean.slice(2,4),16),
    parseInt(clean.slice(4,6),16)
  ];
}

function shiftColor(hex, amount = 28) {
  const [r,g,b] = hexToRgb(hex);
  const clamp = n => Math.max(0, Math.min(255, n));
  return '#' + [clamp(r + amount), clamp(g + amount), clamp(b + amount)]
    .map(v => v.toString(16).padStart(2,'0')).join('');
}

function applyAccent(hex) {
  const color = /^#[0-9a-f]{6}$/i.test(hex || '') ? hex : '#6d5dfc';
  document.documentElement.style.setProperty('--primary', color);
  document.documentElement.style.setProperty('--primary2', shiftColor(color, 34));
  document.documentElement.style.setProperty('--jc-accent', color);
  document.documentElement.style.setProperty('--jc-accent-2', shiftColor(color, 34));
}

function fileToDataUrl(file, maxMb = 2.5) {
  return new Promise((resolve, reject) => {
    if (!file) return reject(new Error('Файл не выбран.'));
    const mb = file.size / 1024 / 1024;
    if (mb > maxMb) {
      reject(new Error(`Файл слишком большой: ${mb.toFixed(1)} MB. Для Firebase лучше до ${maxMb} MB.`));
      return;
    }
    if (!/^image\//.test(file.type)) {
      reject(new Error('Нужна картинка или GIF.'));
      return;
    }
    const reader = new FileReader();
    reader.onload = () => resolve(reader.result);
    reader.onerror = () => reject(new Error('Не удалось прочитать файл.'));
    reader.readAsDataURL(file);
  });
}

function makeFileButton(label, accept, onFile) {
  const wrap = document.createElement('label');
  wrap.className = 'jc-file-btn';
  wrap.textContent = label;
  const input = document.createElement('input');
  input.type = 'file';
  input.accept = accept;
  input.addEventListener('change', async () => {
    const file = input.files?.[0];
    if (!file) return;
    try {
      await onFile(file);
    } catch (err) {
      alert(err.message || String(err));
    } finally {
      input.value = '';
    }
  });
  wrap.appendChild(input);
  return wrap;
}

function injectProfileTools() {
  const form = document.querySelector('#profileSection .profile-form');
  const avatarInput = $('profileAvatar');
  const coverInput = $('profileCover');
  const accentInput = $('profileAccent');
  const saveBtn = $('saveProfileBtn');

  if (!form || !avatarInput || !coverInput || !accentInput || document.querySelector('.jc-profile-tools')) return;

  const tools = document.createElement('div');
  tools.className = 'jc-profile-tools';

  const avatarCard = document.createElement('div');
  avatarCard.className = 'jc-tool-card';
  avatarCard.innerHTML = `
    <strong>Аватар с устройства</strong>
    <small>Можно PNG/JPG/WebP/GIF. Для GIF лучше короткий и лёгкий файл.</small>
    <div class="jc-upload-row"></div>
  `;
  avatarCard.querySelector('.jc-upload-row').append(
    makeFileButton('Загрузить аватар', 'image/*,.gif,.webp,.png,.jpg,.jpeg', async file => {
      const dataUrl = await fileToDataUrl(file, 2.5);
      avatarInput.value = dataUrl;
      safeDispatchInput(avatarInput);
      if (saveBtn) saveBtn.dataset.jcPulse = '1';
    }),
    makeButton('Случайный anime', () => {
      const seed = encodeURIComponent(Date.now().toString(36));
      avatarInput.value = `https://api.dicebear.com/9.x/adventurer/svg?seed=${seed}&backgroundColor=b6e3f4,c0aede,d1d4f9,ffd5dc,ffdfbf`;
      safeDispatchInput(avatarInput);
    })
  );

  const coverCard = document.createElement('div');
  coverCard.className = 'jc-tool-card';
  coverCard.innerHTML = `
    <strong>Фон профиля</strong>
    <small>Можно поставить картинку или GIF с устройства. Она появится в карточке профиля.</small>
    <div class="jc-upload-row"></div>
  `;
  coverCard.querySelector('.jc-upload-row').append(
    makeFileButton('Загрузить фон', 'image/*,.gif,.webp,.png,.jpg,.jpeg', async file => {
      const dataUrl = await fileToDataUrl(file, 3.5);
      coverInput.value = dataUrl;
      document.body.dataset.jcProfileBg = 'custom';
      safeDispatchInput(coverInput);
      if (saveBtn) saveBtn.dataset.jcPulse = '1';
    }),
    makeButton('Очистить фон', () => {
      coverInput.value = '';
      document.body.dataset.jcProfileBg = '';
      safeDispatchInput(coverInput);
    })
  );

  const colorCard = document.createElement('div');
  colorCard.className = 'jc-tool-card';
  colorCard.innerHTML = `
    <strong>Акцент профиля</strong>
    <small>Цвет теперь меняется сразу, без перезагрузки.</small>
    <div class="jc-color-row"></div>
  `;
  const colorRow = colorCard.querySelector('.jc-color-row');
  COLOR_PRESETS.forEach(color => {
    const chip = document.createElement('button');
    chip.type = 'button';
    chip.className = 'jc-color-chip';
    chip.style.background = color;
    chip.style.color = color;
    chip.title = color;
    chip.addEventListener('click', () => {
      accentInput.value = color;
      applyAccent(color);
      safeDispatchInput(accentInput);
    });
    colorRow.appendChild(chip);
  });
  colorRow.appendChild(makeButton('Рандом', () => {
    const color = COLOR_PRESETS[Math.floor(Math.random() * COLOR_PRESETS.length)];
    accentInput.value = color;
    applyAccent(color);
    safeDispatchInput(accentInput);
  }));

  const hintCard = document.createElement('div');
  hintCard.className = 'jc-tool-card';
  hintCard.innerHTML = `
    <strong>Как сохранить</strong>
    <small>После выбора аватара, фона или цвета нажми “Сохранить”. Если GIF большой — лучше сжать его, иначе Firebase может ругнуться.</small>
  `;

  tools.append(avatarCard, coverCard, colorCard, hintCard);

  const firstFull = form.querySelector('.full');
  if (firstFull) form.insertBefore(tools, firstFull);
  else form.prepend(tools);

  accentInput.addEventListener('input', () => applyAccent(accentInput.value));
  accentInput.addEventListener('change', () => applyAccent(accentInput.value));
  applyAccent(accentInput.value || getComputedStyle(document.documentElement).getPropertyValue('--primary').trim());
}

function makeButton(text, onClick) {
  const btn = document.createElement('button');
  btn.type = 'button';
  btn.className = 'jc-preset-btn';
  btn.textContent = text;
  btn.addEventListener('click', onClick);
  return btn;
}

function injectThemes() {
  const grid = document.querySelector('.themes-grid');
  if (!grid || grid.dataset.jcExtended === '1') return;
  grid.dataset.jcExtended = '1';

  THEME_PACK.forEach(([id, title, subtitle]) => {
    if (grid.querySelector(`[data-theme-choice="${id}"]`)) return;
    const btn = document.createElement('button');
    btn.className = 'theme-card';
    btn.dataset.themeChoice = id;
    btn.type = 'button';
    btn.innerHTML = `<b>${title}</b><span>${subtitle}</span>`;
    btn.addEventListener('click', () => setTheme(id));
    grid.appendChild(btn);
  });

  document.addEventListener('click', e => {
    const card = e.target.closest?.('.theme-card[data-theme-choice]');
    if (!card) return;
    setTheme(card.dataset.themeChoice);
  });

  setTheme(localStorage.getItem('jc-theme') || document.body.dataset.theme || 'rave');
}

function improveCatalogStructure() {
  const home = $('homeSection');
  if (!home || home.dataset.jcCatalogFixed === '1') return;
  home.dataset.jcCatalogFixed = '1';

  const headings = home.querySelectorAll('h3');
  headings.forEach(h => {
    const card = h.closest('.card, .panel');
    if (!card || card.querySelector('.jc-catalog-heading')) return;
    const wrap = document.createElement('div');
    wrap.className = 'jc-catalog-heading';
    const title = document.createElement('h3');
    title.textContent = h.textContent;
    const sub = document.createElement('span');
    sub.textContent = pickSubtitle(h.textContent);
    wrap.append(title, sub);
    h.replaceWith(wrap);
  });

  home.querySelectorAll('.list').forEach(list => {
    if (list.children.length > 2) list.classList.add('jc-catalog-rail');
  });
}

function pickSubtitle(title = '') {
  const t = title.toLowerCase();
  if (t.includes('комнат')) return 'быстрый вход';
  if (t.includes('онлайн')) return 'кто сейчас рядом';
  if (t.includes('gif')) return 'эмоции без ссылок';
  if (t.includes('источник') || t.includes('каталог')) return 'выбор видео';
  return 'JustClover hub';
}

function addAndroidMetaFix() {
  let meta = document.querySelector('meta[name="theme-color"]');
  if (meta) meta.setAttribute('content', '#080912');
  document.documentElement.style.setProperty('touch-action', 'manipulation');
}

function initHotfix() {
  addAndroidMetaFix();
  injectProfileTools();
  injectThemes();
  improveCatalogStructure();

  const obs = new MutationObserver(() => {
    injectProfileTools();
    injectThemes();
    improveCatalogStructure();
  });
  obs.observe(document.body, { childList: true, subtree: true });
}

waitFor(() => document.body && $('profileSection') && $('appearanceSection'), initHotfix);