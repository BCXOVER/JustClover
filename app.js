import { firebaseConfig } from "./firebase-config.js";

import { initializeApp } from "https://www.gstatic.com/firebasejs/10.12.5/firebase-app.js";

import {
  getAuth,
  onAuthStateChanged,
  createUserWithEmailAndPassword,
  signInWithEmailAndPassword,
  signInAnonymously,
  signInWithPopup,
  GoogleAuthProvider,
  signOut
} from "https://www.gstatic.com/firebasejs/10.12.5/firebase-auth.js";

import {
  getDatabase,
  ref,
  get,
  set,
  update,
  push,
  remove,
  onValue,
  onChildAdded,
  onDisconnect,
  serverTimestamp,
  query,
  orderByChild,
  equalTo
} from "https://www.gstatic.com/firebasejs/10.12.5/firebase-database.js";

const $ = (id) => document.getElementById(id);

const els = {
  setupWarning: $("setupWarning"),
  authView: $("authView"),
  appView: $("appView"),
  topUser: $("topUser"),
  logoutBtn: $("logoutBtn"),
  openProfileBtn: $("openProfileBtn"),

  loginTab: $("loginTab"),
  registerTab: $("registerTab"),
  guestTab: $("guestTab"),
  authForm: $("authForm"),
  guestSubmit: $("guestSubmit"),
  authSubmit: $("authSubmit"),
  nickLabel: $("nickLabel"),
  nickInput: $("nickInput"),
  emailInput: $("emailInput"),
  passwordInput: $("passwordInput"),
  authStatus: $("authStatus"),

  miniProfile: $("miniProfile"),
  miniAvatar: $("miniAvatar"),
  miniName: $("miniName"),
  miniTag: $("miniTag"),
  miniStatus: $("miniStatus"),

  roomNameInput: $("roomNameInput"),
  createRoomBtn: $("createRoomBtn"),
  joinRoomInput: $("joinRoomInput"),
  joinRoomBtn: $("joinRoomBtn"),
  copyInviteBtn: $("copyInviteBtn"),
  openRoomBtn: $("openRoomBtn"),
  closeRoomBtn: $("closeRoomBtn"),
  publicRoomBtn: $("publicRoomBtn"),
  inviteRoomBtn: $("inviteRoomBtn"),
  roomStatus: $("roomStatus"),
  membersList: $("membersList"),

  sourceType: $("sourceType"),
  sourceUrl: $("sourceUrl"),
  sourceTitle: $("sourceTitle"),
  setSourceBtn: $("setSourceBtn"),
  sourceNote: $("sourceNote"),
  videoPlayer: $("videoPlayer"),
  youtubePlayer: $("youtubePlayer"),
  externalPlayer: $("externalPlayer"),
  externalText: $("externalText"),
  externalLink: $("externalLink"),
  emptyPlayer: $("emptyPlayer"),

  publicRoomsList: $("publicRoomsList"),
  onlineUsersList: $("onlineUsersList"),

  chatMessages: $("chatMessages"),
  chatForm: $("chatForm"),
  chatInput: $("chatInput"),

  voiceBtn: $("voiceBtn"),
  voiceStatus: $("voiceStatus"),
  remoteAudio: $("remoteAudio"),

  profileDialog: $("profileDialog"),
  profileNick: $("profileNick"),
  profileTag: $("profileTag"),
  profileAvatar: $("profileAvatar"),
  profileCover: $("profileCover"),
  profileStatusText: $("profileStatusText"),
  profileBio: $("profileBio"),
  profileAccent: $("profileAccent"),
  saveProfileBtn: $("saveProfileBtn"),
  profileSaveStatus: $("profileSaveStatus")
};

let app;
let auth;
let db;

let authMode = "login";
let currentUser = null;
let profile = null;
let currentRoomId = "";
let currentRoom = null;
let currentSource = { type: "none" };
let applyingRemote = false;

let roomUnsubs = [];
let globalUnsubs = [];
let ytPlayer = null;
let ytPoll = null;
let lastYtTime = 0;

let localStream = null;
let voiceOn = false;
let signalUnsub = null;

const peers = new Map();

const rtcConfig = {
  iceServers: [{ urls: "stun:stun.l.google.com:19302" }]
};

function looksConfigured() {
  return firebaseConfig?.apiKey && !String(firebaseConfig.apiKey).startsWith("PASTE_");
}

function setStatus(el, text) {
  if (el) el.textContent = text || "";
}

function show(el) {
  if (el) el.classList.remove("hidden");
}

function hide(el) {
  if (el) el.classList.add("hidden");
}

function escapeHtml(value) {
  return String(value ?? "")
    .replaceAll("&", "&amp;")
    .replaceAll("<", "&lt;")
    .replaceAll(">", "&gt;")
    .replaceAll('"', "&quot;")
    .replaceAll("'", "&#039;");
}

function randomTag() {
  return String(Math.floor(1000 + Math.random() * 9000));
}

function randomGuestName() {
  return `Guest${Math.floor(1000 + Math.random() * 9000)}`;
}

function defaultAvatar(name = "JC") {
  const text = encodeURIComponent((name || "JC").slice(0, 2).toUpperCase());
  return `https://ui-avatars.com/api/?name=${text}&background=7c3aed&color=fff&bold=true&size=256`;
}

function parseRoomFromUrl() {
  return new URL(window.location.href).searchParams.get("room") || "";
}

function setRoomInUrl(roomId) {
  const url = new URL(window.location.href);

  if (roomId) {
    url.searchParams.set("room", roomId);
  } else {
    url.searchParams.delete("room");
  }

  window.history.replaceState({}, "", url);
}

function formatHandle(userProfile) {
  return userProfile ? `${userProfile.nickname || "User"}#${userProfile.tag || "0000"}` : "";
}

function safeUrl(value) {
  try {
    const url = new URL(String(value || ""));
    return ["http:", "https:"].includes(url.protocol) ? url.toString() : "";
  } catch {
    return "";
  }
}

function initFirebase() {
  if (!looksConfigured()) {
    show(els.setupWarning);
    throw new Error("Firebase config is not configured.");
  }

  app = initializeApp(firebaseConfig);
  auth = getAuth(app);
  db = getDatabase(app);
}

function listen(refOrQuery, cb) {
  return onValue(refOrQuery, cb);
}

function cleanupRoomListeners() {
  roomUnsubs.forEach((fn) => fn && fn());
  roomUnsubs = [];
}

function cleanupGlobalListeners() {
  globalUnsubs.forEach((fn) => fn && fn());
  globalUnsubs = [];
}

function setAuthMode(mode) {
  authMode = mode;

  els.loginTab.classList.toggle("active", mode === "login");
  els.registerTab.classList.toggle("active", mode === "register");
  els.guestTab.classList.toggle("active", mode === "guest");

  els.nickLabel.classList.toggle("hidden", mode !== "register" && mode !== "guest");
  els.authForm.classList.toggle("hidden", mode === "guest");
  els.guestSubmit.classList.toggle("hidden", mode !== "guest");

  els.authSubmit.textContent = mode === "register" ? "Создать аккаунт" : "Войти";
  els.passwordInput.autocomplete = mode === "register" ? "new-password" : "current-password";

  setStatus(els.authStatus, "");
}

async function ensureProfile(user, preferredNick = "") {
  const profileRef = ref(db, `users/${user.uid}`);
  const snap = await get(profileRef);

  if (snap.exists()) {
    return snap.val();
  }

  const nickname = (
    preferredNick.trim() ||
    user.displayName ||
    user.email?.split("@")[0] ||
    randomGuestName()
  ).slice(0, 24);

  const newProfile = {
    uid: user.uid,
    nickname,
    tag: randomTag(),
    avatarUrl: user.photoURL || defaultAvatar(nickname),
    coverUrl: "",
    bio: "",
    statusText: "Готов смотреть вместе",
    accentColor: "#a855f7",
    online: false,
    activeRoomId: "",
    activeRoomName: "",
    activeRoomOpen: false,
    activeRoomPublic: false,
    createdAt: Date.now(),
    updatedAt: Date.now()
  };

  await set(profileRef, newProfile);
  return newProfile;
}

async function loadProfile(uid) {
  const snap = await get(ref(db, `users/${uid}`));
  profile = snap.val();
  renderProfile();
}

function renderProfile() {
  if (!profile) return;

  const cover = els.miniProfile.querySelector(".cover");

  cover.style.backgroundImage = profile.coverUrl
    ? `linear-gradient(135deg, rgba(124,58,237,.28), rgba(0,0,0,.18)), url("${profile.coverUrl}")`
    : "";

  document.documentElement.style.setProperty("--primary", profile.accentColor || "#a855f7");

  els.miniAvatar.src = profile.avatarUrl || defaultAvatar(profile.nickname);
  els.miniName.textContent = profile.nickname || "User";
  els.miniTag.textContent = `#${profile.tag || "0000"}`;
  els.miniStatus.textContent = profile.statusText || "online";
  els.topUser.textContent = formatHandle(profile);

  els.profileNick.value = profile.nickname || "";
  els.profileTag.value = profile.tag || "";
  els.profileAvatar.value = profile.avatarUrl || "";
  els.profileCover.value = profile.coverUrl || "";
  els.profileStatusText.value = profile.statusText || "";
  els.profileBio.value = profile.bio || "";
  els.profileAccent.value = profile.accentColor || "#a855f7";
}

function renderAppShell(isAuthed) {
  if (isAuthed) {
    hide(els.authView);
    show(els.appView);
    show(els.logoutBtn);
    show(els.openProfileBtn);
  } else {
    show(els.authView);
    hide(els.appView);
    hide(els.logoutBtn);
    hide(els.openProfileBtn);
    els.topUser.textContent = "Гость";
  }
}

async function startPresence() {
  if (!currentUser) return;

  const uid = currentUser.uid;
  const connectedRef = ref(db, ".info/connected");

  const unsub = listen(connectedRef, async (snap) => {
    if (snap.val() !== true) return;

    const presenceRef = ref(db, `presence/${uid}`);

    await onDisconnect(presenceRef).set({
      state: "offline",
      lastChanged: serverTimestamp(),
      activeRoomId: ""
    });

    await onDisconnect(ref(db, `users/${uid}/online`)).set(false);
    await onDisconnect(ref(db, `users/${uid}/lastSeen`)).set(serverTimestamp());

    await set(presenceRef, {
      state: "online",
      lastChanged: serverTimestamp(),
      activeRoomId: currentRoomId || ""
    });

    await update(ref(db, `users/${uid}`), {
      online: true,
      lastSeen: Date.now()
    });
  });

  globalUnsubs.push(unsub);
}

function startGlobalLists() {
  const usersQuery = query(ref(db, "users"), orderByChild("online"), equalTo(true));

  globalUnsubs.push(
    listen(usersQuery, (snap) => {
      const users = [];
      snap.forEach((s) => users.push(s.val()));
      renderOnlineUsers(users);
    })
  );

  const roomsQuery = query(ref(db, "rooms"), orderByChild("publicOpen"), equalTo(true));

  globalUnsubs.push(
    listen(roomsQuery, (snap) => {
      const rooms = [];
      snap.forEach((s) => rooms.push(s.val()));
      rooms.sort((a, b) => (b.createdAt || 0) - (a.createdAt || 0));
      renderPublicRooms(rooms);
    })
  );
}

function renderOnlineUsers(users) {
  els.onlineUsersList.innerHTML = "";

  const filtered = users.filter((u) => u.uid !== currentUser?.uid);

  if (!filtered.length) {
    els.onlineUsersList.innerHTML = `<p class="status">Пока никого онлайн не видно.</p>`;
    return;
  }

  for (const u of filtered) {
    const canJoin = u.activeRoomId && u.activeRoomOpen;

    const card = document.createElement("div");
    card.className = "user-card";

    card.innerHTML = `
      <img src="${escapeHtml(u.avatarUrl || defaultAvatar(u.nickname))}" alt="">
      <div class="card-main">
        <strong>${escapeHtml(u.nickname || "User")}#${escapeHtml(u.tag || "0000")}</strong>
        <span class="online">● online</span>
        <span>${escapeHtml(u.statusText || "")}</span>
        ${u.activeRoomName ? `<span>В комнате: ${escapeHtml(u.activeRoomName)}</span>` : ""}
      </div>
      <button ${canJoin ? "" : "disabled"} data-room="${escapeHtml(u.activeRoomId || "")}">
        Присоединиться
      </button>
    `;

    card.querySelector("button")?.addEventListener("click", () => {
      if (canJoin) joinRoom(u.activeRoomId);
    });

    els.onlineUsersList.appendChild(card);
  }
}

function renderPublicRooms(rooms) {
  els.publicRoomsList.innerHTML = "";

  if (!rooms.length) {
    els.publicRoomsList.innerHTML = `<p class="status">Открытых публичных комнат пока нет.</p>`;
    return;
  }

  for (const r of rooms) {
    const card = document.createElement("div");
    card.className = "room-card";

    card.innerHTML = `
      <img src="${escapeHtml(r.ownerAvatar || defaultAvatar(r.ownerName))}" alt="">
      <div class="card-main">
        <strong>${escapeHtml(r.name || "Комната")}</strong>
        <span>Хост: ${escapeHtml(r.ownerName || "User")}</span>
        <span>${escapeHtml(r.source?.title || "Источник не выбран")}</span>
      </div>
      <button data-room="${escapeHtml(r.id)}">Войти</button>
    `;

    card.querySelector("button").addEventListener("click", () => joinRoom(r.id));
    els.publicRoomsList.appendChild(card);
  }
}

async function createRoom() {
  if (!currentUser || !profile) return;

  const roomRef = push(ref(db, "rooms"));
  const roomId = roomRef.key;
  const name = els.roomNameInput.value.trim() || `${profile.nickname}'s room`;

  const room = {
    id: roomId,
    name,
    ownerUid: currentUser.uid,
    ownerName: formatHandle(profile),
    ownerAvatar: profile.avatarUrl || defaultAvatar(profile.nickname),
    visibility: "open",
    joinMode: "public",
    publicOpen: true,
    source: { type: "none", title: "", url: "" },
    playback: {
      time: 0,
      playing: false,
      updatedAt: Date.now(),
      byUid: ""
    },
    createdAt: Date.now(),
    updatedAt: Date.now()
  };

  await set(roomRef, room);
  await joinRoom(roomId);
}

async function joinRoom(roomId) {
  if (!currentUser || !profile) return;

  roomId = String(roomId || "").trim();

  if (!roomId) {
    setStatus(els.roomStatus, "Введи код комнаты.");
    return;
  }

  const roomSnap = await get(ref(db, `rooms/${roomId}`));

  if (!roomSnap.exists()) {
    setStatus(els.roomStatus, "Комната не найдена.");
    return;
  }

  const room = roomSnap.val();

  if (room.visibility !== "open" && room.ownerUid !== currentUser.uid) {
    setStatus(els.roomStatus, "Комната закрыта.");
    return;
  }

  await leaveRoom(false);

  currentRoomId = roomId;
  currentRoom = room;

  els.joinRoomInput.value = roomId;
  setRoomInUrl(roomId);

  await set(ref(db, `rooms/${roomId}/members/${currentUser.uid}`), {
    uid: currentUser.uid,
    nickname: profile.nickname,
    tag: profile.tag,
    avatarUrl: profile.avatarUrl || defaultAvatar(profile.nickname),
    joinedAt: Date.now()
  });

  await update(ref(db, `users/${currentUser.uid}`), {
    activeRoomId: roomId,
    activeRoomName: room.name || "Комната",
    activeRoomOpen: room.visibility === "open",
    activeRoomPublic: room.joinMode === "public",
    updatedAt: Date.now()
  });

  await update(ref(db, `presence/${currentUser.uid}`), {
    activeRoomId: roomId
  });

  subscribeRoom(roomId);
  setStatus(els.roomStatus, `Ты в комнате: ${room.name || roomId}`);
}

async function leaveRoom(clearUrl = true) {
  if (!currentUser || !currentRoomId) return;

  const oldRoom = currentRoomId;

  await remove(ref(db, `rooms/${oldRoom}/members/${currentUser.uid}`)).catch(() => {});

  await update(ref(db, `users/${currentUser.uid}`), {
    activeRoomId: "",
    activeRoomName: "",
    activeRoomOpen: false,
    activeRoomPublic: false,
    updatedAt: Date.now()
  }).catch(() => {});

  await update(ref(db, `presence/${currentUser.uid}`), {
    activeRoomId: ""
  }).catch(() => {});

  await stopVoice();

  currentRoomId = "";
  currentRoom = null;

  cleanupRoomListeners();
  clearChat();

  if (clearUrl) setRoomInUrl("");
}

function subscribeRoom(roomId) {
  cleanupRoomListeners();

  roomUnsubs.push(
    listen(ref(db, `rooms/${roomId}`), (snap) => {
      if (!snap.exists()) {
        setStatus(els.roomStatus, "Комната удалена.");
        leaveRoom();
        return;
      }

      currentRoom = snap.val();
      renderRoomState();
    })
  );

  roomUnsubs.push(
    listen(ref(db, `rooms/${roomId}/members`), (snap) => {
      const members = [];
      snap.forEach((s) => members.push(s.val()));
      renderMembers(members);
    })
  );

  clearChat();

  roomUnsubs.push(
    onChildAdded(ref(db, `roomChats/${roomId}`), (snap) => {
      addChatMessage(snap.val());
    })
  );
}

function renderRoomState() {
  if (!currentRoom) return;

  const isOwner = currentRoom.ownerUid === currentUser.uid;

  els.openRoomBtn.disabled = !isOwner;
  els.closeRoomBtn.disabled = !isOwner;
  els.publicRoomBtn.disabled = !isOwner;
  els.inviteRoomBtn.disabled = !isOwner;

  const status = [
    currentRoom.visibility === "open" ? "открыта" : "закрыта",
    currentRoom.joinMode === "public" ? "публичная" : "по ссылке"
  ].join(", ");

  setStatus(els.roomStatus, `${currentRoom.name || currentRoom.id} — ${status}`);

  if (currentRoom.source) {
    loadSource(currentRoom.source);
  }

  if (currentRoom.playback) {
    applyPlayback(currentRoom.playback);
  }
}

function renderMembers(members) {
  els.membersList.innerHTML = "";

  if (!members.length) {
    els.membersList.innerHTML = `<p class="status">Пока никого нет.</p>`;
    return;
  }

  for (const m of members) {
    const div = document.createElement("div");
    div.className = "member";

    div.innerHTML = `
      <span>${escapeHtml(m.nickname || "User")}#${escapeHtml(m.tag || "0000")}</span>
      <span class="online">●</span>
    `;

    els.membersList.appendChild(div);
  }
}

async function setRoomVisibility(visibility) {
  if (!currentRoom || currentRoom.ownerUid !== currentUser.uid) return;

  const publicOpen = visibility === "open" && currentRoom.joinMode === "public";

  await update(ref(db, `rooms/${currentRoomId}`), {
    visibility,
    publicOpen,
    updatedAt: Date.now()
  });

  await update(ref(db, `users/${currentUser.uid}`), {
    activeRoomOpen: visibility === "open",
    activeRoomPublic: publicOpen
  });
}

async function setJoinMode(joinMode) {
  if (!currentRoom || currentRoom.ownerUid !== currentUser.uid) return;

  const publicOpen = currentRoom.visibility === "open" && joinMode === "public";

  await update(ref(db, `rooms/${currentRoomId}`), {
    joinMode,
    publicOpen,
    updatedAt: Date.now()
  });

  await update(ref(db, `users/${currentUser.uid}`), {
    activeRoomPublic: publicOpen
  });
}

function extractYouTubeId(url) {
  try {
    const p = new URL(url);

    if (p.hostname.includes("youtu.be")) {
      return p.pathname.slice(1).split("/")[0];
    }

    if (p.hostname.includes("youtube.com")) {
      if (p.searchParams.get("v")) return p.searchParams.get("v");

      const parts = p.pathname.split("/").filter(Boolean);

      const shorts = parts.indexOf("shorts");
      if (shorts >= 0) return parts[shorts + 1];

      const embed = parts.indexOf("embed");
      if (embed >= 0) return parts[embed + 1];
    }
  } catch {}

  return "";
}

function googleDriveToDirect(url) {
  try {
    const p = new URL(url);
    let id = p.searchParams.get("id");

    if (!id) {
      const m = p.pathname.match(/\/file\/d\/([^/]+)/);
      if (m) id = m[1];
    }

    return id ? `https://drive.google.com/uc?export=download&id=${encodeURIComponent(id)}` : "";
  } catch {
    return "";
  }
}

async function setSource() {
  if (!currentRoomId) {
    setStatus(els.roomStatus, "Сначала создай комнату.");
    return;
  }

  if (currentRoom.ownerUid !== currentUser.uid) {
    setStatus(els.roomStatus, "Источник может менять только хост.");
    return;
  }

  const type = els.sourceType.value;
  const rawUrl = els.sourceUrl.value.trim();
  const url = safeUrl(rawUrl);
  const title = els.sourceTitle.value.trim() || rawUrl || "Источник";

  if (!url) {
    setStatus(els.roomStatus, "Вставь корректную http/https ссылку.");
    return;
  }

  let source;

  if (type === "youtube") {
    const videoId = extractYouTubeId(url);

    if (!videoId) {
      setStatus(els.roomStatus, "Не удалось распознать YouTube video id.");
      return;
    }

    source = {
      type: "youtube",
      url,
      videoId,
      title: title || "YouTube"
    };
  } else if (type === "direct") {
    source = {
      type: "direct",
      url,
      title
    };
  } else if (type === "drive") {
    const direct = googleDriveToDirect(url);

    source = direct
      ? {
          type: "direct",
          url: direct,
          originalUrl: url,
          title: title || "Google Drive"
        }
      : {
          type: "external",
          url,
          title: title || "Google Drive"
        };
  } else if (type === "yandex") {
    source = {
      type: "external",
      url,
      title: title || "Яндекс Диск"
    };
  } else {
    source = {
      type: "external",
      url,
      title
    };
  }

  await update(ref(db, `rooms/${currentRoomId}`), {
    source,
    playback: {
      time: 0,
      playing: false,
      updatedAt: Date.now(),
      byUid: currentUser.uid
    },
    updatedAt: Date.now()
  });
}

function hidePlayers() {
  els.videoPlayer.classList.add("hidden");
  els.youtubePlayer.classList.add("hidden");
  els.externalPlayer.classList.add("hidden");
  els.emptyPlayer.classList.add("hidden");

  if (ytPoll) clearInterval(ytPoll);
  ytPoll = null;
}

async function loadSource(source) {
  if (!source) source = { type: "none" };

  currentSource = source;
  hidePlayers();

  if (source.type === "none") {
    els.emptyPlayer.classList.remove("hidden");
    els.sourceNote.textContent = "Источник не выбран.";
    return;
  }

  if (source.type === "direct") {
    els.videoPlayer.classList.remove("hidden");

    if (els.videoPlayer.src !== source.url) {
      els.videoPlayer.src = source.url;
      els.videoPlayer.load();
    }

    els.sourceNote.textContent = source.originalUrl
      ? "Google Drive direct-ссылка создана автоматически. Если видео не грузится, Drive не отдал прямой поток."
      : `Источник: ${source.title || source.url}`;

    return;
  }

  if (source.type === "youtube") {
    els.youtubePlayer.classList.remove("hidden");
    await loadYouTube(source.videoId);
    els.sourceNote.textContent = `YouTube: ${source.title || source.videoId}`;
    return;
  }

  els.externalPlayer.classList.remove("hidden");
  els.externalText.textContent = `${source.title || "Внешний источник"}: синхронизация плеера недоступна, но чат/профили/комната работают.`;
  els.externalLink.href = source.url;
  els.sourceNote.textContent = "Внешний источник открыт как ссылка. Для полной синхронизации нужен YouTube или прямой mp4/webm.";
}

window.onYouTubeIframeAPIReady = () => {};

function waitForYouTube() {
  return new Promise((resolve) => {
    if (window.YT?.Player) {
      resolve();
      return;
    }

    const timer = setInterval(() => {
      if (window.YT?.Player) {
        clearInterval(timer);
        resolve();
      }
    }, 100);
  });
}

async function loadYouTube(videoId) {
  await waitForYouTube();

  if (!ytPlayer) {
    ytPlayer = new YT.Player("youtubePlayer", {
      width: "100%",
      height: "100%",
      videoId,
      playerVars: {
        playsinline: 1,
        rel: 0
      },
      events: {
        onStateChange: onYouTubeStateChange,
        onReady: startYouTubePoll
      }
    });

    return;
  }

  ytPlayer.cueVideoById(videoId);
  startYouTubePoll();
}

function onYouTubeStateChange(event) {
  if (applyingRemote || !currentRoomId || currentSource.type !== "youtube") return;

  const time = ytPlayer?.getCurrentTime?.() || 0;

  if (event.data === YT.PlayerState.PLAYING) writePlayback(true, time);
  if (event.data === YT.PlayerState.PAUSED) writePlayback(false, time);
}

function startYouTubePoll() {
  if (ytPoll) clearInterval(ytPoll);

  lastYtTime = ytPlayer?.getCurrentTime?.() || 0;

  ytPoll = setInterval(() => {
    if (applyingRemote || currentSource.type !== "youtube" || !currentRoomId || !ytPlayer) return;

    const state = ytPlayer.getPlayerState?.();
    const now = ytPlayer.getCurrentTime?.() || 0;
    const delta = Math.abs(now - (lastYtTime + 1));

    if (state === YT.PlayerState.PLAYING && delta > 3) {
      writePlayback(true, now);
    }

    lastYtTime = now;
  }, 1000);
}

async function writePlayback(playing, time) {
  if (!currentRoomId) return;

  await update(ref(db, `rooms/${currentRoomId}/playback`), {
    playing: Boolean(playing),
    time: Number(time) || 0,
    updatedAt: Date.now(),
    byUid: currentUser.uid
  });
}

async function applyPlayback(playback) {
  if (!playback || playback.byUid === currentUser?.uid) return;

  const baseTime = Number(playback.time) || 0;
  const elapsed = playback.playing
    ? Math.max(0, (Date.now() - (playback.updatedAt || Date.now())) / 1000)
    : 0;

  const targetTime = baseTime + elapsed;

  applyingRemote = true;

  try {
    if (currentSource.type === "direct") {
      if (Math.abs((els.videoPlayer.currentTime || 0) - targetTime) > 1.2) {
        els.videoPlayer.currentTime = targetTime;
      }

      if (playback.playing) {
        await els.videoPlayer.play().catch(() => {
          setStatus(els.roomStatus, "Браузер заблокировал автозапуск. Нажми Play вручную.");
        });
      } else {
        els.videoPlayer.pause();
      }
    }

    if (currentSource.type === "youtube" && ytPlayer) {
      const ytTime = ytPlayer.getCurrentTime?.() || 0;

      if (Math.abs(ytTime - targetTime) > 1.2) {
        ytPlayer.seekTo(targetTime, true);
      }

      if (playback.playing) ytPlayer.playVideo();
      else ytPlayer.pauseVideo();
    }
  } finally {
    setTimeout(() => {
      applyingRemote = false;
    }, 400);
  }
}

els.videoPlayer.addEventListener("play", () => {
  if (applyingRemote || currentSource.type !== "direct") return;
  writePlayback(true, els.videoPlayer.currentTime);
});

els.videoPlayer.addEventListener("pause", () => {
  if (applyingRemote || currentSource.type !== "direct") return;
  writePlayback(false, els.videoPlayer.currentTime);
});

els.videoPlayer.addEventListener("seeked", () => {
  if (applyingRemote || currentSource.type !== "direct") return;
  writePlayback(!els.videoPlayer.paused, els.videoPlayer.currentTime);
});

function clearChat() {
  els.chatMessages.innerHTML = "";
}

function addChatMessage(message) {
  const div = document.createElement("div");
  div.className = "message";

  div.innerHTML = `
    <strong>${escapeHtml(message.nickname || "User")}#${escapeHtml(message.tag || "0000")}</strong>
    <div>${escapeHtml(message.text)}</div>
    <time>${new Date(message.createdAt || Date.now()).toLocaleTimeString([], {
      hour: "2-digit",
      minute: "2-digit"
    })}</time>
  `;

  els.chatMessages.appendChild(div);
  els.chatMessages.scrollTop = els.chatMessages.scrollHeight;
}

async function sendChat(text) {
  if (!currentRoomId || !profile) return;

  text = text.trim();

  if (!text) return;

  await push(ref(db, `roomChats/${currentRoomId}`), {
    uid: currentUser.uid,
    nickname: profile.nickname,
    tag: profile.tag,
    avatarUrl: profile.avatarUrl || "",
    text,
    createdAt: Date.now()
  });
}

async function saveProfile(event) {
  event.preventDefault();

  const nickname = els.profileNick.value.trim().slice(0, 24) || "User";
  const tag =
    els.profileTag.value
      .trim()
      .replace(/[^a-zA-Z0-9_а-яА-ЯёЁ-]/g, "")
      .slice(0, 12) || randomTag();

  const data = {
    nickname,
    tag,
    avatarUrl: safeUrl(els.profileAvatar.value) || defaultAvatar(nickname),
    coverUrl: safeUrl(els.profileCover.value),
    statusText: els.profileStatusText.value.trim().slice(0, 80),
    bio: els.profileBio.value.trim().slice(0, 280),
    accentColor: els.profileAccent.value || "#a855f7",
    updatedAt: Date.now()
  };

  await update(ref(db, `users/${currentUser.uid}`), data);

  profile = {
    ...profile,
    ...data
  };

  if (currentRoomId) {
    await update(ref(db, `rooms/${currentRoomId}/members/${currentUser.uid}`), {
      nickname: profile.nickname,
      tag: profile.tag,
      avatarUrl: profile.avatarUrl
    });

    if (currentRoom?.ownerUid === currentUser.uid) {
      await update(ref(db, `rooms/${currentRoomId}`), {
        ownerName: formatHandle(profile),
        ownerAvatar: profile.avatarUrl
      });
    }
  }

  renderProfile();
  setStatus(els.profileSaveStatus, "Сохранено.");
}

async function startVoice() {
  if (!currentRoomId) {
    setStatus(els.voiceStatus, "Сначала войди в комнату.");
    return;
  }

  try {
    localStream = await navigator.mediaDevices.getUserMedia({
      audio: {
        echoCancellation: true,
        noiseSuppression: true,
        autoGainControl: true
      },
      video: false
    });

    voiceOn = true;
    els.voiceBtn.textContent = "🔇 Выключить голос";
    setStatus(els.voiceStatus, "Голос включён.");

    const voiceRef = ref(db, `voiceMembers/${currentRoomId}/${currentUser.uid}`);
    const existingSnap = await get(ref(db, `voiceMembers/${currentRoomId}`));
    const existing = [];

    existingSnap.forEach((s) => {
      if (s.key !== currentUser.uid) existing.push(s.key);
    });

    await set(voiceRef, {
      uid: currentUser.uid,
      nickname: profile.nickname,
      tag: profile.tag,
      joinedAt: Date.now()
    });

    await onDisconnect(voiceRef).remove();

    signalUnsub = onChildAdded(ref(db, `voiceSignals/${currentRoomId}/${currentUser.uid}`), async (snap) => {
      const signal = snap.val();
      await processVoiceSignal(signal);
      await remove(snap.ref).catch(() => {});
    });

    for (const uid of existing) {
      await callPeer(uid);
    }
  } catch {
    setStatus(els.voiceStatus, "Микрофон недоступен. Нужен HTTPS и разрешение браузера.");
  }
}

async function stopVoice() {
  if (!voiceOn) return;

  voiceOn = false;
  els.voiceBtn.textContent = "🎙️ Включить голос";
  setStatus(els.voiceStatus, "Голос выключен.");

  if (signalUnsub) signalUnsub();
  signalUnsub = null;

  for (const uid of [...peers.keys()]) {
    closePeer(uid);
  }

  if (localStream) {
    localStream.getTracks().forEach((t) => t.stop());
    localStream = null;
  }

  if (currentRoomId && currentUser) {
    await remove(ref(db, `voiceMembers/${currentRoomId}/${currentUser.uid}`)).catch(() => {});
  }

  els.remoteAudio.innerHTML = "";
}

function createPeer(remoteUid) {
  if (peers.has(remoteUid)) return peers.get(remoteUid);

  const pc = new RTCPeerConnection(rtcConfig);

  if (localStream) {
    localStream.getTracks().forEach((track) => pc.addTrack(track, localStream));
  }

  pc.onicecandidate = (event) => {
    if (event.candidate) {
      sendSignal(remoteUid, {
        type: "candidate",
        candidate: event.candidate.toJSON()
      });
    }
  };

  pc.ontrack = (event) => {
    let audio = document.getElementById(`audio-${remoteUid}`);

    if (!audio) {
      audio = document.createElement("audio");
      audio.id = `audio-${remoteUid}`;
      audio.autoplay = true;
      audio.playsInline = true;
      els.remoteAudio.appendChild(audio);
    }

    audio.srcObject = event.streams[0];
  };

  pc.onconnectionstatechange = () => {
    if (["disconnected", "failed", "closed"].includes(pc.connectionState)) {
      closePeer(remoteUid);
    }
  };

  peers.set(remoteUid, pc);
  return pc;
}

function closePeer(remoteUid) {
  const pc = peers.get(remoteUid);

  if (pc) pc.close();

  peers.delete(remoteUid);

  const audio = document.getElementById(`audio-${remoteUid}`);
  if (audio) audio.remove();
}

async function callPeer(remoteUid) {
  const pc = createPeer(remoteUid);
  const offer = await pc.createOffer();

  await pc.setLocalDescription(offer);

  await sendSignal(remoteUid, {
    type: "offer",
    sdp: pc.localDescription.toJSON()
  });
}

async function sendSignal(toUid, payload) {
  if (!currentRoomId || !currentUser) return;

  await push(ref(db, `voiceSignals/${currentRoomId}/${toUid}`), {
    ...payload,
    from: currentUser.uid,
    createdAt: Date.now()
  });
}

async function processVoiceSignal(signal) {
  if (!signal || !signal.from || signal.from === currentUser.uid || !voiceOn) return;

  const pc = createPeer(signal.from);

  if (signal.type === "offer") {
    await pc.setRemoteDescription(new RTCSessionDescription(signal.sdp));

    const answer = await pc.createAnswer();
    await pc.setLocalDescription(answer);

    await sendSignal(signal.from, {
      type: "answer",
      sdp: pc.localDescription.toJSON()
    });
  }

  if (signal.type === "answer") {
    await pc.setRemoteDescription(new RTCSessionDescription(signal.sdp));
  }

  if (signal.type === "candidate" && signal.candidate) {
    await pc.addIceCandidate(new RTCIceCandidate(signal.candidate)).catch(() => {});
  }
}

function ensureGoogleButton() {
  if (document.getElementById("googleSubmit")) return;

  const btn = document.createElement("button");

  btn.id = "googleSubmit";
  btn.type = "button";
  btn.className = "primary";
  btn.textContent = "Войти через Google";
  btn.style.marginTop = "10px";

  els.authForm.insertAdjacentElement("afterend", btn);

  btn.addEventListener("click", async () => {
    setStatus(els.authStatus, "Открываю Google-вход...");

    try {
      if (!auth) {
        setStatus(els.authStatus, "Firebase ещё не инициализирован.");
        return;
      }

      const provider = new GoogleAuthProvider();

      provider.setCustomParameters({
        prompt: "select_account"
      });

      const result = await signInWithPopup(auth, provider);

      await ensureProfile(
        result.user,
        result.user.displayName || result.user.email?.split("@")[0] || ""
      );
    } catch (error) {
      let message = error.message || String(error);

      if (error.code === "auth/popup-closed-by-user") {
        message = "Окно Google-входа закрыто.";
      }

      if (error.code === "auth/unauthorized-domain") {
        message = "Этот домен не добавлен в Firebase Authorized domains.";
      }

      if (error.code === "auth/operation-not-allowed") {
        message = "Google Sign-in не включён в Firebase Authentication.";
      }

      setStatus(els.authStatus, message);
    }
  });
}

function bindEvents() {
  ensureGoogleButton();

  els.loginTab.addEventListener("click", () => setAuthMode("login"));
  els.registerTab.addEventListener("click", () => setAuthMode("register"));
  els.guestTab.addEventListener("click", () => setAuthMode("guest"));

  els.authForm.addEventListener("submit", async (e) => {
    e.preventDefault();

    const email = els.emailInput.value.trim();
    const password = els.passwordInput.value;
    const nick = els.nickInput.value.trim();

    setStatus(els.authStatus, "Загрузка...");

    try {
      if (authMode === "register") {
        const cred = await createUserWithEmailAndPassword(auth, email, password);
        await ensureProfile(cred.user, nick);
      } else {
        await signInWithEmailAndPassword(auth, email, password);
      }
    } catch (error) {
      setStatus(els.authStatus, error.message);
    }
  });

  els.guestSubmit.addEventListener("click", async () => {
    try {
      const nick = els.nickInput.value.trim() || randomGuestName();
      const cred = await signInAnonymously(auth);

      await ensureProfile(cred.user, nick);
    } catch (error) {
      setStatus(els.authStatus, error.message);
    }
  });

  els.logoutBtn.addEventListener("click", async () => {
    await leaveRoom();
    cleanupGlobalListeners();
    await signOut(auth);
  });

  els.openProfileBtn.addEventListener("click", () => {
    renderProfile();
    els.profileDialog.showModal();
  });

  els.saveProfileBtn.addEventListener("click", saveProfile);
  els.createRoomBtn.addEventListener("click", createRoom);
  els.joinRoomBtn.addEventListener("click", () => joinRoom(els.joinRoomInput.value));

  els.copyInviteBtn.addEventListener("click", async () => {
    if (!currentRoomId) {
      setStatus(els.roomStatus, "Сначала создай комнату.");
      return;
    }

    const url = new URL(window.location.href);
    url.searchParams.set("room", currentRoomId);

    await navigator.clipboard.writeText(url.toString()).catch(() => {});
    setStatus(els.roomStatus, "Invite-ссылка скопирована.");
  });

  els.openRoomBtn.addEventListener("click", () => setRoomVisibility("open"));
  els.closeRoomBtn.addEventListener("click", () => setRoomVisibility("closed"));
  els.publicRoomBtn.addEventListener("click", () => setJoinMode("public"));
  els.inviteRoomBtn.addEventListener("click", () => setJoinMode("invite"));
  els.setSourceBtn.addEventListener("click", setSource);

  els.chatForm.addEventListener("submit", async (e) => {
    e.preventDefault();

    await sendChat(els.chatInput.value);
    els.chatInput.value = "";
  });

  els.voiceBtn.addEventListener("click", async () => {
    if (voiceOn) await stopVoice();
    else await startVoice();
  });
}

async function boot() {
  bindEvents();
  setAuthMode("login");

  try {
    initFirebase();
  } catch (error) {
    setStatus(els.authStatus, error.message);
    return;
  }

  onAuthStateChanged(auth, async (user) => {
    currentUser = user;

    cleanupGlobalListeners();
    cleanupRoomListeners();

    if (!user) {
      profile = null;
      currentRoomId = "";
      currentRoom = null;

      renderAppShell(false);
      return;
    }

    profile = await ensureProfile(user);

    renderProfile();
    renderAppShell(true);

    await startPresence();
    startGlobalLists();

    const inviteRoom = parseRoomFromUrl();

    if (inviteRoom) {
      await joinRoom(inviteRoom);
    }
  });

  if ("serviceWorker" in navigator) {
    window.addEventListener("load", () => {
      navigator.serviceWorker.register("./service-worker.js").catch(() => {});
    });
  }
}

boot();
