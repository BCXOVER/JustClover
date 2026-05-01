import { firebaseConfig } from "./firebase-config.js";
import { initializeApp } from "https://www.gstatic.com/firebasejs/10.12.5/firebase-app.js";
import { getAuth,onAuthStateChanged,createUserWithEmailAndPassword,signInWithEmailAndPassword,signInAnonymously,signInWithPopup,GoogleAuthProvider,signOut } from "https://www.gstatic.com/firebasejs/10.12.5/firebase-auth.js";
import { getDatabase,ref,get,set,update,push,remove,onValue,onChildAdded,onDisconnect,serverTimestamp,query,orderByChild,equalTo,off } from "https://www.gstatic.com/firebasejs/10.12.5/firebase-database.js";
console.log('JustClover social invite bg app.js loaded: socialinvitebg-20260501-10');
window.addEventListener('error', e => console.error('JustClover runtime error:', e.message, e.error));
const $=id=>document.getElementById(id);
const els={setupWarning:$('setupWarning'),authView:$('authView'),appView:$('appView'),topUser:$('topUser'),logoutBtn:$('logoutBtn'),openProfileBtn:$('openProfileBtn'),loginTab:$('loginTab'),registerTab:$('registerTab'),guestTab:$('guestTab'),authForm:$('authForm'),guestSubmit:$('guestSubmit'),googleSubmit:$('googleSubmit'),authSubmit:$('authSubmit'),nickLabel:$('nickLabel'),nickInput:$('nickInput'),emailInput:$('emailInput'),passwordInput:$('passwordInput'),authStatus:$('authStatus'),miniProfile:$('miniProfile'),miniAvatar:$('miniAvatar'),miniName:$('miniName'),miniTag:$('miniTag'),miniStatus:$('miniStatus'),roomNameInput:$('roomNameInput'),createRoomBtn:$('createRoomBtn'),joinRoomInput:$('joinRoomInput'),joinRoomBtn:$('joinRoomBtn'),copyInviteBtn:$('copyInviteBtn'),openRoomBtn:$('openRoomBtn'),closeRoomBtn:$('closeRoomBtn'),publicRoomBtn:$('publicRoomBtn'),inviteRoomBtn:$('inviteRoomBtn'),roomStatus:$('roomStatus'),membersList:$('membersList'),sourceType:$('sourceType'),sourceUrl:$('sourceUrl'),localVideoFile:$('localVideoFile'),sourceTitle:$('sourceTitle'),setSourceBtn:$('setSourceBtn'),sourceOpenBtn:$('sourceOpenBtn'),sourceOpenBtnMirror:$('sourceOpenBtnMirror'),sourceHelp:$('sourceHelp'),sourceNote:$('sourceNote'),videoPlayer:$('videoPlayer'),youtubePlayer:$('youtubePlayer'),youtubeWrap:$('youtubeWrap'),iframePlayer:$('iframePlayer'),externalPlayer:$('externalPlayer'),externalText:$('externalText'),externalLink:$('externalLink'),emptyPlayer:$('emptyPlayer'),publicRoomsList:$('publicRoomsList'),onlineUsersList:$('onlineUsersList'),chatMessages:$('chatMessages'),chatForm:$('chatForm'),chatInput:$('chatInput'),voiceBtn:$('voiceBtn'),voiceStatus:$('voiceStatus'),remoteAudio:$('remoteAudio'),profileNick:$('profileNick'),profileTag:$('profileTag'),profileAvatar:$('profileAvatar'),profileCover:$('profileCover'),profileStatusText:$('profileStatusText'),profileBio:$('profileBio'),profileAccent:$('profileAccent'),saveProfileBtn:$('saveProfileBtn'),profileSaveStatus:$('profileSaveStatus'),profilePreviewCard:$('profilePreviewCard'),profilePreviewAvatar:$('profilePreviewAvatar'),profilePreviewName:$('profilePreviewName'),profilePreviewTag:$('profilePreviewTag'),friendSearchInput:$('friendSearchInput'),friendSearchBtn:$('friendSearchBtn'),friendSearchResults:$('friendSearchResults'),incomingRequestsList:$('incomingRequestsList'),friendsList:$('friendsList'),dmEmptyState:$('dmEmptyState'),dmTitle:$('dmTitle'),dmMessages:$('dmMessages'),dmForm:$('dmForm'),dmText:$('dmText'),dmMediaUrl:$('dmMediaUrl'),sendDmBtn:$('sendDmBtn'),friendRoomJoinBtn:$('friendRoomJoinBtn'),mediaPicker:$('mediaPicker'),mediaPickerBackdrop:$('mediaPickerBackdrop'),mediaPickerCloseBtn:$('mediaPickerCloseBtn'),mediaSearchForm:$('mediaSearchForm'),mediaSearchInput:$('mediaSearchInput'),mediaPickerResults:$('mediaPickerResults'),mediaPickerHint:$('mediaPickerHint'),mediaPasteBtn:$('mediaPasteBtn'),mediaExternalBtn:$('mediaExternalBtn'),youtubeApiBox:$('youtubeApiBox'),ytApiKeyInput:$('ytApiKeyInput'),saveYtApiKeyBtn:$('saveYtApiKeyBtn'),emojiBtn:$('emojiBtn'),gifBtn:$('gifBtn'),emojiPanel:$('emojiPanel'),reactionBurst:$('reactionBurst'),gifPicker:$('gifPicker'),gifPickerBackdrop:$('gifPickerBackdrop'),gifPickerCloseBtn:$('gifPickerCloseBtn'),gifSearchForm:$('gifSearchForm'),gifSearchInput:$('gifSearchInput'),gifPickerResults:$('gifPickerResults'),gifPickerHint:$('gifPickerHint'),giphyApiKeyInput:$('giphyApiKeyInput'),saveGiphyApiKeyBtn:$('saveGiphyApiKeyBtn'),gifPasteBtn:$('gifPasteBtn'),openGiphyFromPickerBtn:$('openGiphyFromPickerBtn')};
let app,auth,db,authMode='login',currentUser=null,profile=null,currentRoomId='',currentRoom=null,currentSource={type:'none'},loadedSourceKey='',applyingRemote=false,roomUnsubs=[],globalUnsubs=[],ytPlayer=null,ytPoll=null,lastYtTime=0,localStream=null,voiceOn=false,localVideoObjectUrl='',currentDmFriend=null,currentDmUnsub=null,allUsersCache=[],currentFriends=[],currentIncomingRequests=[],mediaPickerSource='youtube';const peers=new Map(),rtcConfig={iceServers:[{urls:'stun:stun.l.google.com:19302'}]};
function status(el,t){if(el)el.textContent=t||''}function show(el){el?.classList.remove('hidden')}function hide(el){el?.classList.add('hidden')}function esc(v){return String(v??'').replaceAll('&','&amp;').replaceAll('<','&lt;').replaceAll('>','&gt;').replaceAll('"','&quot;').replaceAll("'",'&#039;')}function tag(){return String(Math.floor(1000+Math.random()*9000))}function guest(){return`Guest${Math.floor(1000+Math.random()*9000)}`}function avatar(n='JC'){return`https://ui-avatars.com/api/?name=${encodeURIComponent((n||'JC').slice(0,2).toUpperCase())}&background=111827&color=fff&bold=true&size=256`}function handle(p){return p?`${p.nickname||'User'}#${p.tag||'0000'}`:''}function safeUrl(v){try{const u=new URL(String(v||''));return['http:','https:'].includes(u.protocol)?u.toString():''}catch{return''}}function roomFromUrl(){return new URL(location.href).searchParams.get('room')||''}function setRoomUrl(roomId){const u=new URL(location.href);roomId?u.searchParams.set('room',roomId):u.searchParams.delete('room');history.replaceState({},'',u)}function init(){if(!firebaseConfig?.apiKey||String(firebaseConfig.apiKey).startsWith('PASTE_')){show(els.setupWarning);throw Error('Firebase config is not configured.')}app=initializeApp(firebaseConfig);auth=getAuth(app);db=getDatabase(app)}function listen(r,cb){return onValue(r,cb)}function cleanRoom(){roomUnsubs.forEach(f=>f&&f());roomUnsubs=[]}function cleanGlobal(){globalUnsubs.forEach(f=>f&&f());globalUnsubs=[]}function thread(a,b){return[a,b].sort().join('__')}function isImg(u){return/\.(png|jpe?g|gif|webp|bmp|svg)(\?|$)/i.test(String(u||''))}function applyTheme(t){document.body.dataset.theme=t;localStorage.setItem('jc-theme',t);document.querySelectorAll('.theme-card').forEach(c=>c.classList.toggle('active',c.dataset.themeChoice===t))}
function setAuthMode(m){authMode=m;els.loginTab.classList.toggle('active',m==='login');els.registerTab.classList.toggle('active',m==='register');els.guestTab.classList.toggle('active',m==='guest');els.nickLabel.classList.toggle('hidden',m!=='register'&&m!=='guest');els.authForm.classList.toggle('hidden',m==='guest');els.guestSubmit.classList.toggle('hidden',m!=='guest');els.googleSubmit.classList.toggle('hidden',m==='guest');els.authSubmit.textContent=m==='register'?'Создать аккаунт':'Войти';status(els.authStatus,'')}
async function ensureProfile(user,nick=''){const pr=ref(db,`users/${user.uid}`),s=await get(pr);if(s.exists())return s.val();const nickname=(nick.trim()||user.displayName||user.email?.split('@')[0]||guest()).slice(0,24);const p={uid:user.uid,nickname,tag:tag(),avatarUrl:user.photoURL||avatar(nickname),coverUrl:'',bio:'',statusText:'Готов смотреть вместе',accentColor:'#6d5dfc',online:false,activeRoomId:'',activeRoomName:'',activeRoomOpen:false,activeRoomPublic:false,createdAt:Date.now(),updatedAt:Date.now()};await set(pr,p);return p}
function renderProfile(){if(!profile)return;const cover=els.miniProfile.querySelector('.cover');cover.style.backgroundImage=profile.coverUrl?`linear-gradient(135deg,rgba(0,0,0,.15),rgba(0,0,0,.55)),url("${profile.coverUrl}")`:'';document.documentElement.style.setProperty('--primary',profile.accentColor||'#6d5dfc');els.miniAvatar.src=profile.avatarUrl||avatar(profile.nickname);els.miniName.textContent=profile.nickname||'User';els.miniTag.textContent=`#${profile.tag||'0000'}`;els.miniStatus.textContent=profile.statusText||'online';els.topUser.textContent=handle(profile);els.profileNick.value=profile.nickname||'';els.profileTag.value=profile.tag||'';els.profileAvatar.value=profile.avatarUrl||'';els.profileCover.value=profile.coverUrl||'';els.profileStatusText.value=profile.statusText||'';els.profileBio.value=profile.bio||'';els.profileAccent.value=profile.accentColor||'#6d5dfc';renderPreview()}function renderPreview(){const n=els.profileNick.value?.trim()||profile?.nickname||'User',a=safeUrl(els.profileAvatar.value)||profile?.avatarUrl||avatar(n),c=safeUrl(els.profileCover.value)||profile?.coverUrl||'';els.profilePreviewAvatar.src=a;els.profilePreviewName.textContent=n;els.profilePreviewTag.textContent=`#${els.profileTag.value?.trim()||profile?.tag||'0000'}`;els.profilePreviewCard.querySelector('.profile-preview-cover').style.backgroundImage=c?`linear-gradient(135deg,rgba(0,0,0,.15),rgba(0,0,0,.55)),url("${c}")`:''}
function shell(ok){ok?(hide(els.authView),show(els.appView),show(els.logoutBtn),show(els.openProfileBtn)):(show(els.authView),hide(els.appView),hide(els.logoutBtn),hide(els.openProfileBtn),els.topUser.textContent='Гость')}
async function presence(){if(!currentUser)return;const uid=currentUser.uid;globalUnsubs.push(listen(ref(db,'.info/connected'),async s=>{if(s.val()!==true)return;await onDisconnect(ref(db,`presence/${uid}`)).set({state:'offline',lastChanged:serverTimestamp(),activeRoomId:''});await onDisconnect(ref(db,`users/${uid}/online`)).set(false);await onDisconnect(ref(db,`users/${uid}/lastSeen`)).set(serverTimestamp());await set(ref(db,`presence/${uid}`),{state:'online',lastChanged:serverTimestamp(),activeRoomId:currentRoomId||''});await update(ref(db,`users/${uid}`),{online:true,lastSeen:Date.now()})}))}
function startLists(){globalUnsubs.push(listen(query(ref(db,'users'),orderByChild('online'),equalTo(true)),s=>{const a=[];s.forEach(x=>a.push(x.val()));renderOnline(a)}));globalUnsubs.push(listen(query(ref(db,'rooms'),orderByChild('publicOpen'),equalTo(true)),s=>{const a=[];s.forEach(x=>a.push(x.val()));a.sort((x,y)=>(y.createdAt||0)-(x.createdAt||0));renderRooms(a)}));globalUnsubs.push(listen(ref(db,'users'),s=>{const a=[];s.forEach(x=>a.push(x.val()));allUsersCache=a}));subscribeFriends()}
function renderOnline(users){els.onlineUsersList.innerHTML='';const a=users.filter(u=>u.uid!==currentUser?.uid);if(!a.length){els.onlineUsersList.innerHTML='<p class="status">Пока никого онлайн не видно.</p>';return}a.forEach(u=>{const can=u.activeRoomId&&u.activeRoomOpen,card=document.createElement('div');card.className='user-card';card.innerHTML=`<img src="${esc(u.avatarUrl||avatar(u.nickname))}"><div class="card-main"><strong>${esc(u.nickname||'User')}#${esc(u.tag||'0000')}</strong><span class="online">● online</span><span>${esc(u.statusText||'')}</span></div><div class="card-actions"><button class="btn primary" ${can?'':'disabled'} data-join>Войти</button><button class="btn soft" data-add>Друг</button></div>`;card.querySelector('[data-join]').onclick=()=>can&&joinRoom(u.activeRoomId);card.querySelector('[data-add]').onclick=()=>sendFriendRequest(u);els.onlineUsersList.appendChild(card)})}
function renderRooms(rooms){els.publicRoomsList.innerHTML='';if(!rooms.length){els.publicRoomsList.innerHTML='<p class="status">Открытых комнат пока нет.</p>';return}rooms.forEach(r=>{const card=document.createElement('div');card.className='room-card';card.innerHTML=`<img src="${esc(r.ownerAvatar||avatar(r.ownerName))}"><div class="card-main"><strong>${esc(r.name||'Комната')}</strong><span>Хост: ${esc(r.ownerName||'User')}</span><span>${esc(r.source?.title||'Источник не выбран')}</span></div><button class="btn primary">Войти</button>`;card.querySelector('button').onclick=()=>joinRoom(r.id);els.publicRoomsList.appendChild(card)})}
async function createRoom(){if(!currentUser||!profile)return;const rr=push(ref(db,'rooms')),id=rr.key,name=els.roomNameInput.value.trim()||`${profile.nickname}'s room`;const room={id,name,ownerUid:currentUser.uid,ownerName:handle(profile),ownerAvatar:profile.avatarUrl||avatar(profile.nickname),visibility:'open',joinMode:'public',publicOpen:true,source:{type:'none'},playback:{time:0,playing:false,updatedAt:Date.now(),byUid:''},createdAt:Date.now(),updatedAt:Date.now()};await set(rr,room);await joinRoom(id);section('watchSection')}
async function joinRoom(id){if(!currentUser||!profile)return;id=String(id||'').trim();if(!id){status(els.roomStatus,'Введи код комнаты.');return}const s=await get(ref(db,`rooms/${id}`));if(!s.exists()){status(els.roomStatus,'Комната не найдена.');return}const r=s.val();if(r.visibility!=='open'&&r.ownerUid!==currentUser.uid){status(els.roomStatus,'Комната закрыта.');return}await leaveRoom(false);currentRoomId=id;currentRoom=r;els.joinRoomInput.value=id;setRoomUrl(id);await set(ref(db,`rooms/${id}/members/${currentUser.uid}`),{uid:currentUser.uid,nickname:profile.nickname,tag:profile.tag,avatarUrl:profile.avatarUrl||avatar(profile.nickname),joinedAt:Date.now()});await update(ref(db,`users/${currentUser.uid}`),{activeRoomId:id,activeRoomName:r.name||'Комната',activeRoomOpen:r.visibility==='open',activeRoomPublic:r.joinMode==='public',updatedAt:Date.now()});await update(ref(db,`presence/${currentUser.uid}`),{activeRoomId:id});subRoom(id);status(els.roomStatus,`Ты в комнате: ${r.name||id}`);section('watchSection')}
async function leaveRoom(clear=true){if(!currentUser||!currentRoomId)return;const old=currentRoomId;await remove(ref(db,`rooms/${old}/members/${currentUser.uid}`)).catch(()=>{});await update(ref(db,`users/${currentUser.uid}`),{activeRoomId:'',activeRoomName:'',activeRoomOpen:false,activeRoomPublic:false,updatedAt:Date.now()}).catch(()=>{});await update(ref(db,`presence/${currentUser.uid}`),{activeRoomId:''}).catch(()=>{});await stopVoice();currentRoomId='';currentRoom=null;loadedSourceKey='';cleanRoom();clearChat();if(clear)setRoomUrl('')}
function subRoom(id){cleanRoom();roomUnsubs.push(listen(ref(db,`rooms/${id}`),s=>{if(!s.exists()){status(els.roomStatus,'Комната удалена.');leaveRoom();return}currentRoom=s.val();renderRoom()}));roomUnsubs.push(listen(ref(db,`rooms/${id}/members`),s=>{const a=[];s.forEach(x=>a.push(x.val()));renderMembers(a)}));clearChat();roomUnsubs.push(onChildAdded(ref(db,`roomChats/${id}`),s=>addChat(s.val())))}
function renderRoom(){if(!currentRoom)return;const owner=currentRoom.ownerUid===currentUser.uid;[els.openRoomBtn,els.closeRoomBtn,els.publicRoomBtn,els.inviteRoomBtn].forEach(b=>b.disabled=!owner);status(els.roomStatus,`${currentRoom.name||currentRoom.id} — ${currentRoom.visibility==='open'?'открыта':'закрыта'}, ${currentRoom.joinMode==='public'?'публичная':'по ссылке'}`);const nextKey=sourceKey(currentRoom.source);if(nextKey!==loadedSourceKey){loadedSourceKey=nextKey;Promise.resolve(loadSource(currentRoom.source)).then(()=>applyPlayback(currentRoom.playback)).catch(e=>{console.error('Source load error:',e);status(els.sourceNote,e.message||'Источник не загрузился.')})}else applyPlayback(currentRoom.playback)}function renderMembers(m){els.membersList.innerHTML=m.length?'':'<p class="status">Пока никого нет.</p>';m.forEach(x=>{const d=document.createElement('div');d.className='message';d.innerHTML=`<strong>${esc(x.nickname||'User')}#${esc(x.tag||'0000')}</strong><div class="online">● в комнате</div>`;els.membersList.appendChild(d)})}
async function setVis(v){if(!currentRoom||currentRoom.ownerUid!==currentUser.uid)return;const publicOpen=v==='open'&&currentRoom.joinMode==='public';await update(ref(db,`rooms/${currentRoomId}`),{visibility:v,publicOpen,updatedAt:Date.now()});await update(ref(db,`users/${currentUser.uid}`),{activeRoomOpen:v==='open',activeRoomPublic:publicOpen})}async function setMode(m){if(!currentRoom||currentRoom.ownerUid!==currentUser.uid)return;const publicOpen=currentRoom.visibility==='open'&&m==='public';await update(ref(db,`rooms/${currentRoomId}`),{joinMode:m,publicOpen,updatedAt:Date.now()});await update(ref(db,`users/${currentUser.uid}`),{activeRoomPublic:publicOpen})}
const SOURCE_INFO={
youtube:{label:'YouTube',placeholder:'Вставь ссылку YouTube или youtu.be',open:'Открыть YouTube',note:'YouTube работает через IFrame API: play/pause/seek синхронизируются по комнате.',help:'Как в Rave: открой YouTube, выбери видео, скопируй ссылку сюда и нажми “Запустить”.'},
vk:{label:'VK Video',placeholder:'Вставь ссылку VK Video',open:'Открыть VK Video',note:'VK Video открывается через iframe. Полная синхронизация зависит от VK-плеера.',help:'Открой VK Video, выбери ролик, скопируй ссылку и запусти в комнате.'},
anilibrix:{label:'Anilibrix',placeholder:'Вставь ссылку Anilibrix/Anilibria',open:'Открыть Anilibrix',note:'Anilibrix открывается через iframe или внешнюю ссылку. Sync ограничен.',help:'Вставь ссылку на страницу/плеер Anilibrix. Если iframe не разрешён, открой внешне.'},
local:{label:'Local video',placeholder:'Выбери видеофайл на устройстве',open:'Local',note:'Local video синхронизирует команды, но каждый участник должен выбрать у себя тот же файл.',help:'Выбери файл на устройстве. Друзьям нужен такой же файл у себя, иначе браузер не сможет его открыть.'},
gdrive:{label:'Google Drive',placeholder:'Вставь публичную ссылку Google Drive на видео',open:'Открыть Google Drive',note:'Google Drive открывается через preview iframe. Приватные файлы должны быть доступны по ссылке.',help:'Сделай файл доступным по ссылке, вставь ссылку Google Drive и запусти preview в комнате.'},
yadisk:{label:'Yandex Disk',placeholder:'Вставь публичную ссылку Yandex Disk на видео',open:'Открыть Yandex Disk',note:'Yandex Disk пробует получить прямую ссылку и открыть её в video-плеере.',help:'Сделай видео публичным на Яндекс.Диске, вставь ссылку и запусти. Если Disk не отдаст прямую ссылку, будет внешняя кнопка.'},
direct:{label:'Direct video',placeholder:'Вставь прямую ссылку на .mp4 / .webm / .mov',open:'Direct link',note:'Direct MP4/WebM открывается в обычном video-плеере и синхронизируется как local/direct video.',help:'Подходит для прямых ссылок на видеофайл, где URL заканчивается на .mp4, .webm, .mov или сервер отдаёт video/*.'}
};
function sourceKey(s={}){return[s?.type||'none',s?.videoId||'',s?.url||'',s?.embedUrl||'',s?.fileId||'',s?.filename||'',s?.size||''].join('|')}
function isVideoSource(t){return['local','direct','yadisk'].includes(t)}
function sourceInfo(t){return SOURCE_INFO[t]||SOURCE_INFO.youtube}
function activateSource(type){type=type||els.sourceType.value||'youtube';if(els.sourceType)els.sourceType.value=type;document.querySelectorAll('[data-source-tab]').forEach(b=>b.classList.toggle('active',b.dataset.sourceTab===type));const local=type==='local';els.sourceUrl?.classList.toggle('hidden',local);els.localVideoFile?.classList.toggle('hidden',!local);const info=sourceInfo(type);if(els.sourceUrl)els.sourceUrl.placeholder=info.placeholder;if(els.sourceOpenBtn){els.sourceOpenBtn.textContent='Открыть каталог';els.sourceOpenBtn.disabled=false}status(els.sourceHelp,info.help);status(els.sourceNote,info.note)}
const QUICK_EMOJIS=['😂','❤️','🔥','😮','😭','👍','🍀','🎬','🍿','💀','🥰','🤯','😎','🤝','✨','💚'];
function sourceExternalUrl(type,q=''){if(type==='youtube')return q&&!safeUrl(q)?`https://www.youtube.com/results?search_query=${encodeURIComponent(q)}`:'https://www.youtube.com/';if(type==='vk')return 'https://vk.com/video';if(type==='anilibrix')return 'https://www.anilibria.tv/';if(type==='gdrive')return 'https://drive.google.com/drive/my-drive';if(type==='yadisk')return 'https://disk.yandex.ru/client/disk';return safeUrl(q)||''}function isYoutubeHost(url){try{const h=new URL(url).hostname;return h.includes('youtube.com')||h.includes('youtu.be')}catch{return false}}
const FALLBACK_GIFS=['https://media.giphy.com/media/111ebonMs90YLu/giphy.gif','https://media.giphy.com/media/3oriO0OEd9QIDdllqo/giphy.gif','https://media.giphy.com/media/xT0xeJpnrWC4XWblEk/giphy.gif','https://media.giphy.com/media/l0HlBO7eyXzSZkJri/giphy.gif','https://media.giphy.com/media/26ufdipQqU2lhNA4g/giphy.gif','https://media.giphy.com/media/13HgwGsXF0aiGY/giphy.gif','https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif','https://media.giphy.com/media/GeimqsH0TLDt4tScGw/giphy.gif'];
const DEFAULT_GIPHY_KEY='dc6zaTOxFJmzC';
const PIPED_APIS=['https://pipedapi.kavin.rocks','https://api-piped.mha.fi','https://pipedapi.adminforge.de'];
function giphyKey(){return (localStorage.getItem('jc-giphy-api-key')||DEFAULT_GIPHY_KEY).trim()}
function openSourceCatalog(){openMediaPicker(els.sourceType?.value||'youtube')}
function closeMediaPicker(){hide(els.mediaPicker);els.mediaPicker?.setAttribute('aria-hidden','true')}
function openMediaPicker(type='youtube'){mediaPickerSource=type;activateSource(type);if(els.ytApiKeyInput)els.ytApiKeyInput.value=localStorage.getItem('jc-youtube-api-key')||'';setPickerSource(type);section('homeSection');setTimeout(()=>els.mediaSearchInput?.focus(),80)}
function setPickerSource(type){mediaPickerSource=type;document.querySelectorAll('[data-picker-source]').forEach(b=>b.classList.toggle('active',b.dataset.pickerSource===type));els.youtubeApiBox?.classList.toggle('hidden',type!=='youtube');const info=sourceInfo(type);if(els.mediaSearchInput)els.mediaSearchInput.placeholder=type==='youtube'?'Искать YouTube или вставить ссылку на ролик':type==='vk'?'Вставь VK-ссылку или открой VK в новой вкладке':info.placeholder;status(els.mediaPickerHint,type==='youtube'?'Автовыбор работает через карточки внутреннего поиска. Для этого нужен YouTube Data API key. Без ключа: открыл YouTube → скопировал ссылку → Вставить из буфера.':type==='vk'?'VK не разрешает сайту читать клики внутри vk.com. Поэтому быстрый режим: открыть VK, скопировать ссылку, вставить из буфера — ролик сразу уйдёт в комнату.':'Вставь публичную ссылку или прямой URL файла. JustClover сам запустит источник в комнате.');renderPickerEmpty()}
function renderPickerEmpty(){if(!els.mediaPickerResults)return;const t=mediaPickerSource;let cards=[];if(t==='youtube'){cards=[
`<button class="picker-card picker-help-card hero-pick-card anime-feature-card" data-search-demo="аниме opening" type="button"><strong>🔎 YouTube без выхода из комнаты</strong><span>Введи запрос сверху. JustClover попробует no-key поиск, а если он недоступен — использует твой YouTube API key.</span></button>`,
`<button class="picker-card picker-help-card" data-search-demo="gravity falls" type="button"><strong>Gravity Falls</strong><span>Пример поиска: карточка сразу запускает ролик в комнате.</span></button>`,
`<button class="picker-card picker-help-card" data-paste-source type="button"><strong>Вставить YouTube-ссылку</strong><span>Скопировал ролик с YouTube → нажал сюда → источник запущен.</span></button>`
]}else if(t==='vk'){cards=[
`<button class="picker-card picker-help-card hero-pick-card anime-feature-card" data-open-external type="button"><strong>VK Video</strong><span>Открой VK, выбери ролик, скопируй ссылку. JustClover сам соберёт VK iframe.</span></button>`,
`<button class="picker-card picker-help-card" data-paste-source type="button"><strong>Вставить VK из буфера</strong><span>Ссылка сразу уйдёт в комнату.</span></button>`
]}else{cards=[
`<button class="picker-card picker-help-card hero-pick-card anime-feature-card" data-paste-source type="button"><strong>${esc(sourceInfo(t).label)}</strong><span>Вставь публичную ссылку из буфера — JustClover сам настроит источник.</span></button>`,
`<button class="picker-card picker-help-card" data-open-external type="button"><strong>Открыть источник</strong><span>Открой сайт/диск, скопируй ссылку и вернись сюда.</span></button>`
]}els.mediaPickerResults.innerHTML=cards.join('');bindPickerCards()} 
function bindPickerCards(){els.mediaPickerResults?.querySelectorAll('[data-open-external]').forEach(b=>b.onclick=()=>window.open(sourceExternalUrl(mediaPickerSource,els.mediaSearchInput?.value||''),'_blank','noopener,noreferrer'));els.mediaPickerResults?.querySelectorAll('[data-paste-source]').forEach(b=>b.onclick=pasteMediaFromClipboard);els.mediaPickerResults?.querySelectorAll('[data-search-demo]').forEach(b=>{b.onclick=()=>{if(els.mediaSearchInput){els.mediaSearchInput.value=b.dataset.searchDemo||'';handleMediaSearch({preventDefault(){}})}}});els.mediaPickerResults?.querySelectorAll('[data-pick-source]').forEach(b=>b.onclick=()=>choosePickerSource({type:b.dataset.type,url:b.dataset.url,title:b.dataset.title||b.dataset.type}))}
function renderYouTubeCards(items){if(!items.length){els.mediaPickerResults.innerHTML='<p class="status">Ничего не найдено.</p>';return}els.mediaPickerResults.innerHTML=items.map(item=>{const id=item.id,th=item.thumb||'',title=item.title||'YouTube video',channel=item.channel||'YouTube';return `<button class="picker-card media-card anime-video-card" data-pick-source data-type="youtube" data-url="https://www.youtube.com/watch?v=${esc(id)}" data-title="${esc(title)}" type="button"><img src="${esc(th)}" alt=""><strong>${esc(title)}</strong><span>${esc(channel)}</span><em>Запустить в комнате</em></button>`}).join('');bindPickerCards()}
async function searchYouTubeViaKey(q,key){const api=`https://www.googleapis.com/youtube/v3/search?part=snippet&type=video&maxResults=18&q=${encodeURIComponent(q)}&key=${encodeURIComponent(key)}`;const r=await fetch(api);const data=await r.json();if(!r.ok)throw new Error(data?.error?.message||'YouTube API не ответил');return (data.items||[]).filter(x=>x.id?.videoId).map(x=>({id:x.id.videoId,thumb:x.snippet?.thumbnails?.medium?.url||x.snippet?.thumbnails?.default?.url||'',title:x.snippet?.title||'YouTube video',channel:x.snippet?.channelTitle||'YouTube'}))}
async function searchYouTubeNoKey(q){let lastErr=null;for(const base of PIPED_APIS){try{const r=await fetch(`${base}/search?q=${encodeURIComponent(q)}&filter=videos`);if(!r.ok)throw new Error('Piped не ответил');const data=await r.json();const arr=Array.isArray(data)?data:[];const items=arr.filter(x=>x.url&&x.url.includes('watch')).slice(0,18).map(x=>{const id=ytId('https://youtube.com'+x.url)||ytId(x.url)||'';return {id,thumb:x.thumbnail||'',title:x.title||'YouTube video',channel:x.uploaderName||x.uploader||'YouTube'}}).filter(x=>x.id);if(items.length)return items}catch(e){lastErr=e}}throw lastErr||new Error('No-key YouTube поиск недоступен')}
async function searchYouTubePicker(q){els.mediaPickerResults.innerHTML='<div class="picker-loading">Ищу YouTube...</div>';const key=(localStorage.getItem('jc-youtube-api-key')||'').trim();try{const items=key?await searchYouTubeViaKey(q,key):await searchYouTubeNoKey(q);renderYouTubeCards(items);status(els.mediaPickerHint,key?'YouTube найден через твой API key.':'YouTube найден через no-key поиск. Если он когда-нибудь упадёт, вставь API key.')}catch(e){if(key){els.mediaPickerResults.innerHTML=`<div class="picker-error"><strong>Поиск не сработал</strong><span>${esc(e.message||e)}</span></div>`;return}status(els.mediaPickerHint,'No-key поиск сейчас не ответил. Вставь YouTube Data API key или скопируй ссылку ролика.');renderPickerEmpty()}}
async function choosePickerSource(src){activateSource(src.type);els.sourceUrl.value=src.url||'';els.sourceTitle.value=src.title||sourceInfo(src.type).label||'Источник';closeMediaPicker();if(!currentRoomId){status(els.roomStatus,'Создай или открой комнату — ссылка уже подставлена.');return}await setSource();section('watchSection')}
function detectSourceTypeFromUrl(url){if(ytId(url)||isYoutubeHost(url))return 'youtube';if(url.includes('vk.'))return 'vk';if(url.includes('drive.google.'))return 'gdrive';if(url.includes('disk.yandex.')||url.includes('yadi.sk'))return 'yadisk';if(/\.(mp4|webm|mov|mkv|avi)(\?|$)/i.test(url))return 'direct';return mediaPickerSource||'direct'}
async function pasteMediaFromClipboard(){try{const text=(await navigator.clipboard.readText()).trim();if(!text)return status(els.mediaPickerHint,'Буфер пустой. Скопируй ссылку на видео.');const url=safeUrl(text);if(!url)return status(els.mediaPickerHint,'В буфере не ссылка. Скопируй URL видео.');let type=detectSourceTypeFromUrl(url);await choosePickerSource({type,url,title:sourceInfo(type).label||'Источник'})}catch(e){status(els.mediaPickerHint,'Браузер не дал прочитать буфер. Вставь ссылку вручную в поле и нажми “Искать/Запустить”.')}}
function saveYoutubeApiKey(){const v=(els.ytApiKeyInput?.value||'').trim();if(v)localStorage.setItem('jc-youtube-api-key',v);else localStorage.removeItem('jc-youtube-api-key');status(els.mediaPickerHint,v?'YouTube API key сохранён в этом браузере. Теперь поиск работает внутри JustClover.':'YouTube API key очищен.')}
async function handleMediaSearch(e){e?.preventDefault?.();const q=(els.mediaSearchInput?.value||'').trim();if(!q)return renderPickerEmpty();if(safeUrl(q)){const type=detectSourceTypeFromUrl(q);await choosePickerSource({type,url:q,title:sourceInfo(type).label||'Источник'});return}if(mediaPickerSource==='youtube')return searchYouTubePicker(q);window.open(sourceExternalUrl(mediaPickerSource,q),'_blank','noopener,noreferrer')}
function renderEmojiPanel(){if(!els.emojiPanel)return;els.emojiPanel.innerHTML=QUICK_EMOJIS.map(e=>`<button type="button" data-emoji="${e}">${e}</button>`).join('');els.emojiPanel.querySelectorAll('[data-emoji]').forEach(b=>b.onclick=()=>{els.chatInput.value=(els.chatInput.value||'')+b.dataset.emoji;els.chatInput.focus()})}
function openGifPicker(){section('homeSection');if(els.giphyApiKeyInput)els.giphyApiKeyInput.value=localStorage.getItem('jc-giphy-api-key')||'';renderGifFallback();setTimeout(()=>els.gifSearchInput?.focus(),80)}
function closeGifPicker(){hide(els.mediaPicker);els.mediaPicker?.setAttribute('aria-hidden','true')}
function saveGiphyApiKey(){const v=(els.giphyApiKeyInput?.value||'').trim();if(v)localStorage.setItem('jc-giphy-api-key',v);else localStorage.removeItem('jc-giphy-api-key');status(els.gifPickerHint,v?'GIPHY API key сохранён. Теперь поиск работает через твой ключ.':'Вернулся встроенный demo GIPHY key.')}
async function renderGifFallback(){if(!els.gifPickerResults)return;els.gifPickerResults.innerHTML='<div class="picker-loading">Загружаю GIPHY...</div>';try{const api=`https://api.giphy.com/v1/gifs/trending?api_key=${encodeURIComponent(giphyKey())}&limit=24&rating=pg-13`;const r=await fetch(api);const data=await r.json();if(!r.ok)throw new Error(data?.message||'GIPHY API не ответил');renderGifItems(data.data||[]);status(els.gifPickerHint,'Трендовые GIF от GIPHY. Введи запрос, чтобы найти нужную реакцию.')}catch(e){els.gifPickerResults.innerHTML=FALLBACK_GIFS.map(u=>`<button class="picker-card media-card gif-card" data-gif-url="${esc(u)}" type="button"><img src="${esc(u)}" alt="GIF"><strong>Быстрый GIF</strong><span>Отправить в чат</span></button>`).join('')+`<div class="picker-error"><strong>GIPHY не ответил</strong><span>Можно вставить свой GIPHY API key или попробовать позже.</span></div>`;bindGifCards()}}
function renderGifItems(items){if(!els.gifPickerResults)return;if(!items.length){els.gifPickerResults.innerHTML='<p class="status">GIF не найдены.</p>';return}els.gifPickerResults.innerHTML=items.map(g=>{const u=g.images?.downsized_medium?.url||g.images?.fixed_height?.url||g.images?.original?.url||'';const title=g.title||'GIF';return `<button class="picker-card media-card gif-card anime-giphy-card" data-gif-url="${esc(u)}" type="button"><img src="${esc(u)}" alt=""><strong>${esc(title)}</strong><span>Отправить</span></button>`}).join('');bindGifCards()}
function bindGifCards(){els.gifPickerResults?.querySelectorAll('[data-gif-url]').forEach(b=>b.onclick=async()=>{await sendChat('',b.dataset.gifUrl);closeGifPicker()})}
async function searchGiphyPicker(e){e?.preventDefault?.();const q=(els.gifSearchInput?.value||'').trim();if(!q)return renderGifFallback();els.gifPickerResults.innerHTML='<div class="picker-loading">Ищу GIF...</div>';try{const api=`https://api.giphy.com/v1/gifs/search?api_key=${encodeURIComponent(giphyKey())}&q=${encodeURIComponent(q)}&limit=24&rating=pg-13&lang=ru`;const r=await fetch(api);const data=await r.json();if(!r.ok)throw new Error(data?.message||'GIPHY API не ответил');renderGifItems(data.data||[]);status(els.gifPickerHint,'Клик по GIF сразу отправит его в чат комнаты.')}catch(e){els.gifPickerResults.innerHTML=`<div class="picker-error"><strong>GIPHY не ответил</strong><span>${esc(e.message||e)}. Можно вставить свой API key или попробовать другой запрос.</span></div>`}}
async function pasteGifFromClipboard(){try{const text=(await navigator.clipboard.readText()).trim();const u=safeUrl(text);if(!u)return status(els.gifPickerHint,'В буфере нет ссылки на GIF/картинку.');await sendChat('',u);closeGifPicker()}catch(e){status(els.gifPickerHint,'Браузер не дал прочитать буфер. Вставь ссылку в поиск и нажми “Искать GIF”.')}}
function showReactionBurst(v){if(!els.reactionBurst)return;els.reactionBurst.textContent=v;show(els.reactionBurst);els.reactionBurst.classList.remove('pop');void els.reactionBurst.offsetWidth;els.reactionBurst.classList.add('pop');setTimeout(()=>hide(els.reactionBurst),900)}
async function sendRoomReaction(v){showReactionBurst(v);await sendChat(v,'',true)}
function googleDriveId(url){try{const u=new URL(url);const byPath=u.pathname.match(/\/file\/d\/([^/]+)/);if(byPath)return byPath[1];const folders=u.pathname.match(/\/open/);const id=u.searchParams.get('id');if(id)return id;const uc=u.pathname.includes('/uc')?u.searchParams.get('id'):'';return uc||''}catch{return''}}
function googleDrivePreviewUrl(id){return`https://drive.google.com/file/d/${encodeURIComponent(id)}/preview`}
async function yandexDirectUrl(publicUrl){const api='https://cloud-api.yandex.net/v1/disk/public/resources/download?public_key='+encodeURIComponent(publicUrl);const r=await fetch(api);if(!r.ok)throw new Error('Yandex Disk не отдал прямую ссылку. Проверь публичный доступ.');const data=await r.json();if(!data.href)throw new Error('Yandex Disk: href не найден.');return data.href}
function ytId(u){try{const p=new URL(u);if(p.hostname.includes('youtu.be'))return p.pathname.slice(1).split('/')[0];if(p.hostname.includes('youtube.com')){if(p.searchParams.get('v'))return p.searchParams.get('v');const parts=p.pathname.split('/').filter(Boolean);const i=parts.indexOf('shorts');if(i>=0)return parts[i+1];const e=parts.indexOf('embed');if(e>=0)return parts[e+1]}}catch{}return''}function vkEmbed(u){try{const p=new URL(u);if(p.pathname.includes('video_ext.php'))return p.toString();const m=(p.pathname+p.search).match(/video(-?\d+)_(\d+)/);if(m)return`https://vk.com/video_ext.php?oid=${m[1]}&id=${m[2]}&hd=2`;return p.toString()}catch{return''}}
function toggleSource(){activateSource(els.sourceType.value)}
async function setSource(){if(!currentRoomId){status(els.roomStatus,'Сначала создай комнату.');return}if(currentRoom.ownerUid!==currentUser.uid){status(els.roomStatus,'Источник может менять только хост.');return}let type=els.sourceType.value;const title=els.sourceTitle.value.trim()||'Источник';let source;if(type==='local'){const f=els.localVideoFile.files?.[0];if(!f){status(els.roomStatus,'Выбери local video файл.');return}loadLocal();source={type:'local',title:f.name,filename:f.name,size:f.size}}else{const url=safeUrl(els.sourceUrl.value.trim());if(!url){status(els.roomStatus,'Вставь корректную ссылку.');return}const detected=detectSourceTypeFromUrl(url);if(detected&&detected!==type){type=detected;activateSource(type)}if(type==='youtube'){const id=ytId(url);if(!id){status(els.roomStatus,'Это ссылка на YouTube, но не на конкретный ролик. Открой ролик, скопируй ссылку вида youtube.com/watch?v=... или youtu.be/...');return}source={type:'youtube',url,videoId:id,title:title==='Источник'?'YouTube':title}}else if(type==='vk'){source={type:'vk',url,embedUrl:vkEmbed(url),title:title==='Источник'?'VK Video':title}}else if(type==='anilibrix'){source={type:'anilibrix',url,embedUrl:url,title:title==='Источник'?'Anilibrix':title}}else if(type==='gdrive'){const fileId=googleDriveId(url);if(!fileId){status(els.roomStatus,'Не удалось распознать Google Drive file ID. Нужна ссылка вида /file/d/... или ?id=...');return}source={type:'gdrive',url,fileId,embedUrl:googleDrivePreviewUrl(fileId),title:title==='Источник'?'Google Drive':title}}else if(type==='yadisk'){source={type:'yadisk',url,title:title==='Источник'?'Yandex Disk':title}}else if(type==='direct'){source={type:'direct',url,title:title==='Источник'?'Direct video':title}}else{source={type:'external',url,embedUrl:url,title}}}loadedSourceKey='';await update(ref(db,`rooms/${currentRoomId}`),{source,playback:{time:0,playing:false,updatedAt:Date.now(),byUid:currentUser.uid},updatedAt:Date.now()});status(els.roomStatus,`Источник запущен: ${source.title||source.type}`)}
function hidePlayers(){[els.videoPlayer,els.youtubeWrap||els.youtubePlayer,els.iframePlayer,els.externalPlayer,els.emptyPlayer].forEach(hide);els.iframePlayer.src='about:blank';if(ytPoll)clearInterval(ytPoll);ytPoll=null}function ext(src,title,note){show(els.iframePlayer);els.iframePlayer.src=src;show(els.externalPlayer);els.externalText.textContent=`${title}: если встроенный плеер не загрузился, открой ссылку отдельно.`;els.externalLink.href=src;status(els.sourceNote,note)}function loadLocal(){const f=els.localVideoFile.files?.[0];if(!f){show(els.externalPlayer);els.externalText.textContent='Выбери этот же local video файл на своём устройстве.';return false}if(localVideoObjectUrl)URL.revokeObjectURL(localVideoObjectUrl);localVideoObjectUrl=URL.createObjectURL(f);show(els.videoPlayer);els.videoPlayer.src=localVideoObjectUrl;els.videoPlayer.load();status(els.sourceNote,`Local video: ${f.name}`);return true}
function loadDirect(s){show(els.videoPlayer);els.videoPlayer.src=s.directUrl||s.url;els.videoPlayer.load();status(els.sourceNote,`${s.title||'Direct video'} открыт в video-плеере.`);return true}
async function loadYandexDisk(s){status(els.sourceNote,'Yandex Disk: получаю прямую ссылку...');try{const direct=await yandexDirectUrl(s.url);s.directUrl=direct;loadDirect(s);status(els.sourceNote,`${s.title||'Yandex Disk'} открыт через прямую ссылку.`)}catch(e){console.warn(e);ext(s.url,s.title||'Yandex Disk',e.message||'Yandex Disk не отдал прямую ссылку. Открой внешне.')}}
async function loadSource(s={type:'none'}){currentSource=s||{type:'none'};hidePlayers();if(!s||s.type==='none'){show(els.emptyPlayer);return}if(s.type==='local'){loadLocal();return}if(s.type==='direct'){loadDirect(s);return}if(s.type==='yadisk'){await loadYandexDisk(s);return}if(s.type==='gdrive'){ext(s.embedUrl||s.url,s.title||'Google Drive','Google Drive открыт через preview iframe. Для приватных файлов нужен доступ по ссылке.');return}if(s.type==='vk'){ext(s.embedUrl||s.url,s.title||'VK Video','VK Video открыт через iframe.');return}if(s.type==='anilibrix'){ext(s.embedUrl||s.url,s.title||'Anilibrix','Anilibrix открыт через iframe.');return}if(s.type==='youtube'){show(els.youtubeWrap||els.youtubePlayer);await loadYT(s.videoId);status(els.sourceNote,`YouTube: ${s.title||s.videoId}`);return}if(s.type==='external'){ext(s.embedUrl||s.url,s.title||'Источник','Источник открыт через iframe.');return}}
window.onYouTubeIframeAPIReady=()=>{};function waitYT(){return new Promise(res=>{if(window.YT?.Player)return res(true);const t=setInterval(()=>{if(window.YT?.Player){clearInterval(t);res(true)}},100);setTimeout(()=>{clearInterval(t);res(false)},8000)})}function onYTReady(){startYTPoll();if(currentSource.type==='youtube')setTimeout(()=>applyPlayback(currentRoom?.playback),250)}async function loadYT(id){if(!await waitYT()){status(els.sourceNote,'YouTube API не загрузился. Проверь VPN/сеть.');return}const opts={width:'100%',height:'100%',videoId:id,playerVars:{playsinline:1,rel:0,origin:location.origin},events:{onStateChange:onYTState,onReady:onYTReady,onError:onYTError}};if(!ytPlayer)ytPlayer=new YT.Player('youtubePlayer',opts);else{try{ytPlayer.cueVideoById({videoId:id,startSeconds:0})}catch{ytPlayer.loadVideoById(id)}startYTPoll();setTimeout(()=>applyPlayback(currentRoom?.playback),350)}}function onYTError(e){let c=e?.data,t=`YouTube error ${c}.`;if(c===101||c===150)t='Это видео нельзя воспроизвести во встроенном плеере.';status(els.roomStatus,t);status(els.sourceNote,t)}function onYTState(e){if(applyingRemote||!currentRoomId||currentSource.type!=='youtube')return;const time=ytPlayer?.getCurrentTime?.()||0;if(e.data===YT.PlayerState.PLAYING)writePlayback(true,time);if(e.data===YT.PlayerState.PAUSED)writePlayback(false,time)}function startYTPoll(){if(ytPoll)clearInterval(ytPoll);lastYtTime=ytPlayer?.getCurrentTime?.()||0;ytPoll=setInterval(()=>{if(applyingRemote||currentSource.type!=='youtube'||!currentRoomId||!ytPlayer)return;const st=ytPlayer.getPlayerState?.(),now=ytPlayer.getCurrentTime?.()||0;if(st===YT.PlayerState.PLAYING&&Math.abs(now-(lastYtTime+1))>3)writePlayback(true,now);lastYtTime=now},1000)}async function writePlayback(play,time){if(!currentRoomId)return;await update(ref(db,`rooms/${currentRoomId}/playback`),{playing:!!play,time:Number(time)||0,updatedAt:Date.now(),byUid:currentUser.uid})}async function applyPlayback(p){if(!p||p.byUid===currentUser?.uid)return;const target=(Number(p.time)||0)+(p.playing?Math.max(0,(Date.now()-(p.updatedAt||Date.now()))/1000):0);applyingRemote=true;try{if(isVideoSource(currentSource.type)){if(Math.abs((els.videoPlayer.currentTime||0)-target)>1.2)els.videoPlayer.currentTime=target;p.playing?await els.videoPlayer.play().catch(()=>{}):els.videoPlayer.pause()}if(currentSource.type==='youtube'&&ytPlayer){if(Math.abs((ytPlayer.getCurrentTime?.()||0)-target)>1.2)ytPlayer.seekTo(target,true);p.playing?ytPlayer.playVideo():ytPlayer.pauseVideo()}}finally{setTimeout(()=>applyingRemote=false,400)}}els.videoPlayer.addEventListener('play',()=>{if(!applyingRemote&&isVideoSource(currentSource.type))writePlayback(true,els.videoPlayer.currentTime)});els.videoPlayer.addEventListener('pause',()=>{if(!applyingRemote&&isVideoSource(currentSource.type))writePlayback(false,els.videoPlayer.currentTime)});els.videoPlayer.addEventListener('seeked',()=>{if(!applyingRemote&&isVideoSource(currentSource.type))writePlayback(!els.videoPlayer.paused,els.videoPlayer.currentTime)});
function clearChat(){els.chatMessages.innerHTML=''}
function mediaRender(u){u=safeUrl(u);if(!u)return'';if(isImg(u))return`<img class="chat-media" src="${esc(u)}" alt="media">`;return`<a class="chat-media-link" href="${esc(u)}" target="_blank" rel="noreferrer">Открыть вложение</a>`}
function emojiOnly(t){return /^[\p{Emoji}\s❤️]+$/u.test(String(t||''))&&String(t||'').trim().length<=8}
function addChat(m){const d=document.createElement('div');d.className='message';if(m.reaction)d.classList.add('reaction-message');if(emojiOnly(m.text))d.classList.add('emoji-only');d.innerHTML=`<strong>${esc(m.nickname||'User')}#${esc(m.tag||'0000')}</strong>${m.text?`<div>${esc(m.text)}</div>`:''}${mediaRender(m.mediaUrl)}<time>${new Date(m.createdAt||Date.now()).toLocaleTimeString([],{hour:'2-digit',minute:'2-digit'})}</time>`;els.chatMessages.appendChild(d);els.chatMessages.scrollTop=els.chatMessages.scrollHeight;if(m.reaction&&m.uid!==currentUser?.uid)showReactionBurst(m.text)}
async function sendChat(t='',mediaUrl='',reaction=false){t=String(t||'').trim();mediaUrl=safeUrl(mediaUrl||'');if(!currentRoomId)return;if(!t&&!mediaUrl)return;await push(ref(db,`roomChats/${currentRoomId}`),{uid:currentUser.uid,nickname:profile.nickname,tag:profile.tag,text:t,mediaUrl,reaction:!!reaction,createdAt:Date.now()})}
async function saveProfile(e){e?.preventDefault?.();const nickname=els.profileNick.value.trim().slice(0,24)||'User',t=els.profileTag.value.trim().replace(/[^a-zA-Z0-9_а-яА-ЯёЁ-]/g,'').slice(0,12)||tag();const data={nickname,tag:t,avatarUrl:safeUrl(els.profileAvatar.value)||avatar(nickname),coverUrl:safeUrl(els.profileCover.value),statusText:els.profileStatusText.value.trim().slice(0,80),bio:els.profileBio.value.trim().slice(0,280),accentColor:els.profileAccent.value||'#6d5dfc',updatedAt:Date.now()};await update(ref(db,`users/${currentUser.uid}`),data);profile={...profile,...data};renderProfile();status(els.profileSaveStatus,'Сохранено.')}
async function startVoice(){if(!currentRoomId){status(els.voiceStatus,'Сначала войди в комнату.');return}try{localStream=await navigator.mediaDevices.getUserMedia({audio:true,video:false});voiceOn=true;els.voiceBtn.textContent='Выключить голос';status(els.voiceStatus,'Голос включён.')}catch{status(els.voiceStatus,'Микрофон недоступен.')}}async function stopVoice(){if(!voiceOn)return;voiceOn=false;els.voiceBtn.textContent='Включить голос';status(els.voiceStatus,'Голос выключен.');if(localStream){localStream.getTracks().forEach(t=>t.stop());localStream=null}}
function subscribeFriends(){globalUnsubs.push(listen(ref(db,`friends/${currentUser.uid}`),async s=>{const ids=[];s.forEach(x=>ids.push(x.key));currentFriends=(await Promise.all(ids.map(async id=>(await get(ref(db,`users/${id}`))).val()))).filter(Boolean);renderFriends()}));globalUnsubs.push(listen(ref(db,`friendRequests/${currentUser.uid}`),async s=>{const a=[];s.forEach(x=>a.push({uid:x.key,...x.val()}));currentIncomingRequests=a;renderRequests()}))}async function sendFriendRequest(u){if(!u?.uid||u.uid===currentUser.uid)return;await set(ref(db,`friendRequests/${u.uid}/${currentUser.uid}`),{uid:currentUser.uid,nickname:profile.nickname,tag:profile.tag,avatarUrl:profile.avatarUrl,statusText:profile.statusText,createdAt:Date.now()});alert('Заявка отправлена.')}async function acceptReq(r){await set(ref(db,`friends/${currentUser.uid}/${r.uid}`),true);await set(ref(db,`friends/${r.uid}/${currentUser.uid}`),true);await remove(ref(db,`friendRequests/${currentUser.uid}/${r.uid}`))}async function declineReq(r){await remove(ref(db,`friendRequests/${currentUser.uid}/${r.uid}`))}function renderRequests(){els.incomingRequestsList.innerHTML=currentIncomingRequests.length?'':'<p class="status">Заявок нет.</p>';currentIncomingRequests.forEach(r=>{const c=document.createElement('div');c.className='request-card';c.innerHTML=`<img src="${esc(r.avatarUrl||avatar(r.nickname))}"><div class="card-main"><strong>${esc(r.nickname||'User')}#${esc(r.tag||'0000')}</strong><span>${esc(r.statusText||'')}</span></div><div class="card-actions"><button class="btn primary" data-a>Принять</button><button class="btn soft" data-d>Отклонить</button></div>`;c.querySelector('[data-a]').onclick=()=>acceptReq(r);c.querySelector('[data-d]').onclick=()=>declineReq(r);els.incomingRequestsList.appendChild(c)})}function renderFriends(){els.friendsList.innerHTML=currentFriends.length?'':'<p class="status">Друзей пока нет.</p>';currentFriends.forEach(f=>{const can=f.activeRoomId&&f.activeRoomOpen,c=document.createElement('div');c.className='friend-card';c.innerHTML=`<img src="${esc(f.avatarUrl||avatar(f.nickname))}"><div class="card-main"><strong>${esc(f.nickname||'User')}#${esc(f.tag||'0000')}</strong><span class="${f.online?'online':'offline'}">${f.online?'● online':'offline'}</span><span>${esc(f.statusText||'')}</span></div><div class="card-actions"><button class="btn primary" data-chat>Чат</button><button class="btn soft" ${can?'':'disabled'} data-join>Join</button></div>`;c.querySelector('[data-chat]').onclick=()=>openDm(f);c.querySelector('[data-join]').onclick=()=>can&&joinRoom(f.activeRoomId);els.friendsList.appendChild(c)})}function searchFriends(){const q=els.friendSearchInput.value.trim().toLowerCase();const res=q?allUsersCache.filter(u=>u.uid!==currentUser.uid&&(`${u.nickname||''}#${u.tag||''}`.toLowerCase().includes(q)||String(u.nickname||'').toLowerCase().includes(q))).slice(0,20):[];els.friendSearchResults.innerHTML=res.length?'':'<p class="status">Ничего не найдено.</p>';res.forEach(u=>{const c=document.createElement('div');c.className='search-card';c.innerHTML=`<img src="${esc(u.avatarUrl||avatar(u.nickname))}"><div class="card-main"><strong>${esc(u.nickname||'User')}#${esc(u.tag||'0000')}</strong><span>${esc(u.statusText||'')}</span></div><button class="btn primary">Добавить</button>`;c.querySelector('button').onclick=()=>sendFriendRequest(u);els.friendSearchResults.appendChild(c)})}
function openDm(f){currentDmFriend=f;els.dmTitle.textContent=`Чат с ${f.nickname}#${f.tag}`;status(els.dmEmptyState,f.online?'Друг онлайн.':'Друг офлайн.');els.friendRoomJoinBtn.classList.toggle('hidden',!(f.activeRoomId&&f.activeRoomOpen));els.friendRoomJoinBtn.onclick=()=>f.activeRoomId&&joinRoom(f.activeRoomId);els.dmMessages.innerHTML='';if(currentDmUnsub)currentDmUnsub();currentDmUnsub=listen(ref(db,`directThreads/${thread(currentUser.uid,f.uid)}`),s=>{els.dmMessages.innerHTML='';const a=[];s.forEach(x=>a.push(x.val()));a.sort((x,y)=>(x.createdAt||0)-(y.createdAt||0));a.forEach(m=>{const u=m.uid===currentUser.uid?profile:f,media=safeUrl(m.mediaUrl),d=document.createElement('div');d.className='dm-message';d.innerHTML=`<strong>${esc(handle(u))}</strong><div>${esc(m.text||'')}</div>${media?(isImg(media)?`<img class="dm-media" src="${esc(media)}">`:`<a href="${esc(media)}" target="_blank">Открыть вложение</a>`):''}<time>${new Date(m.createdAt||Date.now()).toLocaleTimeString([],{hour:'2-digit',minute:'2-digit'})}</time>`;els.dmMessages.appendChild(d)});els.dmMessages.scrollTop=els.dmMessages.scrollHeight})}async function sendDm(e){e.preventDefault();if(!currentDmFriend)return status(els.dmEmptyState,'Сначала выбери друга.');const text=els.dmText.value.trim(),media=safeUrl(els.dmMediaUrl.value.trim());if(!text&&!media)return;await push(ref(db,`directThreads/${thread(currentUser.uid,currentDmFriend.uid)}`),{uid:currentUser.uid,text,mediaUrl:media,createdAt:Date.now()});els.dmText.value='';els.dmMediaUrl.value=''}
function section(id){document.querySelectorAll('.section').forEach(s=>s.classList.toggle('active',s.id===id));document.querySelectorAll('.nav-btn').forEach(b=>b.classList.toggle('active',b.dataset.section===id))}async function google(){try{status(els.authStatus,'Открываю Google-вход...');const p=new GoogleAuthProvider();p.setCustomParameters({prompt:'select_account'});const r=await signInWithPopup(auth,p);await ensureProfile(r.user,r.user.displayName||'')}catch(e){status(els.authStatus,e.message)}}
function bind(){document.querySelectorAll('.nav-btn').forEach(b=>b.onclick=()=>section(b.dataset.section));document.querySelectorAll('.theme-card').forEach(c=>c.onclick=()=>applyTheme(c.dataset.themeChoice));els.loginTab.onclick=()=>setAuthMode('login');els.registerTab.onclick=()=>setAuthMode('register');els.guestTab.onclick=()=>setAuthMode('guest');els.googleSubmit.onclick=google;els.authForm.onsubmit=async e=>{e.preventDefault();try{status(els.authStatus,'Загрузка...');const email=els.emailInput.value.trim(),pass=els.passwordInput.value;if(authMode==='register'){const c=await createUserWithEmailAndPassword(auth,email,pass);await ensureProfile(c.user,els.nickInput.value.trim())}else await signInWithEmailAndPassword(auth,email,pass)}catch(er){status(els.authStatus,er.message)}};els.guestSubmit.onclick=async()=>{try{const c=await signInAnonymously(auth);await ensureProfile(c.user,els.nickInput.value.trim()||guest())}catch(e){status(els.authStatus,e.message)}};els.logoutBtn.onclick=async()=>{await leaveRoom();cleanGlobal();if(currentDmUnsub)currentDmUnsub();await signOut(auth)};els.openProfileBtn.onclick=()=>section('profileSection');[els.profileNick,els.profileTag,els.profileAvatar,els.profileCover].forEach(i=>i.oninput=renderPreview);els.saveProfileBtn.onclick=saveProfile;els.createRoomBtn.onclick=createRoom;els.joinRoomBtn.onclick=()=>joinRoom(els.joinRoomInput.value);els.copyInviteBtn.onclick=async()=>{if(!currentRoomId)return status(els.roomStatus,'Сначала создай комнату.');const u=new URL(location.href);u.searchParams.set('room',currentRoomId);await navigator.clipboard.writeText(u.toString()).catch(()=>{});status(els.roomStatus,'Invite-ссылка скопирована.')};els.openRoomBtn.onclick=()=>setVis('open');els.closeRoomBtn.onclick=()=>setVis('closed');els.publicRoomBtn.onclick=()=>setMode('public');els.inviteRoomBtn.onclick=()=>setMode('invite');document.querySelectorAll('[data-source-tab]').forEach(b=>b.onclick=()=>activateSource(b.dataset.sourceTab));els.sourceType.onchange=toggleSource;if(els.sourceOpenBtn)els.sourceOpenBtn.onclick=openSourceCatalog;if(els.sourceOpenBtnMirror)els.sourceOpenBtnMirror.onclick=openSourceCatalog;if(els.mediaPickerCloseBtn)els.mediaPickerCloseBtn.onclick=closeMediaPicker;if(els.mediaPickerBackdrop)els.mediaPickerBackdrop.onclick=closeMediaPicker;document.querySelectorAll('[data-picker-source]').forEach(b=>b.onclick=()=>setPickerSource(b.dataset.pickerSource));if(els.mediaSearchForm)els.mediaSearchForm.onsubmit=handleMediaSearch;if(els.mediaPasteBtn)els.mediaPasteBtn.onclick=pasteMediaFromClipboard;if(els.mediaExternalBtn)els.mediaExternalBtn.onclick=()=>window.open(sourceExternalUrl(mediaPickerSource,els.mediaSearchInput?.value||''),'_blank','noopener,noreferrer');if(els.saveYtApiKeyBtn)els.saveYtApiKeyBtn.onclick=saveYoutubeApiKey;renderEmojiPanel();if(els.emojiBtn)els.emojiBtn.onclick=()=>els.emojiPanel?.classList.toggle('hidden');if(els.gifBtn)els.gifBtn.onclick=openGifPicker;if(els.openGiphyFromPickerBtn)els.openGiphyFromPickerBtn.onclick=openGifPicker;if(els.gifPickerCloseBtn)els.gifPickerCloseBtn.onclick=closeGifPicker;if($('gifPickerCloseBtnFloating'))$('gifPickerCloseBtnFloating').onclick=closeGifPicker;if(els.gifPickerBackdrop)els.gifPickerBackdrop.onclick=closeGifPicker;if(els.gifSearchForm)els.gifSearchForm.onsubmit=searchGiphyPicker;if(els.saveGiphyApiKeyBtn)els.saveGiphyApiKeyBtn.onclick=saveGiphyApiKey;if(els.gifPasteBtn)els.gifPasteBtn.onclick=pasteGifFromClipboard;document.querySelectorAll('[data-room-reaction]').forEach(b=>b.onclick=()=>sendRoomReaction(b.dataset.roomReaction));els.localVideoFile.onchange=()=>currentSource.type==='local'&&loadSource(currentSource);els.setSourceBtn.onclick=setSource;els.chatForm.onsubmit=async e=>{e.preventDefault();await sendChat(els.chatInput.value);els.chatInput.value='';hide(els.emojiPanel)};els.voiceBtn.onclick=()=>voiceOn?stopVoice():startVoice();els.friendSearchBtn.onclick=searchFriends;els.friendSearchInput.onkeydown=e=>{if(e.key==='Enter'){e.preventDefault();searchFriends()}};els.dmForm.onsubmit=sendDm;activateSource(els.sourceType.value||'youtube');setPickerSource('youtube');renderGifFallback()}
async function boot(){applyTheme(localStorage.getItem('jc-theme')||'rave');bind();setAuthMode('login');try{init()}catch(e){status(els.authStatus,e.message);return}onAuthStateChanged(auth,async u=>{currentUser=u;cleanGlobal();cleanRoom();if(currentDmUnsub){currentDmUnsub();currentDmUnsub=null}if(!u){profile=null;currentRoomId='';currentRoom=null;shell(false);return}profile=await ensureProfile(u);renderProfile();shell(true);section('homeSection');await presence();startLists();const r=roomFromUrl();if(r)await joinRoom(r)})}boot();

/* ===== Embedded profile/themes/android hotfix fullprofile-20260501-9 ===== */
/* =========================================================
   JustClover Profile + Themes + Catalog + Android Hotfix
   Version: fullprofile-20260501-9

   Подключить ПОСЛЕ app.js:
   <script type="module" src="./jc-profilethemes-hotfix.js?v=fullprofile-20260501-9"></script>
   ========================================================= */

const JC_HOTFIX_VERSION = 'fullprofile-20260501-9';
console.log('JustClover profile/themes hotfix loaded:', JC_HOTFIX_VERSION);

const JC_HOTFIX_$ = id => document.getElementById(id);

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
  const avatarInput = JC_HOTFIX_$('profileAvatar');
  const coverInput = JC_HOTFIX_$('profileCover');
  const accentInput = JC_HOTFIX_$('profileAccent');
  const saveBtn = JC_HOTFIX_$('saveProfileBtn');

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
  const home = JC_HOTFIX_$('homeSection');
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

waitFor(() => document.body && JC_HOTFIX_$('profileSection') && JC_HOTFIX_$('appearanceSection'), initHotfix);



/* ===== Social / Invite / Background hotfix socialinvitebg-20260501-10 ===== */
console.log('JustClover social invite/bg hotfix loaded: socialinvitebg-20260501-10');
els.roomCustomCodeInput = document.getElementById('roomCustomCodeInput');
els.roomPasswordCreateInput = document.getElementById('roomPasswordCreateInput');
els.roomJoinPasswordInput = document.getElementById('roomJoinPasswordInput');
els.quickInviteBtn = document.getElementById('quickInviteBtn');
els.roomInviteStatus = document.getElementById('roomInviteStatus');

function jcNormalize(v){
  return String(v||'')
    .toLowerCase()
    .trim()
    .normalize('NFKD')
    .replace(/[\u0300-\u036f]/g,'')
    .replace(/[#@]/g,'')
    .replace(/\s+/g,' ');
}

async function jcLoadAllUsers(){
  if(Array.isArray(allUsersCache) && allUsersCache.length) return allUsersCache;
  const snap = await get(ref(db,'users'));
  const arr = [];
  snap.forEach(x=>arr.push(x.val()));
  allUsersCache = arr;
  return arr;
}

searchFriends = async function(){
  const raw = (els.friendSearchInput?.value || '').trim();
  const q = jcNormalize(raw);
  if(!q){
    els.friendSearchResults.innerHTML = '<p class="status">Введи ник, тег или часть ника.</p>';
    return;
  }
  els.friendSearchResults.innerHTML = '<p class="status">Ищу пользователей...</p>';
  const users = await jcLoadAllUsers();
  const results = users.filter(u=>u.uid!==currentUser?.uid).filter(u=>{
    const nick = jcNormalize(u.nickname || '');
    const tagv = jcNormalize(String(u.tag || ''));
    const full = jcNormalize(`${u.nickname||''} #${u.tag||''}`);
    return nick.includes(q) || tagv.includes(q) || full.includes(q);
  }).slice(0, 25);

  els.friendSearchResults.innerHTML = results.length ? '' : '<p class="status">Ничего не найдено. Попробуй точнее ник или тег.</p>';
  results.forEach(u=>{
    const c = document.createElement('div');
    c.className = 'search-card';
    c.innerHTML = `<img src="${esc(u.avatarUrl||avatar(u.nickname))}"><div class="card-main"><strong>${esc(u.nickname||'User')}#${esc(u.tag||'0000')}</strong><span>${esc(u.statusText||'')}</span></div><button class="btn primary">Добавить</button>`;
    c.querySelector('button').onclick = ()=>sendFriendRequest(u);
    els.friendSearchResults.appendChild(c);
  });
};
if(els.friendSearchBtn) els.friendSearchBtn.onclick = searchFriends;
if(els.friendSearchInput) {
  els.friendSearchInput.onkeydown = e=>{ if(e.key==='Enter'){e.preventDefault();searchFriends();} };
  els.friendSearchInput.oninput = ()=> {
    if((els.friendSearchInput.value||'').trim().length >= 2) searchFriends();
    if(!(els.friendSearchInput.value||'').trim()) els.friendSearchResults.innerHTML='';
  };
}

async function jcFindRoomByIdOrCode(value){
  const input = String(value||'').trim();
  if(!input) return null;
  const direct = await get(ref(db,`rooms/${input}`));
  if(direct.exists()) return direct.val();
  const snap = await get(ref(db,'rooms'));
  let found = null;
  snap.forEach(x=>{
    const room = x.val();
    if(found) return;
    if(String(room.roomCode||'').toLowerCase() === input.toLowerCase()) found = room;
  });
  return found;
}

function jcInviteLink(room){
  const u = new URL(location.href);
  u.searchParams.set('room', room.roomCode || room.id || currentRoomId);
  if(room.roomPassword) u.searchParams.set('pass', room.roomPassword);
  return u.toString();
}

async function jcCopyInvite(){
  if(!currentRoomId || !currentRoom) return status(els.roomStatus,'Сначала создай комнату.');
  const text = jcInviteLink(currentRoom);
  await navigator.clipboard.writeText(text).catch(()=>{});
  status(els.roomStatus, 'Invite-ссылка скопирована.');
  if(els.roomInviteStatus){
    els.roomInviteStatus.textContent = 'Ссылка скопирована — отправь другу.';
    els.roomInviteStatus.classList.remove('hidden');
    setTimeout(()=>els.roomInviteStatus?.classList.add('hidden'), 2200);
  }
}

createRoom = async function(){
  if(!currentUser || !profile) return;
  const rr = push(ref(db,'rooms'));
  const id = rr.key;
  const name = (els.roomNameInput?.value || '').trim() || `${profile.nickname}'s room`;
  const codeRaw = (els.roomCustomCodeInput?.value || '').trim().toLowerCase().replace(/[^a-z0-9_-]/g,'').slice(0,24);
  const pass = (els.roomPasswordCreateInput?.value || '').trim().slice(0,32);

  if(codeRaw){
    const snap = await get(ref(db,'rooms'));
    let taken = false;
    snap.forEach(x=>{ const r=x.val(); if(String(r.roomCode||'').toLowerCase()===codeRaw) taken=true; });
    if(taken) return status(els.roomStatus,'Такой код комнаты уже занят.');
  }

  const room = {
    id,
    name,
    roomCode: codeRaw || '',
    roomPassword: pass || '',
    ownerUid: currentUser.uid,
    ownerName: handle(profile),
    ownerAvatar: profile.avatarUrl || avatar(profile.nickname),
    visibility: 'open',
    joinMode: 'invite',
    publicOpen: false,
    source: {type:'none'},
    playback: {time:0,playing:false,updatedAt:Date.now(),byUid:''},
    createdAt: Date.now(),
    updatedAt: Date.now()
  };
  await set(rr, room);
  await joinRoom(codeRaw || id);
  section('watchSection');
};

joinRoom = async function(value){
  if(!currentUser || !profile) return;
  const input = String(value || '').trim();
  if(!input) return status(els.roomStatus,'Введи код комнаты или invite-ссылку.');
  let roomKey = input;
  try {
    const maybeUrl = new URL(input);
    roomKey = maybeUrl.searchParams.get('room') || roomKey;
    if(els.roomJoinPasswordInput && maybeUrl.searchParams.get('pass') && !els.roomJoinPasswordInput.value) {
      els.roomJoinPasswordInput.value = maybeUrl.searchParams.get('pass');
    }
  } catch {}

  const r = await jcFindRoomByIdOrCode(roomKey);
  if(!r) return status(els.roomStatus,'Комната не найдена.');
  if(r.visibility !== 'open' && r.ownerUid !== currentUser.uid) return status(els.roomStatus,'Комната закрыта.');
  if(r.roomPassword && r.ownerUid !== currentUser.uid){
    const entered = (els.roomJoinPasswordInput?.value || '').trim() || new URL(location.href).searchParams.get('pass') || '';
    if(entered !== r.roomPassword) return status(els.roomStatus,'Неверный пароль комнаты.');
  }

  await leaveRoom(false);
  currentRoomId = r.id;
  currentRoom = r;
  if(els.joinRoomInput) els.joinRoomInput.value = r.roomCode || r.id;
  setRoomUrl(r.roomCode || r.id);

  await set(ref(db,`rooms/${r.id}/members/${currentUser.uid}`), {
    uid: currentUser.uid,
    nickname: profile.nickname,
    tag: profile.tag,
    avatarUrl: profile.avatarUrl || avatar(profile.nickname),
    joinedAt: Date.now()
  });
  await update(ref(db,`users/${currentUser.uid}`), {
    activeRoomId: r.id,
    activeRoomName: r.name || 'Комната',
    activeRoomOpen: r.visibility === 'open',
    activeRoomPublic: r.joinMode === 'public',
    updatedAt: Date.now()
  });
  await update(ref(db,`presence/${currentUser.uid}`), {activeRoomId:r.id});
  subRoom(r.id);
  status(els.roomStatus, `Ты в комнате: ${r.name || r.id}`);
  section('watchSection');
};

const jcOldRenderRoom = renderRoom;
renderRoom = function(){
  jcOldRenderRoom();
  if(!currentRoom) return;
  const bits = [];
  if(currentRoom.roomCode) bits.push(`код: ${currentRoom.roomCode}`);
  if(currentRoom.roomPassword) bits.push(`пароль: ${currentRoom.roomPassword}`);
  const extra = bits.length ? ' • ' + bits.join(' • ') : '';
  status(els.roomStatus, `${currentRoom.name||currentRoom.id} — ${currentRoom.visibility==='open'?'открыта':'закрыта'}, ${currentRoom.joinMode==='public'?'публичная':'по invite'}${extra}`);
  syncRoomDependentUi();
};

const jcOldSetSource = setSource;
setSource = async function(...args){
  if(!currentRoomId) return status(els.sourceNote, 'Сначала создай комнату, потом запускай видео.');
  return jcOldSetSource.apply(this, args);
};
if(els.setSourceBtn) els.setSourceBtn.onclick = setSource;

function syncRoomDependentUi(){
  const hasRoom = !!currentRoomId;
  document.body.dataset.hasRoom = hasRoom ? '1' : '0';
  const targets = [els.setSourceBtn, els.sourceUrl, els.sourceTitle, els.localVideoFile];
  targets.forEach(el => { if(el) el.disabled = !hasRoom; });
  const note = hasRoom
    ? 'Клик по карточке или кнопка “Запустить” отправляет источник в текущую комнату.'
    : 'Сначала создай комнату или войди по invite-коду — потом запускай видео.';
  status(els.sourceNote, note);
  if(els.quickInviteBtn) els.quickInviteBtn.disabled = !hasRoom;
  if(els.copyInviteBtn) els.copyInviteBtn.disabled = !hasRoom;
}

function ensureLiveThemeBackdrop(){
  if(document.querySelector('.jc-live-bg')) return;
  const wrap = document.createElement('div');
  wrap.className = 'jc-live-bg';
  wrap.innerHTML = '<span class="blob b1"></span><span class="blob b2"></span><span class="blob b3"></span><span class="spark s1"></span><span class="spark s2"></span><span class="spark s3"></span>';
  document.body.appendChild(wrap);
}

function patchBindingsAfterHotfix(){
  if(els.createRoomBtn) els.createRoomBtn.onclick = createRoom;
  if(els.joinRoomBtn) els.joinRoomBtn.onclick = ()=>joinRoom(els.joinRoomInput?.value);
  if(els.copyInviteBtn) els.copyInviteBtn.onclick = jcCopyInvite;
  if(els.quickInviteBtn) els.quickInviteBtn.onclick = jcCopyInvite;
  syncRoomDependentUi();
}
ensureLiveThemeBackdrop();
patchBindingsAfterHotfix();
setTimeout(patchBindingsAfterHotfix, 600);
