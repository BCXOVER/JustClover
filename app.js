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

const BUILD = "stage117-giphy-picker-restore-stable-20260503-1";
console.log("JustClover loaded:", BUILD, "— emergency static build, no CDN loader, no wallpaper experiments");
window.JUSTCLOVER_BUILD = BUILD;

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
  googleSubmit: $("googleSubmit"),
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
  activeRoomTitle: $("activeRoomTitle"),
  activeRoomMeta: $("activeRoomMeta"),
  leaveRoomBtn: $("leaveRoomBtn"),
  memberCount: $("memberCount"),
  membersList: $("membersList"),
  sourcePanel: $("sourcePanel"),
  closeSourcePanelBtn: $("closeSourcePanelBtn"),
  sourceType: $("sourceType"),
  sourceUrl: $("sourceUrl"),
  localVideoFile: $("localVideoFile"),
  sourceTitle: $("sourceTitle"),
  setSourceBtn: $("setSourceBtn"),
  sourceNote: $("sourceNote"),
  videoPlayer: $("videoPlayer"),
  youtubePlayer: $("youtubePlayer"),
  iframePlayer: $("iframePlayer"),
  externalPlayer: $("externalPlayer"),
  externalText: $("externalText"),
  externalLink: $("externalLink"),
  emptyPlayer: $("emptyPlayer"),
  playerFrame: $("playerFrame"),
  publicRoomsList: $("publicRoomsList"),
  onlineUsersList: $("onlineUsersList"),
  chatMessages: $("chatMessages"),
  chatForm: $("chatForm"),
  chatInput: $("chatInput"),
  chatToggleBtn: $("chatToggleBtn"),
  catalogToggleBtn: $("catalogToggleBtn"),
  fullscreenBtn: $("fullscreenBtn"),
  voiceBtn: $("voiceBtn"),
  voiceStatus: $("voiceStatus"),
  remoteAudio: $("remoteAudio"),
  profileNick: $("profileNick"),
  profileTag: $("profileTag"),
  profileAvatar: $("profileAvatar"),
  profileCover: $("profileCover"),
  profileStatusText: $("profileStatusText"),
  profileBio: $("profileBio"),
  profileAccent: $("profileAccent"),
  saveProfileBtn: $("saveProfileBtn"),
  profileSaveStatus: $("profileSaveStatus"),
  profilePreviewCard: $("profilePreviewCard"),
  profilePreviewAvatar: $("profilePreviewAvatar"),
  profilePreviewName: $("profilePreviewName"),
  profilePreviewTag: $("profilePreviewTag")
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
let loadedSourceKey = "";
let roomUnsubs = [];
let globalUnsubs = [];
let ytPlayer = null;
let ytApiPromise = null;
let applyingRemote = false;
let localVideoObjectUrl = "";
let localStream = null;
let voiceOn = false;
let pendingUrlRoomJoin = false;

function status(el, text) {
  if (el) el.textContent = text || "";
}
function show(el) {
  el?.classList.remove("hidden");
}
function hide(el) {
  el?.classList.add("hidden");
}
function esc(value) {
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
function guestName() {
  return `Guest${Math.floor(1000 + Math.random() * 9000)}`;
}
function avatar(name = "JC") {
  const initials = String(name || "JC").slice(0, 2).toUpperCase();
  return `https://ui-avatars.com/api/?name=${encodeURIComponent(initials)}&background=111827&color=fff&bold=true&size=256`;
}
function handle(userProfile) {
  return userProfile ? `${userProfile.nickname || "User"}#${userProfile.tag || "0000"}` : "";
}
function safeUrl(value) {
  try {
    const url = new URL(String(value || "").trim());
    return ["http:", "https:"].includes(url.protocol) ? url.toString() : "";
  } catch {
    return "";
  }
}
function sourceKey(source) {
  if (!source || source.type === "none") return "none";
  return `${source.type}:${source.videoId || source.embedUrl || source.url || source.filename || ""}`;
}
function roomFromUrl() {
  return new URL(location.href).searchParams.get("room") || "";
}
function setRoomUrl(roomId) {
  const url = new URL(location.href);
  if (roomId) url.searchParams.set("room", roomId);
  else url.searchParams.delete("room");
  history.replaceState({}, "", url);
}
function sourceCacheKey(roomId) {
  return `jc-source-${roomId}`;
}
function readSourceCache(roomId) {
  try {
    const raw = localStorage.getItem(sourceCacheKey(roomId));
    return raw ? JSON.parse(raw) : null;
  } catch {
    return null;
  }
}
function writeSourceCache(roomId, source) {
  if (!roomId || !source || source.type === "local") return;
  try {
    localStorage.setItem(sourceCacheKey(roomId), JSON.stringify(source));
  } catch {}
}
function unsubs(list) {
  list.splice(0).forEach((fn) => {
    try { fn && fn(); } catch {}
  });
}
function roomOwner() {
  return currentRoom && currentUser && currentRoom.ownerUid === currentUser.uid;
}

function initFirebase() {
  if (!firebaseConfig?.apiKey || String(firebaseConfig.apiKey).startsWith("PASTE_")) {
    show(els.setupWarning);
    throw new Error("Firebase config is not configured.");
  }
  app = initializeApp(firebaseConfig);
  auth = getAuth(app);
  db = getDatabase(app);
}

function setAuthMode(mode) {
  authMode = mode;
  els.loginTab?.classList.toggle("active", mode === "login");
  els.registerTab?.classList.toggle("active", mode === "register");
  els.guestTab?.classList.toggle("active", mode === "guest");
  els.authForm?.classList.toggle("hidden", mode === "guest");
  els.nickLabel?.classList.toggle("hidden", mode !== "register");
  els.guestSubmit?.classList.toggle("hidden", mode !== "guest");
  els.googleSubmit?.classList.toggle("hidden", mode === "guest");
  if (els.authSubmit) els.authSubmit.textContent = mode === "register" ? "Создать аккаунт" : "Войти";
  status(els.authStatus, mode === "guest" ? "Нажми «Войти как гость», чтобы войти гостем." : "");
}

async function ensureProfile(user, nicknameHint = "") {
  const profileRef = ref(db, `users/${user.uid}`);
  const snap = await get(profileRef);
  if (snap.exists()) return snap.val();
  const nickname = (nicknameHint.trim() || user.displayName || user.email?.split("@")[0] || guestName()).slice(0, 24);
  const created = {
    uid: user.uid,
    nickname,
    tag: randomTag(),
    avatarUrl: user.photoURL || avatar(nickname),
    coverUrl: "",
    bio: "",
    statusText: "Готов смотреть вместе",
    accentColor: "#8b5cf6",
    online: false,
    activeRoomId: "",
    activeRoomName: "",
    activeRoomOpen: false,
    activeRoomPublic: false,
    createdAt: Date.now(),
    updatedAt: Date.now()
  };
  await set(profileRef, created);
  return created;
}

function renderProfile() {
  if (!profile) return;
  const cover = els.miniProfile?.querySelector(".cover");
  if (cover) cover.style.backgroundImage = profile.coverUrl ? `linear-gradient(135deg,rgba(0,0,0,.12),rgba(0,0,0,.56)),url("${profile.coverUrl}")` : "";
  document.documentElement.style.setProperty("--primary", profile.accentColor || "#8b5cf6");
  if (els.miniAvatar) els.miniAvatar.src = profile.avatarUrl || avatar(profile.nickname);
  if (els.miniName) els.miniName.textContent = profile.nickname || "User";
  if (els.miniTag) els.miniTag.textContent = `#${profile.tag || "0000"}`;
  if (els.miniStatus) els.miniStatus.textContent = profile.statusText || "online";
  if (els.topUser) els.topUser.textContent = handle(profile);
  if (els.profileNick) els.profileNick.value = profile.nickname || "";
  if (els.profileTag) els.profileTag.value = profile.tag || "";
  if (els.profileAvatar) els.profileAvatar.value = profile.avatarUrl || "";
  if (els.profileCover) els.profileCover.value = profile.coverUrl || "";
  if (els.profileStatusText) els.profileStatusText.value = profile.statusText || "";
  if (els.profileBio) els.profileBio.value = profile.bio || "";
  if (els.profileAccent) els.profileAccent.value = profile.accentColor || "#8b5cf6";
  renderProfilePreview();
}
function renderProfilePreview() {
  const name = els.profileNick?.value?.trim() || profile?.nickname || "User";
  const avatarUrl = safeUrl(els.profileAvatar?.value) || profile?.avatarUrl || avatar(name);
  const coverUrl = safeUrl(els.profileCover?.value) || profile?.coverUrl || "";
  if (els.profilePreviewAvatar) els.profilePreviewAvatar.src = avatarUrl;
  if (els.profilePreviewName) els.profilePreviewName.textContent = name;
  if (els.profilePreviewTag) els.profilePreviewTag.textContent = `#${els.profileTag?.value?.trim() || profile?.tag || "0000"}`;
  const cover = els.profilePreviewCard?.querySelector(".profile-preview-cover");
  if (cover) cover.style.backgroundImage = coverUrl ? `linear-gradient(135deg,rgba(0,0,0,.12),rgba(0,0,0,.56)),url("${coverUrl}")` : "";
}
async function saveProfile(event) {
  event?.preventDefault?.();
  if (!currentUser) return;
  const nickname = (els.profileNick?.value || "").trim().slice(0, 24) || "User";
  const tag = (els.profileTag?.value || "").trim().replace(/[^a-zA-Z0-9_а-яА-ЯёЁ-]/g, "").slice(0, 12) || randomTag();
  const data = {
    nickname,
    tag,
    avatarUrl: safeUrl(els.profileAvatar?.value) || avatar(nickname),
    coverUrl: safeUrl(els.profileCover?.value),
    statusText: (els.profileStatusText?.value || "").trim().slice(0, 80),
    bio: (els.profileBio?.value || "").trim().slice(0, 280),
    accentColor: els.profileAccent?.value || "#8b5cf6",
    updatedAt: Date.now()
  };
  await update(ref(db, `users/${currentUser.uid}`), data);
  profile = { ...profile, ...data };
  renderProfile();
  status(els.profileSaveStatus, "Сохранено.");
}

function shell(isAuthenticated) {
  if (isAuthenticated) {
    hide(els.authView);
    show(els.appView);
    show(els.logoutBtn);
    show(els.openProfileBtn);
    document.body.classList.add("authenticated");
  } else {
    show(els.authView);
    hide(els.appView);
    hide(els.logoutBtn);
    hide(els.openProfileBtn);
    document.body.classList.remove("authenticated", "active-room", "chat-collapsed", "catalog-open");
    if (els.topUser) els.topUser.textContent = "Гость";
  }
}

function section(id) {
  document.querySelectorAll(".section").forEach((node) => node.classList.toggle("active", node.id === id));
  document.querySelectorAll(".nav-btn").forEach((node) => node.classList.toggle("active", node.dataset.section === id));
  const activeRoom = id === "watchSection" && !!currentRoomId;
  document.body.classList.toggle("active-room", activeRoom);
  if (!activeRoom) {
    closeSourcePanel();
    document.body.classList.remove("chat-collapsed");
  }
}

async function setupPresence() {
  if (!currentUser) return;
  const uid = currentUser.uid;
  const unsubscribe = onValue(ref(db, ".info/connected"), async (snap) => {
    if (snap.val() !== true) return;
    await onDisconnect(ref(db, `presence/${uid}`)).set({ state: "offline", lastChanged: serverTimestamp(), activeRoomId: "" });
    await onDisconnect(ref(db, `users/${uid}/online`)).set(false);
    await onDisconnect(ref(db, `users/${uid}/lastSeen`)).set(serverTimestamp());
    await set(ref(db, `presence/${uid}`), { state: "online", lastChanged: serverTimestamp(), activeRoomId: currentRoomId || "" });
    await update(ref(db, `users/${uid}`), { online: true, lastSeen: Date.now() });
  });
  globalUnsubs.push(unsubscribe);
}

function startGlobalLists() {
  unsubs(globalUnsubs);
  setupPresence();
  const onlineQuery = query(ref(db, "users"), orderByChild("online"), equalTo(true));
  globalUnsubs.push(onValue(onlineQuery, (snap) => {
    const users = [];
    snap.forEach((child) => users.push(child.val()));
    renderOnline(users);
  }));
  const roomsQuery = query(ref(db, "rooms"), orderByChild("publicOpen"), equalTo(true));
  globalUnsubs.push(onValue(roomsQuery, (snap) => {
    const rooms = [];
    snap.forEach((child) => rooms.push(child.val()));
    rooms.sort((a, b) => (b.createdAt || 0) - (a.createdAt || 0));
    renderRooms(rooms);
  }));
}

function renderOnline(users) {
  if (!els.onlineUsersList) return;
  els.onlineUsersList.innerHTML = "";
  const filtered = users.filter((user) => user.uid !== currentUser?.uid).slice(0, 20);
  if (!filtered.length) {
    els.onlineUsersList.innerHTML = '<p class="status">Пока никого онлайн не видно.</p>';
    return;
  }
  filtered.forEach((user) => {
    const canJoin = user.activeRoomId && user.activeRoomOpen;
    const card = document.createElement("div");
    card.className = "user-card";
    card.innerHTML = `
      <img src="${esc(user.avatarUrl || avatar(user.nickname))}" alt="">
      <div class="card-main">
        <strong>${esc(user.nickname || "User")}#${esc(user.tag || "0000")}</strong>
        <span class="online">● online</span>
        <span>${esc(user.statusText || "")}</span>
      </div>
      <div class="card-actions"><button class="btn primary" ${canJoin ? "" : "disabled"} data-join>Войти</button></div>`;
    card.querySelector("[data-join]")?.addEventListener("click", () => canJoin && joinRoom(user.activeRoomId));
    els.onlineUsersList.appendChild(card);
  });
}

function renderRooms(rooms) {
  if (!els.publicRoomsList) return;
  els.publicRoomsList.innerHTML = "";
  if (!rooms.length) {
    els.publicRoomsList.innerHTML = '<p class="status">Открытых комнат пока нет.</p>';
    return;
  }
  rooms.slice(0, 20).forEach((room) => {
    const card = document.createElement("div");
    card.className = "room-card";
    card.innerHTML = `
      <img src="${esc(room.ownerAvatar || avatar(room.ownerName))}" alt="">
      <div class="card-main">
        <strong>${esc(room.name || "Комната")}</strong>
        <span>Хост: ${esc(room.ownerName || "User")}</span>
        <span>${esc(room.source?.title || "Источник не выбран")}</span>
      </div>
      <button class="btn primary" type="button">Войти</button>`;
    card.querySelector("button")?.addEventListener("click", () => joinRoom(room.id));
    els.publicRoomsList.appendChild(card);
  });
}

async function createRoom() {
  if (!currentUser || !profile) return;
  const roomRef = push(ref(db, "rooms"));
  const roomId = roomRef.key;
  const name = (els.roomNameInput?.value || "").trim() || `${profile.nickname}'s room`;
  const room = {
    id: roomId,
    name,
    ownerUid: currentUser.uid,
    ownerName: handle(profile),
    ownerAvatar: profile.avatarUrl || avatar(profile.nickname),
    visibility: "open",
    joinMode: "public",
    publicOpen: true,
    source: { type: "none" },
    playback: { time: 0, playing: false, updatedAt: Date.now(), byUid: "" },
    createdAt: Date.now(),
    updatedAt: Date.now()
  };
  await set(roomRef, room);
  await joinRoom(roomId);
}

async function joinRoom(roomId) {
  if (!currentUser || !profile) return;
  const id = String(roomId || "").trim();
  if (!id) {
    status(els.roomStatus, "Введи код комнаты.");
    return;
  }
  const snap = await get(ref(db, `rooms/${id}`));
  if (!snap.exists()) {
    status(els.roomStatus, "Комната не найдена.");
    return;
  }
  const room = snap.val();
  if (room.visibility !== "open" && room.ownerUid !== currentUser.uid) {
    status(els.roomStatus, "Комната закрыта.");
    return;
  }
  await leaveRoom(false);
  currentRoomId = id;
  currentRoom = room;
  loadedSourceKey = "";
  if (els.joinRoomInput) els.joinRoomInput.value = id;
  setRoomUrl(id);
  await set(ref(db, `rooms/${id}/members/${currentUser.uid}`), {
    uid: currentUser.uid,
    nickname: profile.nickname,
    tag: profile.tag,
    avatarUrl: profile.avatarUrl || avatar(profile.nickname),
    joinedAt: Date.now()
  });
  await update(ref(db, `users/${currentUser.uid}`), {
    activeRoomId: id,
    activeRoomName: room.name || "Комната",
    activeRoomOpen: room.visibility === "open",
    activeRoomPublic: room.joinMode === "public",
    updatedAt: Date.now()
  });
  await update(ref(db, `presence/${currentUser.uid}`), { activeRoomId: id }).catch(() => {});
  subscribeRoom(id);
  section("watchSection");
}

async function leaveRoom(clearUrl = true) {
  if (!currentUser || !currentRoomId) return;
  const previousRoomId = currentRoomId;
  await remove(ref(db, `rooms/${previousRoomId}/members/${currentUser.uid}`)).catch(() => {});
  await update(ref(db, `users/${currentUser.uid}`), {
    activeRoomId: "",
    activeRoomName: "",
    activeRoomOpen: false,
    activeRoomPublic: false,
    updatedAt: Date.now()
  }).catch(() => {});
  await update(ref(db, `presence/${currentUser.uid}`), { activeRoomId: "" }).catch(() => {});
  await stopVoice();
  unsubs(roomUnsubs);
  currentRoomId = "";
  currentRoom = null;
  currentSource = { type: "none" };
  loadedSourceKey = "";
  clearChat();
  if (clearUrl) setRoomUrl("");
  closeSourcePanel();
  document.body.classList.remove("active-room", "chat-collapsed");
  status(els.roomStatus, "Ты вышел в лобби.");
}

function subscribeRoom(roomId) {
  unsubs(roomUnsubs);
  clearChat();
  roomUnsubs.push(onValue(ref(db, `rooms/${roomId}`), (snap) => {
    if (!snap.exists()) {
      status(els.roomStatus, "Комната удалена.");
      leaveRoom();
      return;
    }
    currentRoom = snap.val();
    renderRoom();
  }));
  roomUnsubs.push(onValue(ref(db, `rooms/${roomId}/members`), (snap) => {
    const members = [];
    snap.forEach((child) => members.push(child.val()));
    renderMembers(members);
  }));
  roomUnsubs.push(onChildAdded(ref(db, `roomChats/${roomId}`), (snap) => addChat(snap.val())));
}

function renderRoom() {
  if (!currentRoom) return;
  const owner = roomOwner();
  [els.openRoomBtn, els.closeRoomBtn, els.publicRoomBtn, els.inviteRoomBtn, els.setSourceBtn].forEach((button) => {
    if (button) button.disabled = !owner;
  });
  if (els.activeRoomTitle) els.activeRoomTitle.textContent = currentRoom.name || "Комната просмотра";
  const roomMode = `${currentRoom.visibility === "open" ? "открыта" : "закрыта"}, ${currentRoom.joinMode === "public" ? "публичная" : "по ссылке"}`;
  status(els.roomStatus, `${currentRoom.name || currentRoom.id} — ${roomMode}`);
  const source = normalizeStoredSource(currentRoom.source) || readSourceCache(currentRoomId) || { type: "none" };
  if (source.type !== "none") writeSourceCache(currentRoomId, source);
  loadSource(source);
  applyPlayback(currentRoom.playback);
}

function renderMembers(members) {
  if (els.memberCount) els.memberCount.textContent = `${members.length} online`;
  if (!els.membersList) return;
  els.membersList.innerHTML = "";
  members.slice(0, 16).forEach((member) => {
    const chip = document.createElement("div");
    chip.className = "member-chip";
    chip.innerHTML = `<img src="${esc(member.avatarUrl || avatar(member.nickname))}" alt=""><span>${esc(member.nickname || "User")}</span>`;
    els.membersList.appendChild(chip);
  });
}

async function setVisibility(visibility) {
  if (!roomOwner()) return;
  const publicOpen = visibility === "open" && currentRoom.joinMode === "public";
  await update(ref(db, `rooms/${currentRoomId}`), { visibility, publicOpen, updatedAt: Date.now() });
  await update(ref(db, `users/${currentUser.uid}`), { activeRoomOpen: visibility === "open", activeRoomPublic: publicOpen });
}
async function setJoinMode(joinMode) {
  if (!roomOwner()) return;
  const publicOpen = currentRoom.visibility === "open" && joinMode === "public";
  await update(ref(db, `rooms/${currentRoomId}`), { joinMode, publicOpen, updatedAt: Date.now() });
  await update(ref(db, `users/${currentUser.uid}`), { activeRoomPublic: publicOpen });
}

function youtubeId(rawUrl) {
  try {
    const url = new URL(rawUrl);
    if (url.hostname.includes("youtu.be")) return url.pathname.slice(1).split("/")[0];
    if (url.hostname.includes("youtube.com")) {
      if (url.searchParams.get("v")) return url.searchParams.get("v");
      const parts = url.pathname.split("/").filter(Boolean);
      const embedIndex = parts.indexOf("embed");
      if (embedIndex >= 0) return parts[embedIndex + 1] || "";
      const shortsIndex = parts.indexOf("shorts");
      if (shortsIndex >= 0) return parts[shortsIndex + 1] || "";
      const liveIndex = parts.indexOf("live");
      if (liveIndex >= 0) return parts[liveIndex + 1] || "";
    }
  } catch {}
  return "";
}
function vkEmbed(rawUrl) {
  try {
    const url = new URL(rawUrl);
    if (url.pathname.includes("video_ext.php")) return url.toString();
    const match = (url.pathname + url.search).match(/video(-?\d+)_(\d+)/);
    if (match) return `https://vk.com/video_ext.php?oid=${match[1]}&id=${match[2]}&hd=2`;
    return url.toString();
  } catch {
    return "";
  }
}
function normalizeStoredSource(source) {
  if (!source || !source.type || source.type === "none") return { type: "none" };
  if (source.type === "youtube") {
    const id = source.videoId || youtubeId(source.url || "");
    return id ? { ...source, videoId: id } : { type: "none" };
  }
  if (source.type === "vk") {
    const url = source.url || source.embedUrl || "";
    const embedUrl = source.embedUrl || vkEmbed(url);
    return embedUrl ? { ...source, url, embedUrl } : { type: "none" };
  }
  if (source.type === "local") return source;
  return source;
}
function toggleSourceInputs() {
  const type = els.sourceType?.value || "youtube";
  const local = type === "local";
  els.sourceUrl?.classList.toggle("hidden", local);
  els.localVideoFile?.classList.toggle("hidden", !local);
  document.querySelectorAll(".source-pill[data-source-choice]").forEach((button) => button.classList.toggle("active", button.dataset.sourceChoice === type));
  if (type === "local") status(els.sourceNote, "Local video выбирается на устройстве. После reload файл нужно выбрать снова.");
  if (type === "youtube") status(els.sourceNote, "YouTube загружается в основной контейнер без JS-подгонки геометрии.");
  if (type === "vk") status(els.sourceNote, "VK загружается через iframe. Панель источников остаётся живой и не скрывается display:none.");
}
async function setSource() {
  if (!currentRoomId) {
    status(els.roomStatus, "Сначала создай или открой комнату.");
    return;
  }
  if (!roomOwner()) {
    status(els.roomStatus, "Источник может менять только хост комнаты.");
    return;
  }
  const type = els.sourceType?.value || "youtube";
  const titleInput = (els.sourceTitle?.value || "").trim();
  let source = { type: "none" };
  if (type === "local") {
    const file = els.localVideoFile?.files?.[0];
    if (!file) {
      status(els.roomStatus, "Выбери local video файл.");
      return;
    }
    source = { type: "local", title: file.name, filename: file.name, size: file.size };
    loadSource(source);
  } else {
    const url = safeUrl(els.sourceUrl?.value);
    if (!url) {
      status(els.roomStatus, "Вставь корректную ссылку.");
      return;
    }
    if (type === "youtube") {
      const id = youtubeId(url);
      if (!id) {
        status(els.roomStatus, "Не удалось распознать YouTube ID.");
        return;
      }
      source = { type: "youtube", url, videoId: id, title: titleInput || "YouTube" };
    } else if (type === "vk") {
      source = { type: "vk", url, embedUrl: vkEmbed(url), title: titleInput || "VK Video" };
    }
  }
  writeSourceCache(currentRoomId, source);
  await update(ref(db, `rooms/${currentRoomId}`), {
    source,
    playback: { time: 0, playing: false, updatedAt: Date.now(), byUid: currentUser.uid },
    updatedAt: Date.now()
  });
  closeSourcePanel();
}

function hidePlayersForNewSource() {
  try { els.videoPlayer?.pause?.(); } catch {}
  try { ytPlayer?.pauseVideo?.(); } catch {}
  hide(els.videoPlayer);
  hide(els.youtubePlayer);
  hide(els.iframePlayer);
  hide(els.externalPlayer);
  hide(els.emptyPlayer);
  if (els.iframePlayer) els.iframePlayer.src = "about:blank";
}
function updateSourceMeta(source) {
  if (!source || source.type === "none") {
    status(els.activeRoomMeta, "Источник не выбран");
    return;
  }
  const label = source.title || source.filename || source.videoId || source.type;
  status(els.activeRoomMeta, `${source.type.toUpperCase()} • ${label}`);
}
async function loadSource(source = { type: "none" }) {
  const normalized = normalizeStoredSource(source);
  const key = sourceKey(normalized);
  currentSource = normalized;
  updateSourceMeta(normalized);
  if (key === loadedSourceKey) return;
  loadedSourceKey = key;
  hidePlayersForNewSource();
  if (!normalized || normalized.type === "none") {
    show(els.emptyPlayer);
    return;
  }
  if (normalized.type === "local") {
    loadLocalSource(normalized);
    return;
  }
  if (normalized.type === "vk") {
    show(els.iframePlayer);
    if (els.iframePlayer) els.iframePlayer.src = normalized.embedUrl || normalized.url;
    status(els.sourceNote, `VK Video: ${normalized.title || "источник"}`);
    return;
  }
  if (normalized.type === "youtube") {
    show(els.youtubePlayer);
    await loadYouTube(normalized.videoId);
    status(els.sourceNote, `YouTube: ${normalized.title || normalized.videoId}`);
  }
}
function loadLocalSource(source) {
  const file = els.localVideoFile?.files?.[0];
  if (!file) {
    show(els.externalPlayer);
    if (els.externalText) els.externalText.textContent = `Local video «${source.title || source.filename || "файл"}» нужно выбрать на этом устройстве.`;
    if (els.externalLink) els.externalLink.removeAttribute("href");
    return;
  }
  if (localVideoObjectUrl) URL.revokeObjectURL(localVideoObjectUrl);
  localVideoObjectUrl = URL.createObjectURL(file);
  show(els.videoPlayer);
  els.videoPlayer.src = localVideoObjectUrl;
  els.videoPlayer.load();
  status(els.sourceNote, `Local video: ${file.name}`);
}
function waitForYouTubeApi() {
  if (window.YT?.Player) return Promise.resolve(true);
  if (ytApiPromise) return ytApiPromise;
  ytApiPromise = new Promise((resolve) => {
    const started = Date.now();
    const check = () => {
      if (window.YT?.Player) return resolve(true);
      if (Date.now() - started > 8000) return resolve(false);
      window.setTimeout(check, 120);
    };
    check();
  });
  return ytApiPromise;
}
async function loadYouTube(videoId) {
  if (!videoId) return;
  const ready = await waitForYouTubeApi();
  if (!ready) {
    if (els.youtubePlayer) {
      els.youtubePlayer.innerHTML = `<iframe src="https://www.youtube.com/embed/${encodeURIComponent(videoId)}?rel=0&playsinline=1" allow="autoplay; fullscreen; picture-in-picture; encrypted-media" allowfullscreen referrerpolicy="strict-origin-when-cross-origin"></iframe>`;
    }
    status(els.sourceNote, "YouTube API не загрузился, включён iframe fallback.");
    return;
  }
  if (!ytPlayer) {
    ytPlayer = new window.YT.Player("youtubePlayer", {
      width: "100%",
      height: "100%",
      videoId,
      playerVars: { playsinline: 1, rel: 0, origin: location.origin },
      events: { onStateChange: onYouTubeState, onError: onYouTubeError }
    });
  } else {
    ytPlayer.loadVideoById(videoId);
  }
}
function onYouTubeError(event) {
  const code = event?.data;
  const message = code === 101 || code === 150 ? "Это YouTube-видео запрещает встраивание." : `YouTube error ${code}.`;
  status(els.roomStatus, message);
  status(els.sourceNote, message);
}
function onYouTubeState(event) {
  if (applyingRemote || !currentRoomId || currentSource.type !== "youtube") return;
  const playerState = window.YT?.PlayerState;
  if (!playerState) return;
  const time = Number(ytPlayer?.getCurrentTime?.() || 0);
  if (event.data === playerState.PLAYING) writePlayback(true, time);
  if (event.data === playerState.PAUSED) writePlayback(false, time);
}
async function writePlayback(playing, time) {
  if (!currentRoomId) return;
  await update(ref(db, `rooms/${currentRoomId}/playback`), {
    playing: !!playing,
    time: Number(time) || 0,
    updatedAt: Date.now(),
    byUid: currentUser.uid
  }).catch(() => {});
}
async function applyPlayback(playback) {
  if (!playback || playback.byUid === currentUser?.uid) return;
  const baseTime = Number(playback.time) || 0;
  const age = playback.playing ? Math.max(0, (Date.now() - (playback.updatedAt || Date.now())) / 1000) : 0;
  const target = baseTime + age;
  applyingRemote = true;
  try {
    if (currentSource.type === "local" && els.videoPlayer && !els.videoPlayer.classList.contains("hidden")) {
      if (Math.abs((els.videoPlayer.currentTime || 0) - target) > 1.2) els.videoPlayer.currentTime = target;
      if (playback.playing) await els.videoPlayer.play().catch(() => {});
      else els.videoPlayer.pause();
    }
    if (currentSource.type === "youtube" && ytPlayer?.seekTo) {
      if (Math.abs((ytPlayer.getCurrentTime?.() || 0) - target) > 1.2) ytPlayer.seekTo(target, true);
      if (playback.playing) ytPlayer.playVideo?.();
      else ytPlayer.pauseVideo?.();
    }
  } finally {
    window.setTimeout(() => { applyingRemote = false; }, 350);
  }
}

function isChatImageUrl(value) {
  try {
    const raw = String(value || '').trim();
    const url = new URL(raw);
    if (!['http:', 'https:', 'blob:', 'data:'].includes(url.protocol)) return false;
    if (url.protocol === 'data:') return /^data:image\/(gif|webp|png|jpe?g);base64,/i.test(url.href);
    const host = url.hostname.toLowerCase();
    const path = url.pathname.toLowerCase();
    if (/\.(gif|webp|png|jpe?g|bmp|svg)(\?|#|$)/i.test(url.pathname)) return true;
    return /(^|\.)giphy\.com$/i.test(host)
      || /(^|\.)tenor\.com$/i.test(host)
      || /(^|\.)imgur\.com$/i.test(host)
      || /(^|\.)gifer\.com$/i.test(host)
      || /media\d*\.giphy\.com$/i.test(host)
      || /media\.tenor\.com$/i.test(host)
      || /c\.tenor\.com$/i.test(host)
      || /i\.imgur\.com$/i.test(host)
      || path.includes('/media/');
  } catch (_) {
    return false;
  }
}
function extractGiphyId(value) {
  const raw = String(value || '').trim();
  if (!raw) return '';
  try {
    const url = new URL(raw);
    const host = url.hostname.toLowerCase();
    const parts = url.pathname.split('/').filter(Boolean).map(part => decodeURIComponent(part));
    const mediaIndex = parts.indexOf('media');
    if (mediaIndex >= 0 && parts[mediaIndex + 1]) return parts[mediaIndex + 1].replace(/[^A-Za-z0-9_-]/g, '');
    const embedIndex = parts.indexOf('embed');
    if (embedIndex >= 0 && parts[embedIndex + 1]) return parts[embedIndex + 1].replace(/[^A-Za-z0-9_-]/g, '');
    if ((host === 'giphy.com' || host.endsWith('.giphy.com')) && parts.length) {
      const last = parts[parts.length - 1].split('?')[0].split('#')[0];
      const byDash = last.match(/-([A-Za-z0-9_-]{6,})$/);
      if (byDash) return byDash[1];
      const plain = last.match(/^([A-Za-z0-9_-]{6,})$/);
      if (plain) return plain[1];
    }
    const textMatch = raw.match(/(?:giphy\.com\/(?:gifs|clips|embed|media)\/|media\d*\.giphy\.com\/media\/)([A-Za-z0-9_-]{6,})/i);
    if (textMatch) return textMatch[1];
  } catch (_) {
    const textMatch = raw.match(/(?:giphy\.com\/(?:gifs|clips|embed|media)\/|media\d*\.giphy\.com\/media\/)([A-Za-z0-9_-]{6,})/i);
    if (textMatch) return textMatch[1];
  }
  return '';
}
function normalizeChatMediaUrl(value) {
  let raw = String(value || '').trim();
  if (!raw) return '';
  try {
    // Giphy page/embed/media URL -> direct GIF URL.
    const giphyId = extractGiphyId(raw);
    if (giphyId) raw = `https://media.giphy.com/media/${giphyId}/giphy.gif`;

    const url = new URL(raw);
    if (!['http:', 'https:', 'blob:', 'data:'].includes(url.protocol)) return '';
    const host = url.hostname.toLowerCase();
    // Normalize media0/media1/etc to the stable media.giphy host only when needed.
    if (/media\d+\.giphy\.com$/i.test(host)) {
      const id = extractGiphyId(url.href);
      if (id) return `https://media.giphy.com/media/${id}/giphy.gif`;
    }
    if (!isChatImageUrl(url.href)) return '';
    return url.href;
  } catch (_) {
    return '';
  }
}
function linkifyChatText(text) {
  const source = String(text || '');
  const parts = source.split(/(https?:\/\/[^\s]+)/g);
  return parts.map(part => {
    if (/^https?:\/\//i.test(part)) {
      const safe = esc(part);
      return `<a class="chat-link" href="${safe}" target="_blank" rel="noopener noreferrer">${safe}</a>`;
    }
    return esc(part);
  }).join('');
}
function chatMediaHtml(message) {
  const media = normalizeChatMediaUrl(message?.mediaUrl || '');
  const textAsMedia = normalizeChatMediaUrl(message?.text || '');
  const url = media || textAsMedia;
  if (!url) return '';
  const safe = esc(url);
  return `<a class="chat-media-link" href="${safe}" target="_blank" rel="noopener noreferrer"><img class="chat-gif-media" src="${safe}" alt="GIF" loading="lazy" decoding="async" referrerpolicy="no-referrer" /></a>`;
}

function clearChat() {
  if (els.chatMessages) els.chatMessages.innerHTML = "";
}
function addChat(message) {
  if (!els.chatMessages || !message) return;
  const item = document.createElement("div");
  item.className = "message";
  const mediaHtml = chatMediaHtml(message);
  const text = String(message.text || '').trim();
  const textIsOnlyMedia = normalizeChatMediaUrl(text) && !message.caption;
  const textHtml = text && !textIsOnlyMedia ? `<div class="chat-text">${linkifyChatText(message.caption || text)}</div>` : '';
  item.innerHTML = `<strong>${esc(message.nickname || "User")}#${esc(message.tag || "0000")}</strong>${textHtml}${mediaHtml}<time>${new Date(message.createdAt || Date.now()).toLocaleTimeString([], { hour: "2-digit", minute: "2-digit" })}</time>`;
  els.chatMessages.appendChild(item);
  els.chatMessages.scrollTop = els.chatMessages.scrollHeight;
}
async function sendChat(text, extra = {}) {
  const value = String(text || "").trim();
  const mediaUrl = normalizeChatMediaUrl(extra.mediaUrl || value);
  const caption = String(extra.caption || '').trim().slice(0, 180);
  if ((!value && !mediaUrl) || !currentRoomId || !currentUser || !profile) return;
  await push(ref(db, `roomChats/${currentRoomId}`), {
    uid: currentUser.uid,
    nickname: profile.nickname,
    tag: profile.tag,
    text: mediaUrl && value === mediaUrl ? '' : value,
    caption,
    mediaUrl,
    type: mediaUrl ? 'gif' : 'text',
    createdAt: Date.now()
  });
}
async function sendGifFromPrompt() {
  openGifDialog();
}

function ensureGifDialog() {
  let root = document.getElementById('jc116GifDialog');
  if (root) return root;
  root = document.createElement('div');
  root.id = 'jc116GifDialog';
  root.className = 'hidden';
  root.innerHTML = `
    <div class="jc116-gif-backdrop" data-jc116-gif-close></div>
    <div class="jc116-gif-modal" role="dialog" aria-modal="true" aria-label="Отправить GIF">
      <button type="button" class="jc116-gif-x" data-jc116-gif-close aria-label="Закрыть">×</button>
      <h3>Отправить GIF</h3>
      <p>Вставь ссылку Giphy или прямую ссылку на GIF / WebP / PNG / JPG. Giphy теперь автоматически конвертируется в рабочий GIF.</p>
      <input id="jc116GifInput" placeholder="https://media.giphy.com/media/.../giphy.gif" autocomplete="off" />
      <div class="jc116-gif-row"><input id="jc117GiphySearch" placeholder="Поиск Giphy: funny, cat, anime..." autocomplete="off" /><button type="button" class="btn soft" id="jc117GiphySearchBtn">Найти</button></div><div class="jc117-giphy-grid" id="jc117GiphyGrid" aria-label="Giphy picker"></div><div class="jc116-gif-preview" id="jc116GifPreview">Preview</div>
      <div class="jc116-gif-actions">
        <button type="button" class="btn soft" data-jc116-gif-close>Отмена</button>
        <button type="button" class="btn primary" id="jc116GifSend">Отправить GIF</button>
      </div>
      <p class="status" id="jc116GifStatus">Можно вставить giphy.com/gifs/... или выбрать GIF ниже.</p>
    </div>`;
  document.body.appendChild(root);
  const input = root.querySelector('#jc116GifInput');
  const preview = root.querySelector('#jc116GifPreview');
  const stat = root.querySelector('#jc116GifStatus');
  const searchInput = root.querySelector('#jc117GiphySearch');
  const searchBtn = root.querySelector('#jc117GiphySearchBtn');
  const grid = root.querySelector('#jc117GiphyGrid');
  const fallbackGifs = [
    'https://media.giphy.com/media/111ebonMs90YLu/giphy.gif',
    'https://media.giphy.com/media/3oEjI6SIIHBdRxXI40/giphy.gif',
    'https://media.giphy.com/media/13CoXDiaCcCoyk/giphy.gif',
    'https://media.giphy.com/media/l0MYt5jPR6QX5pnqM/giphy.gif',
    'https://media.giphy.com/media/ICOgUNjpvO0PC/giphy.gif',
    'https://media.giphy.com/media/26ufdipQqU2lhNA4g/giphy.gif',
    'https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif',
    'https://media.giphy.com/media/xT0xeJpnrWC4XWblEk/giphy.gif'
  ];
  function pickGif(url) {
    const mediaUrl = normalizeChatMediaUrl(url);
    if (!mediaUrl) return;
    input.value = mediaUrl;
    renderPreview();
  }
  function renderGrid(urls, note = '') {
    if (!grid) return;
    const clean = [...new Set((urls || []).map(normalizeChatMediaUrl).filter(Boolean))].slice(0, 12);
    grid.innerHTML = clean.map((url) => `<button type="button" class="jc117-giphy-tile" data-gif-url="${esc(url)}"><img src="${esc(url)}" alt="GIF" loading="lazy" decoding="async" referrerpolicy="no-referrer"></button>`).join('') || '<div class="status">GIF не найдены.</div>';
    if (note) stat.textContent = note;
  }
  async function searchGiphy(query = '') {
    const q = String(query || '').trim();
    if (!q) {
      renderGrid(fallbackGifs, 'Быстрые GIF готовы. Можно выбрать или вставить ссылку выше.');
      return;
    }
    stat.textContent = 'Ищу GIF...';
    try {
      // Public beta key used only as a convenience. If Giphy rejects it, fallback stays working.
      const url = `https://api.giphy.com/v1/gifs/search?api_key=dc6zaTOxFJmzC&q=${encodeURIComponent(q)}&limit=12&rating=pg-13`;
      const res = await fetch(url, { cache: 'no-store' });
      if (!res.ok) throw new Error('giphy failed');
      const data = await res.json();
      const urls = (data?.data || []).map((item) => item?.images?.fixed_height?.url || item?.images?.downsized_medium?.url || item?.images?.original?.url).filter(Boolean);
      renderGrid(urls.length ? urls : fallbackGifs, urls.length ? 'Выбери GIF ниже.' : 'Giphy не ответил, показал быстрые GIF.');
    } catch (_) {
      renderGrid(fallbackGifs, 'Giphy сейчас недоступен, показал быстрые GIF.');
    }
  }
  grid?.addEventListener('click', (event) => {
    const tile = event.target?.closest?.('[data-gif-url]');
    if (!tile) return;
    pickGif(tile.dataset.gifUrl || '');
  });
  searchBtn?.addEventListener('click', () => searchGiphy(searchInput?.value || ''));
  searchInput?.addEventListener('keydown', (event) => {
    if (event.key === 'Enter') { event.preventDefault(); searchGiphy(searchInput.value || ''); }
  });
  searchGiphy('');
  function renderPreview() {
    const mediaUrl = normalizeChatMediaUrl(input.value || '');
    if (mediaUrl) {
      preview.innerHTML = `<img src="${esc(mediaUrl)}" alt="GIF preview" />`;
      stat.textContent = '';
    } else {
      preview.textContent = 'Preview';
    }
  }
  input.addEventListener('input', renderPreview);
  input.addEventListener('keydown', (event) => {
    if (event.key === 'Enter') { event.preventDefault(); root.querySelector('#jc116GifSend')?.click(); }
    if (event.key === 'Escape') closeGifDialog();
  });
  root.querySelectorAll('[data-jc116-gif-close]').forEach((button) => button.addEventListener('click', closeGifDialog));
  root.querySelector('#jc116GifSend')?.addEventListener('click', async () => {
    if (!currentRoomId) {
      stat.textContent = 'Сначала войди в комнату.';
      return;
    }
    const mediaUrl = normalizeChatMediaUrl(input.value || '');
    if (!mediaUrl) {
      stat.textContent = 'Нужна ссылка Giphy или прямая ссылка на GIF / WebP / PNG / JPG.';
      return;
    }
    await sendChat('', { mediaUrl });
    input.value = '';
    preview.textContent = 'Preview';
    closeGifDialog();
  });
  return root;
}
function openGifDialog() {
  if (!currentRoomId) {
    status(els.roomStatus, 'Сначала войди в комнату.');
    return;
  }
  const root = ensureGifDialog();
  root.classList.remove('hidden');
  document.body.classList.add('jc116-gif-dialog-open');
  setTimeout(() => root.querySelector('#jc116GifInput')?.focus(), 30);
}
function closeGifDialog() {
  const root = document.getElementById('jc116GifDialog');
  root?.classList.add('hidden');
  document.body.classList.remove('jc116-gif-dialog-open');
}
function ensureGifButton() {
  const tools = document.querySelector('.composer-tools');
  if (!tools) return null;
  let button = tools.querySelector('[data-jc116-gif], [data-jc115-gif-url], .gif-tool');
  if (!button) {
    button = document.createElement('button');
    button.type = 'button';
    button.className = 'gif-tool';
    button.textContent = 'GIF';
    tools.appendChild(button);
  }
  button.type = 'button';
  button.classList.add('gif-tool');
  button.dataset.jc116Gif = '1';
  button.textContent = 'GIF';
  return button;
}

async function startVoice() {
  if (!currentRoomId) {
    status(els.voiceStatus, "Сначала войди в комнату.");
    return;
  }
  try {
    localStream = await navigator.mediaDevices.getUserMedia({ audio: true, video: false });
    voiceOn = true;
    els.voiceBtn?.classList.add("active");
    status(els.voiceStatus, "Микрофон включён.");
  } catch {
    status(els.voiceStatus, "Микрофон недоступен или доступ запрещён.");
  }
}
async function stopVoice() {
  if (localStream) {
    localStream.getTracks().forEach((track) => track.stop());
    localStream = null;
  }
  voiceOn = false;
  els.voiceBtn?.classList.remove("active");
  status(els.voiceStatus, "Голос выключен.");
}
async function toggleVoice() {
  if (voiceOn) await stopVoice();
  else await startVoice();
}

function openSourcePanel() {
  els.sourcePanel?.classList.add("open");
  document.body.classList.add("catalog-open");
  els.catalogToggleBtn?.classList.add("active");
}
function closeSourcePanel() {
  els.sourcePanel?.classList.remove("open");
  document.body.classList.remove("catalog-open");
  els.catalogToggleBtn?.classList.remove("active");
}
function toggleSourcePanel() {
  if (els.sourcePanel?.classList.contains("open")) closeSourcePanel();
  else openSourcePanel();
}
async function toggleFullscreen() {
  const target = els.playerFrame || document.documentElement;
  try {
    if (document.fullscreenElement) await document.exitFullscreen();
    else await target.requestFullscreen({ navigationUI: "hide" });
  } catch {
    status(els.roomStatus, "Браузер не дал включить fullscreen.");
  }
}
function syncFullscreenClass() {
  document.body.classList.toggle("player-fullscreen", !!document.fullscreenElement);
  els.fullscreenBtn?.classList.toggle("active", !!document.fullscreenElement);
}

function bindEvents() {
  document.querySelectorAll(".nav-btn").forEach((button) => {
    button.addEventListener("click", () => section(button.dataset.section));
  });
  els.openProfileBtn?.addEventListener("click", () => section("profileSection"));
  els.loginTab?.addEventListener("click", () => setAuthMode("login"));
  els.registerTab?.addEventListener("click", () => setAuthMode("register"));
  els.guestTab?.addEventListener("click", () => setAuthMode("guest"));
  els.googleSubmit?.addEventListener("click", async () => {
    try {
      status(els.authStatus, "Открываю Google-вход...");
      const provider = new GoogleAuthProvider();
      provider.setCustomParameters({ prompt: "select_account" });
      const result = await signInWithPopup(auth, provider);
      await ensureProfile(result.user, result.user.displayName || "");
    } catch (error) {
      status(els.authStatus, error.message);
    }
  });
  els.guestSubmit?.addEventListener("click", async () => {
    try {
      status(els.authStatus, "Вхожу как гость...");
      const result = await signInAnonymously(auth);
      await ensureProfile(result.user, guestName());
    } catch (error) {
      status(els.authStatus, error.message);
    }
  });
  els.authForm?.addEventListener("submit", async (event) => {
    event.preventDefault();
    const email = (els.emailInput?.value || "").trim();
    const password = els.passwordInput?.value || "";
    try {
      status(els.authStatus, "Загрузка...");
      if (authMode === "register") {
        const result = await createUserWithEmailAndPassword(auth, email, password);
        await ensureProfile(result.user, els.nickInput?.value?.trim() || "");
      } else {
        await signInWithEmailAndPassword(auth, email, password);
      }
    } catch (error) {
      status(els.authStatus, error.message);
    }
  });
  els.logoutBtn?.addEventListener("click", async () => {
    await leaveRoom(true).catch(() => {});
    await signOut(auth);
  });
  els.createRoomBtn?.addEventListener("click", createRoom);
  els.joinRoomBtn?.addEventListener("click", () => joinRoom(els.joinRoomInput?.value));
  els.leaveRoomBtn?.addEventListener("click", async () => {
    await leaveRoom(true);
    section("homeSection");
  });
  els.copyInviteBtn?.addEventListener("click", async () => {
    const roomId = currentRoomId || (els.joinRoomInput?.value || "").trim();
    if (!roomId) {
      status(els.roomStatus, "Сначала создай или введи комнату.");
      return;
    }
    const url = new URL(location.href);
    url.searchParams.set("room", roomId);
    url.searchParams.set("v", BUILD);
    await navigator.clipboard?.writeText(url.toString()).catch(() => {});
    status(els.roomStatus, "Invite-ссылка скопирована.");
  });
  els.openRoomBtn?.addEventListener("click", () => setVisibility("open"));
  els.closeRoomBtn?.addEventListener("click", () => setVisibility("closed"));
  els.publicRoomBtn?.addEventListener("click", () => setJoinMode("public"));
  els.inviteRoomBtn?.addEventListener("click", () => setJoinMode("invite"));
  els.sourceType?.addEventListener("change", toggleSourceInputs);
  document.querySelectorAll(".source-pill[data-source-choice]").forEach((button) => {
    button.addEventListener("click", () => {
      if (els.sourceType) els.sourceType.value = button.dataset.sourceChoice || "youtube";
      toggleSourceInputs();
    });
  });
  els.setSourceBtn?.addEventListener("click", setSource);
  els.catalogToggleBtn?.addEventListener("click", toggleSourcePanel);
  els.closeSourcePanelBtn?.addEventListener("click", closeSourcePanel);
  els.chatToggleBtn?.addEventListener("click", () => {
    document.body.classList.toggle("chat-collapsed");
    els.chatToggleBtn?.classList.toggle("active", !document.body.classList.contains("chat-collapsed"));
  });
  els.fullscreenBtn?.addEventListener("click", toggleFullscreen);
  document.addEventListener("fullscreenchange", syncFullscreenClass);
  els.voiceBtn?.addEventListener("click", toggleVoice);
  els.chatForm?.addEventListener("submit", async (event) => {
    event.preventDefault();
    const text = els.chatInput?.value || "";
    await sendChat(text);
    if (els.chatInput) els.chatInput.value = "";
  });
  document.querySelectorAll(".composer-tools [data-emoji]").forEach((button) => {
    button.addEventListener("click", () => {
      if (!els.chatInput) return;
      els.chatInput.value = `${els.chatInput.value}${button.dataset.emoji || ""}`;
      els.chatInput.focus();
    });
  });
  document.querySelectorAll(".composer-tools [data-jc115-gif-url], .composer-tools [data-jc116-gif], .composer-tools .gif-tool").forEach((button) => {
    button.dataset.jc116Gif = "1";
    button.addEventListener("click", (event) => { event.preventDefault(); event.stopPropagation(); openGifDialog(); });
  });
  els.videoPlayer?.addEventListener("play", () => {
    if (!applyingRemote && currentSource.type === "local") writePlayback(true, els.videoPlayer.currentTime);
  });
  els.videoPlayer?.addEventListener("pause", () => {
    if (!applyingRemote && currentSource.type === "local") writePlayback(false, els.videoPlayer.currentTime);
  });
  els.videoPlayer?.addEventListener("seeked", () => {
    if (!applyingRemote && currentSource.type === "local") writePlayback(!els.videoPlayer.paused, els.videoPlayer.currentTime);
  });
  [els.profileNick, els.profileTag, els.profileAvatar, els.profileCover].forEach((input) => input?.addEventListener("input", renderProfilePreview));
  els.profileAccent?.addEventListener("input", () => document.documentElement.style.setProperty("--primary", els.profileAccent.value || "#8b5cf6"));
  els.saveProfileBtn?.addEventListener("click", saveProfile);
}

function startAuthListener() {
  onAuthStateChanged(auth, async (user) => {
    currentUser = user;
    if (!user) {
      profile = null;
      currentRoomId = "";
      currentRoom = null;
      unsubs(roomUnsubs);
      unsubs(globalUnsubs);
      clearChat();
      shell(false);
      return;
    }
    profile = await ensureProfile(user, user.displayName || "");
    shell(true);
    renderProfile();
    startGlobalLists();
    const urlRoom = roomFromUrl();
    if (urlRoom && !pendingUrlRoomJoin) {
      pendingUrlRoomJoin = true;
      await joinRoom(urlRoom).catch((error) => status(els.roomStatus, error.message));
      pendingUrlRoomJoin = false;
    } else if (!currentRoomId) {
      section("homeSection");
    }
  });
}

try {
  initFirebase();
  bindEvents();
  setAuthMode("login");
  toggleSourceInputs();
  startAuthListener();
} catch (error) {
  console.error(error);
  status(els.authStatus, error.message);
}


/* =========================================================
   JustClover Stage 114 — emergency static load guard
   No wallpaper code, no reload loop, no CDN index loader.
   ========================================================= */
(function(){
  const BUILD = "stage117-giphy-picker-restore-stable-20260503-1";
  window.JUSTCLOVER_BUILD = BUILD;
  function cleanupOldWallpaper(){
    document.querySelectorAll('[id^="jc90"],[id^="jc91"],[id^="jc92"],[id^="jc93"],[id^="jc94"],[id^="jc95"],[id^="jc96"],[id^="jc97"],[id^="jc98"],[id^="jc99"],[id^="jc100"],[id^="jc101"],[id^="jc102"],[id^="jc103"],[id^="jc104"],[id^="jc105"],[id^="jc106"],[id^="jc107"],[id^="jc108"],[id^="jc109"],[id^="jc110"],[id^="jc111"],[id^="jc112"],[id^="jc113"],.jc101SurfaceBg,.jc99SurfaceBg,.jc-room-bg,.jc-chat-bg').forEach(el => {
      try { el.remove(); } catch(_) {}
    });
    document.body?.classList?.remove(
      'jc101-chat-glass','jc101-chat-video','jc105-room-bg-active','jc110-clean-chat-wallpaper','jc111-clean-chat-wallpaper','jc112-chat-wallpaper'
    );
  }
  cleanupOldWallpaper();
  setTimeout(cleanupOldWallpaper, 300);
  setTimeout(cleanupOldWallpaper, 1200);
  window.jc114EmergencyDebug = function(){
    return {
      build: window.JUSTCLOVER_BUILD,
      staticIndex: true,
      noCdnIndexLoader: true,
      oldWallpaperNodes: document.querySelectorAll('.jc101SurfaceBg,.jc99SurfaceBg,[id^="jc10"],[id^="jc11"],[id^="jc9"]').length,
      authView: !!document.getElementById('authView'),
      appView: !!document.getElementById('appView'),
      playerFrameVisible: !!document.querySelector('.player-frame'),
      iframeVisible: !!document.querySelector('#youtubePlayer, #iframePlayer, #videoPlayer')
    };
  };
})();


/* =========================================================
   JustClover Stage 115 — restore GIF chat messages safely
   GIF is chat message only. No wallpapers, no player changes.
   ========================================================= */
(function(){
  const BUILD = 'stage117-giphy-picker-restore-stable-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;
  window.jc115GifChatDebug = function(){
    return {
      build: window.JUSTCLOVER_BUILD,
      gifButton: !!document.querySelector('[data-jc115-gif-url]'),
      chatMessages: !!document.getElementById('chatMessages'),
      chatForm: !!document.getElementById('chatForm'),
      oldWallpaperNodes: document.querySelectorAll('.jc101SurfaceBg,.jc99SurfaceBg,.jc-room-bg,.jc-chat-bg,[id^="jc10"],[id^="jc11"],[id^="jc9"]').length,
      playerFrameVisible: !!document.querySelector('.player-frame'),
      iframeVisible: !!document.querySelector('#youtubePlayer, #iframePlayer, #videoPlayer')
    };
  };
})();


/* =========================================================
   JustClover Stage 116 — robust GIF button dialog
   The handler is delegated in capture phase so the GIF button works even if
   older cached handlers or DOM re-renders are present.
   ========================================================= */
(function(){
  const BUILD = 'stage117-giphy-picker-restore-stable-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;
  function bootGifButton(){
    try { ensureGifButton(); } catch (_) {}
  }
  document.addEventListener('click', (event) => {
    const btn = event.target?.closest?.('[data-jc116-gif], [data-jc115-gif-url], .gif-tool');
    if (!btn) return;
    event.preventDefault();
    event.stopPropagation();
    event.stopImmediatePropagation?.();
    try { openGifDialog(); } catch (err) { console.error('GIF dialog failed', err); }
  }, true);
  if (document.readyState === 'loading') document.addEventListener('DOMContentLoaded', bootGifButton, { once:true });
  else bootGifButton();
  setTimeout(bootGifButton, 500);
  setTimeout(bootGifButton, 1500);
  window.jc116GifButtonDebug = function(){
    return {
      build: BUILD,
      gifButton: !!document.querySelector('[data-jc116-gif], [data-jc115-gif-url], .gif-tool'),
      dialogExists: !!document.getElementById('jc116GifDialog'),
      chatForm: !!document.getElementById('chatForm'),
      chatInput: !!document.getElementById('chatInput'),
      roomId: currentRoomId || '',
      playerFrameVisible: !!document.querySelector('.player-frame'),
      iframeVisible: !!document.querySelector('#youtubePlayer, #iframePlayer, #videoPlayer')
    };
  };
})();

/* =========================================================
   JustClover Stage 117 — Giphy picker restore debug
   ========================================================= */
(function(){
  const BUILD = 'stage117-giphy-picker-restore-stable-20260503-1';
  window.JUSTCLOVER_BUILD = BUILD;
  window.jc117GiphyDebug = function(){
    return {
      build: BUILD,
      gifButton: !!document.querySelector('[data-jc116-gif], [data-jc115-gif-url], .gif-tool'),
      dialogExists: !!document.getElementById('jc116GifDialog'),
      giphySearch: !!document.getElementById('jc117GiphySearch'),
      giphyGrid: !!document.getElementById('jc117GiphyGrid'),
      normalizeGiphyPage: typeof normalizeChatMediaUrl === 'function' ? normalizeChatMediaUrl('https://giphy.com/gifs/cat-kitten-ICOgUNjpvO0PC') : '',
      chatForm: !!document.getElementById('chatForm'),
      roomId: (typeof currentRoomId !== 'undefined' ? currentRoomId : ''),
      playerFrameVisible: !!document.querySelector('.player-frame'),
      iframeVisible: !!document.querySelector('#youtubePlayer, #iframePlayer, #videoPlayer')
    };
  };
})();
