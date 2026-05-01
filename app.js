import { firebaseConfig } from "./firebase-config.js";
import { initializeApp } from "https://www.gstatic.com/firebasejs/10.12.5/firebase-app.js";
import { getAuth,onAuthStateChanged,createUserWithEmailAndPassword,signInWithEmailAndPassword,signInAnonymously,signInWithPopup,GoogleAuthProvider,signOut } from "https://www.gstatic.com/firebasejs/10.12.5/firebase-auth.js";
import { getDatabase,ref,get,set,update,push,remove,onValue,onChildAdded,onDisconnect,serverTimestamp,query,orderByChild,equalTo,off } from "https://www.gstatic.com/firebasejs/10.12.5/firebase-database.js";
console.log('JustClover clickfix app.js loaded: 2026-05-01-1');
window.addEventListener('error', e => console.error('JustClover runtime error:', e.message, e.error));
const $=id=>document.getElementById(id);
const els={setupWarning:$('setupWarning'),authView:$('authView'),appView:$('appView'),topUser:$('topUser'),logoutBtn:$('logoutBtn'),openProfileBtn:$('openProfileBtn'),loginTab:$('loginTab'),registerTab:$('registerTab'),guestTab:$('guestTab'),authForm:$('authForm'),guestSubmit:$('guestSubmit'),googleSubmit:$('googleSubmit'),authSubmit:$('authSubmit'),nickLabel:$('nickLabel'),nickInput:$('nickInput'),emailInput:$('emailInput'),passwordInput:$('passwordInput'),authStatus:$('authStatus'),miniProfile:$('miniProfile'),miniAvatar:$('miniAvatar'),miniName:$('miniName'),miniTag:$('miniTag'),miniStatus:$('miniStatus'),roomNameInput:$('roomNameInput'),createRoomBtn:$('createRoomBtn'),joinRoomInput:$('joinRoomInput'),joinRoomBtn:$('joinRoomBtn'),copyInviteBtn:$('copyInviteBtn'),openRoomBtn:$('openRoomBtn'),closeRoomBtn:$('closeRoomBtn'),publicRoomBtn:$('publicRoomBtn'),inviteRoomBtn:$('inviteRoomBtn'),roomStatus:$('roomStatus'),membersList:$('membersList'),sourceType:$('sourceType'),sourceUrl:$('sourceUrl'),localVideoFile:$('localVideoFile'),sourceTitle:$('sourceTitle'),setSourceBtn:$('setSourceBtn'),sourceNote:$('sourceNote'),videoPlayer:$('videoPlayer'),youtubePlayer:$('youtubePlayer'),iframePlayer:$('iframePlayer'),externalPlayer:$('externalPlayer'),externalText:$('externalText'),externalLink:$('externalLink'),emptyPlayer:$('emptyPlayer'),publicRoomsList:$('publicRoomsList'),onlineUsersList:$('onlineUsersList'),chatMessages:$('chatMessages'),chatForm:$('chatForm'),chatInput:$('chatInput'),voiceBtn:$('voiceBtn'),voiceStatus:$('voiceStatus'),remoteAudio:$('remoteAudio'),profileNick:$('profileNick'),profileTag:$('profileTag'),profileAvatar:$('profileAvatar'),profileCover:$('profileCover'),profileStatusText:$('profileStatusText'),profileBio:$('profileBio'),profileAccent:$('profileAccent'),saveProfileBtn:$('saveProfileBtn'),profileSaveStatus:$('profileSaveStatus'),profilePreviewCard:$('profilePreviewCard'),profilePreviewAvatar:$('profilePreviewAvatar'),profilePreviewName:$('profilePreviewName'),profilePreviewTag:$('profilePreviewTag'),friendSearchInput:$('friendSearchInput'),friendSearchBtn:$('friendSearchBtn'),friendSearchResults:$('friendSearchResults'),incomingRequestsList:$('incomingRequestsList'),friendsList:$('friendsList'),dmEmptyState:$('dmEmptyState'),dmTitle:$('dmTitle'),dmMessages:$('dmMessages'),dmForm:$('dmForm'),dmText:$('dmText'),dmMediaUrl:$('dmMediaUrl'),sendDmBtn:$('sendDmBtn'),friendRoomJoinBtn:$('friendRoomJoinBtn')};
let app,auth,db,authMode='login',currentUser=null,profile=null,currentRoomId='',currentRoom=null,currentSource={type:'none'},applyingRemote=false,roomUnsubs=[],globalUnsubs=[],ytPlayer=null,ytPoll=null,lastYtTime=0,localStream=null,voiceOn=false,localVideoObjectUrl='',currentDmFriend=null,currentDmUnsub=null,allUsersCache=[],currentFriends=[],currentIncomingRequests=[];const peers=new Map(),rtcConfig={iceServers:[{urls:'stun:stun.l.google.com:19302'}]};
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
async function leaveRoom(clear=true){if(!currentUser||!currentRoomId)return;const old=currentRoomId;await remove(ref(db,`rooms/${old}/members/${currentUser.uid}`)).catch(()=>{});await update(ref(db,`users/${currentUser.uid}`),{activeRoomId:'',activeRoomName:'',activeRoomOpen:false,activeRoomPublic:false,updatedAt:Date.now()}).catch(()=>{});await update(ref(db,`presence/${currentUser.uid}`),{activeRoomId:''}).catch(()=>{});await stopVoice();currentRoomId='';currentRoom=null;cleanRoom();clearChat();if(clear)setRoomUrl('')}
function subRoom(id){cleanRoom();roomUnsubs.push(listen(ref(db,`rooms/${id}`),s=>{if(!s.exists()){status(els.roomStatus,'Комната удалена.');leaveRoom();return}currentRoom=s.val();renderRoom()}));roomUnsubs.push(listen(ref(db,`rooms/${id}/members`),s=>{const a=[];s.forEach(x=>a.push(x.val()));renderMembers(a)}));clearChat();roomUnsubs.push(onChildAdded(ref(db,`roomChats/${id}`),s=>addChat(s.val())))}
function renderRoom(){if(!currentRoom)return;const owner=currentRoom.ownerUid===currentUser.uid;[els.openRoomBtn,els.closeRoomBtn,els.publicRoomBtn,els.inviteRoomBtn].forEach(b=>b.disabled=!owner);status(els.roomStatus,`${currentRoom.name||currentRoom.id} — ${currentRoom.visibility==='open'?'открыта':'закрыта'}, ${currentRoom.joinMode==='public'?'публичная':'по ссылке'}`);loadSource(currentRoom.source);applyPlayback(currentRoom.playback)}function renderMembers(m){els.membersList.innerHTML=m.length?'':'<p class="status">Пока никого нет.</p>';m.forEach(x=>{const d=document.createElement('div');d.className='message';d.innerHTML=`<strong>${esc(x.nickname||'User')}#${esc(x.tag||'0000')}</strong><div class="online">● в комнате</div>`;els.membersList.appendChild(d)})}
async function setVis(v){if(!currentRoom||currentRoom.ownerUid!==currentUser.uid)return;const publicOpen=v==='open'&&currentRoom.joinMode==='public';await update(ref(db,`rooms/${currentRoomId}`),{visibility:v,publicOpen,updatedAt:Date.now()});await update(ref(db,`users/${currentUser.uid}`),{activeRoomOpen:v==='open',activeRoomPublic:publicOpen})}async function setMode(m){if(!currentRoom||currentRoom.ownerUid!==currentUser.uid)return;const publicOpen=currentRoom.visibility==='open'&&m==='public';await update(ref(db,`rooms/${currentRoomId}`),{joinMode:m,publicOpen,updatedAt:Date.now()});await update(ref(db,`users/${currentUser.uid}`),{activeRoomPublic:publicOpen})}
function ytId(u){try{const p=new URL(u);if(p.hostname.includes('youtu.be'))return p.pathname.slice(1).split('/')[0];if(p.hostname.includes('youtube.com')){if(p.searchParams.get('v'))return p.searchParams.get('v');const parts=p.pathname.split('/').filter(Boolean);const i=parts.indexOf('shorts');if(i>=0)return parts[i+1];const e=parts.indexOf('embed');if(e>=0)return parts[e+1]}}catch{}return''}function vkEmbed(u){try{const p=new URL(u);if(p.pathname.includes('video_ext.php'))return p.toString();const m=(p.pathname+p.search).match(/video(-?\d+)_(\d+)/);if(m)return`https://vk.com/video_ext.php?oid=${m[1]}&id=${m[2]}&hd=2`;return p.toString()}catch{return''}}
function toggleSource(){const local=els.sourceType.value==='local';els.sourceUrl.classList.toggle('hidden',local);els.localVideoFile.classList.toggle('hidden',!local);status(els.sourceNote,local?'Local video выбирается с устройства. Другим нужен тот же файл.':els.sourceType.value==='youtube'?'YouTube: если видео запрещает встраивание, используй другое видео.':'VK/Anilibrix откроется через iframe или внешнюю ссылку.')}
async function setSource(){if(!currentRoomId){status(els.roomStatus,'Сначала создай комнату.');return}if(currentRoom.ownerUid!==currentUser.uid){status(els.roomStatus,'Источник может менять только хост.');return}const type=els.sourceType.value,title=els.sourceTitle.value.trim()||'Источник';let source;if(type==='local'){const f=els.localVideoFile.files?.[0];if(!f){status(els.roomStatus,'Выбери local video файл.');return}loadLocal();source={type:'local',title:f.name,filename:f.name,size:f.size}}else{const url=safeUrl(els.sourceUrl.value.trim());if(!url){status(els.roomStatus,'Вставь корректную ссылку.');return}if(type==='youtube'){const id=ytId(url);if(!id){status(els.roomStatus,'Не удалось распознать YouTube ID.');return}source={type:'youtube',url,videoId:id,title:title==='Источник'?'YouTube':title}}else if(type==='vk')source={type:'vk',url,embedUrl:vkEmbed(url),title:title==='Источник'?'VK Video':title};else source={type:'anilibrix',url,embedUrl:url,title:title==='Источник'?'Anilibrix':title}}await update(ref(db,`rooms/${currentRoomId}`),{source,playback:{time:0,playing:false,updatedAt:Date.now(),byUid:currentUser.uid},updatedAt:Date.now()})}
function hidePlayers(){[els.videoPlayer,els.youtubePlayer,els.iframePlayer,els.externalPlayer,els.emptyPlayer].forEach(hide);els.iframePlayer.src='about:blank';if(ytPoll)clearInterval(ytPoll);ytPoll=null}function ext(src,title,note){show(els.iframePlayer);els.iframePlayer.src=src;show(els.externalPlayer);els.externalText.textContent=`${title}: если встроенный плеер не загрузился, открой ссылку отдельно.`;els.externalLink.href=src;status(els.sourceNote,note)}function loadLocal(){const f=els.localVideoFile.files?.[0];if(!f){show(els.externalPlayer);els.externalText.textContent='Выбери этот же local video файл на своём устройстве.';return false}if(localVideoObjectUrl)URL.revokeObjectURL(localVideoObjectUrl);localVideoObjectUrl=URL.createObjectURL(f);show(els.videoPlayer);els.videoPlayer.src=localVideoObjectUrl;els.videoPlayer.load();status(els.sourceNote,`Local video: ${f.name}`);return true}
async function loadSource(s={type:'none'}){currentSource=s;hidePlayers();if(!s||s.type==='none'){show(els.emptyPlayer);return}if(s.type==='local'){loadLocal();return}if(s.type==='vk'){ext(s.embedUrl||s.url,s.title||'VK Video','VK Video открыт через iframe.');return}if(s.type==='anilibrix'){ext(s.embedUrl||s.url,s.title||'Anilibrix','Anilibrix открыт через iframe.');return}if(s.type==='youtube'){show(els.youtubePlayer);await loadYT(s.videoId);status(els.sourceNote,`YouTube: ${s.title||s.videoId}`);return}}
window.onYouTubeIframeAPIReady=()=>{};function waitYT(){return new Promise(res=>{if(window.YT?.Player)return res(true);const t=setInterval(()=>{if(window.YT?.Player){clearInterval(t);res(true)}},100);setTimeout(()=>{clearInterval(t);res(false)},8000)})}async function loadYT(id){if(!await waitYT()){status(els.sourceNote,'YouTube API не загрузился. Проверь VPN/сеть.');return}const opts={width:'100%',height:'100%',videoId:id,playerVars:{playsinline:1,rel:0,origin:location.origin},events:{onStateChange:onYTState,onReady:startYTPoll,onError:onYTError}};if(!ytPlayer)ytPlayer=new YT.Player('youtubePlayer',opts);else{ytPlayer.loadVideoById(id);startYTPoll()}}function onYTError(e){let c=e?.data,t=`YouTube error ${c}.`;if(c===101||c===150)t='Это видео нельзя воспроизвести во встроенном плеере.';status(els.roomStatus,t);status(els.sourceNote,t)}function onYTState(e){if(applyingRemote||!currentRoomId||currentSource.type!=='youtube')return;const time=ytPlayer?.getCurrentTime?.()||0;if(e.data===YT.PlayerState.PLAYING)writePlayback(true,time);if(e.data===YT.PlayerState.PAUSED)writePlayback(false,time)}function startYTPoll(){if(ytPoll)clearInterval(ytPoll);lastYtTime=ytPlayer?.getCurrentTime?.()||0;ytPoll=setInterval(()=>{if(applyingRemote||currentSource.type!=='youtube'||!currentRoomId||!ytPlayer)return;const st=ytPlayer.getPlayerState?.(),now=ytPlayer.getCurrentTime?.()||0;if(st===YT.PlayerState.PLAYING&&Math.abs(now-(lastYtTime+1))>3)writePlayback(true,now);lastYtTime=now},1000)}async function writePlayback(play,time){if(!currentRoomId)return;await update(ref(db,`rooms/${currentRoomId}/playback`),{playing:!!play,time:Number(time)||0,updatedAt:Date.now(),byUid:currentUser.uid})}async function applyPlayback(p){if(!p||p.byUid===currentUser?.uid)return;const target=(Number(p.time)||0)+(p.playing?Math.max(0,(Date.now()-(p.updatedAt||Date.now()))/1000):0);applyingRemote=true;try{if(currentSource.type==='local'){if(Math.abs((els.videoPlayer.currentTime||0)-target)>1.2)els.videoPlayer.currentTime=target;p.playing?await els.videoPlayer.play().catch(()=>{}):els.videoPlayer.pause()}if(currentSource.type==='youtube'&&ytPlayer){if(Math.abs((ytPlayer.getCurrentTime?.()||0)-target)>1.2)ytPlayer.seekTo(target,true);p.playing?ytPlayer.playVideo():ytPlayer.pauseVideo()}}finally{setTimeout(()=>applyingRemote=false,400)}}els.videoPlayer.addEventListener('play',()=>{if(!applyingRemote&&currentSource.type==='local')writePlayback(true,els.videoPlayer.currentTime)});els.videoPlayer.addEventListener('pause',()=>{if(!applyingRemote&&currentSource.type==='local')writePlayback(false,els.videoPlayer.currentTime)});els.videoPlayer.addEventListener('seeked',()=>{if(!applyingRemote&&currentSource.type==='local')writePlayback(!els.videoPlayer.paused,els.videoPlayer.currentTime)});
function clearChat(){els.chatMessages.innerHTML=''}function addChat(m){const d=document.createElement('div');d.className='message';d.innerHTML=`<strong>${esc(m.nickname||'User')}#${esc(m.tag||'0000')}</strong><div>${esc(m.text)}</div><time>${new Date(m.createdAt||Date.now()).toLocaleTimeString([],{hour:'2-digit',minute:'2-digit'})}</time>`;els.chatMessages.appendChild(d);els.chatMessages.scrollTop=els.chatMessages.scrollHeight}async function sendChat(t){t=t.trim();if(!t||!currentRoomId)return;await push(ref(db,`roomChats/${currentRoomId}`),{uid:currentUser.uid,nickname:profile.nickname,tag:profile.tag,text:t,createdAt:Date.now()})}
async function saveProfile(e){e?.preventDefault?.();const nickname=els.profileNick.value.trim().slice(0,24)||'User',t=els.profileTag.value.trim().replace(/[^a-zA-Z0-9_а-яА-ЯёЁ-]/g,'').slice(0,12)||tag();const data={nickname,tag:t,avatarUrl:safeUrl(els.profileAvatar.value)||avatar(nickname),coverUrl:safeUrl(els.profileCover.value),statusText:els.profileStatusText.value.trim().slice(0,80),bio:els.profileBio.value.trim().slice(0,280),accentColor:els.profileAccent.value||'#6d5dfc',updatedAt:Date.now()};await update(ref(db,`users/${currentUser.uid}`),data);profile={...profile,...data};renderProfile();status(els.profileSaveStatus,'Сохранено.')}
async function startVoice(){if(!currentRoomId){status(els.voiceStatus,'Сначала войди в комнату.');return}try{localStream=await navigator.mediaDevices.getUserMedia({audio:true,video:false});voiceOn=true;els.voiceBtn.textContent='Выключить голос';status(els.voiceStatus,'Голос включён.')}catch{status(els.voiceStatus,'Микрофон недоступен.')}}async function stopVoice(){if(!voiceOn)return;voiceOn=false;els.voiceBtn.textContent='Включить голос';status(els.voiceStatus,'Голос выключен.');if(localStream){localStream.getTracks().forEach(t=>t.stop());localStream=null}}
function subscribeFriends(){globalUnsubs.push(listen(ref(db,`friends/${currentUser.uid}`),async s=>{const ids=[];s.forEach(x=>ids.push(x.key));currentFriends=(await Promise.all(ids.map(async id=>(await get(ref(db,`users/${id}`))).val()))).filter(Boolean);renderFriends()}));globalUnsubs.push(listen(ref(db,`friendRequests/${currentUser.uid}`),async s=>{const a=[];s.forEach(x=>a.push({uid:x.key,...x.val()}));currentIncomingRequests=a;renderRequests()}))}async function sendFriendRequest(u){if(!u?.uid||u.uid===currentUser.uid)return;await set(ref(db,`friendRequests/${u.uid}/${currentUser.uid}`),{uid:currentUser.uid,nickname:profile.nickname,tag:profile.tag,avatarUrl:profile.avatarUrl,statusText:profile.statusText,createdAt:Date.now()});alert('Заявка отправлена.')}async function acceptReq(r){await set(ref(db,`friends/${currentUser.uid}/${r.uid}`),true);await set(ref(db,`friends/${r.uid}/${currentUser.uid}`),true);await remove(ref(db,`friendRequests/${currentUser.uid}/${r.uid}`))}async function declineReq(r){await remove(ref(db,`friendRequests/${currentUser.uid}/${r.uid}`))}function renderRequests(){els.incomingRequestsList.innerHTML=currentIncomingRequests.length?'':'<p class="status">Заявок нет.</p>';currentIncomingRequests.forEach(r=>{const c=document.createElement('div');c.className='request-card';c.innerHTML=`<img src="${esc(r.avatarUrl||avatar(r.nickname))}"><div class="card-main"><strong>${esc(r.nickname||'User')}#${esc(r.tag||'0000')}</strong><span>${esc(r.statusText||'')}</span></div><div class="card-actions"><button class="btn primary" data-a>Принять</button><button class="btn soft" data-d>Отклонить</button></div>`;c.querySelector('[data-a]').onclick=()=>acceptReq(r);c.querySelector('[data-d]').onclick=()=>declineReq(r);els.incomingRequestsList.appendChild(c)})}function renderFriends(){els.friendsList.innerHTML=currentFriends.length?'':'<p class="status">Друзей пока нет.</p>';currentFriends.forEach(f=>{const can=f.activeRoomId&&f.activeRoomOpen,c=document.createElement('div');c.className='friend-card';c.innerHTML=`<img src="${esc(f.avatarUrl||avatar(f.nickname))}"><div class="card-main"><strong>${esc(f.nickname||'User')}#${esc(f.tag||'0000')}</strong><span class="${f.online?'online':'offline'}">${f.online?'● online':'offline'}</span><span>${esc(f.statusText||'')}</span></div><div class="card-actions"><button class="btn primary" data-chat>Чат</button><button class="btn soft" ${can?'':'disabled'} data-join>Join</button></div>`;c.querySelector('[data-chat]').onclick=()=>openDm(f);c.querySelector('[data-join]').onclick=()=>can&&joinRoom(f.activeRoomId);els.friendsList.appendChild(c)})}function searchFriends(){const q=els.friendSearchInput.value.trim().toLowerCase();const res=q?allUsersCache.filter(u=>u.uid!==currentUser.uid&&(`${u.nickname||''}#${u.tag||''}`.toLowerCase().includes(q)||String(u.nickname||'').toLowerCase().includes(q))).slice(0,20):[];els.friendSearchResults.innerHTML=res.length?'':'<p class="status">Ничего не найдено.</p>';res.forEach(u=>{const c=document.createElement('div');c.className='search-card';c.innerHTML=`<img src="${esc(u.avatarUrl||avatar(u.nickname))}"><div class="card-main"><strong>${esc(u.nickname||'User')}#${esc(u.tag||'0000')}</strong><span>${esc(u.statusText||'')}</span></div><button class="btn primary">Добавить</button>`;c.querySelector('button').onclick=()=>sendFriendRequest(u);els.friendSearchResults.appendChild(c)})}
function openDm(f){currentDmFriend=f;els.dmTitle.textContent=`Чат с ${f.nickname}#${f.tag}`;status(els.dmEmptyState,f.online?'Друг онлайн.':'Друг офлайн.');els.friendRoomJoinBtn.classList.toggle('hidden',!(f.activeRoomId&&f.activeRoomOpen));els.friendRoomJoinBtn.onclick=()=>f.activeRoomId&&joinRoom(f.activeRoomId);els.dmMessages.innerHTML='';if(currentDmUnsub)currentDmUnsub();currentDmUnsub=listen(ref(db,`directThreads/${thread(currentUser.uid,f.uid)}`),s=>{els.dmMessages.innerHTML='';const a=[];s.forEach(x=>a.push(x.val()));a.sort((x,y)=>(x.createdAt||0)-(y.createdAt||0));a.forEach(m=>{const u=m.uid===currentUser.uid?profile:f,media=safeUrl(m.mediaUrl),d=document.createElement('div');d.className='dm-message';d.innerHTML=`<strong>${esc(handle(u))}</strong><div>${esc(m.text||'')}</div>${media?(isImg(media)?`<img class="dm-media" src="${esc(media)}">`:`<a href="${esc(media)}" target="_blank">Открыть вложение</a>`):''}<time>${new Date(m.createdAt||Date.now()).toLocaleTimeString([],{hour:'2-digit',minute:'2-digit'})}</time>`;els.dmMessages.appendChild(d)});els.dmMessages.scrollTop=els.dmMessages.scrollHeight})}async function sendDm(e){e.preventDefault();if(!currentDmFriend)return status(els.dmEmptyState,'Сначала выбери друга.');const text=els.dmText.value.trim(),media=safeUrl(els.dmMediaUrl.value.trim());if(!text&&!media)return;await push(ref(db,`directThreads/${thread(currentUser.uid,currentDmFriend.uid)}`),{uid:currentUser.uid,text,mediaUrl:media,createdAt:Date.now()});els.dmText.value='';els.dmMediaUrl.value=''}
function section(id){document.querySelectorAll('.section').forEach(s=>s.classList.toggle('active',s.id===id));document.querySelectorAll('.nav-btn').forEach(b=>b.classList.toggle('active',b.dataset.section===id))}async function google(){try{status(els.authStatus,'Открываю Google-вход...');const p=new GoogleAuthProvider();p.setCustomParameters({prompt:'select_account'});const r=await signInWithPopup(auth,p);await ensureProfile(r.user,r.user.displayName||'')}catch(e){status(els.authStatus,e.message)}}
function bind(){document.querySelectorAll('.nav-btn').forEach(b=>b.onclick=()=>section(b.dataset.section));document.querySelectorAll('.theme-card').forEach(c=>c.onclick=()=>applyTheme(c.dataset.themeChoice));els.loginTab.onclick=()=>setAuthMode('login');els.registerTab.onclick=()=>setAuthMode('register');els.guestTab.onclick=()=>setAuthMode('guest');els.googleSubmit.onclick=google;els.authForm.onsubmit=async e=>{e.preventDefault();try{status(els.authStatus,'Загрузка...');const email=els.emailInput.value.trim(),pass=els.passwordInput.value;if(authMode==='register'){const c=await createUserWithEmailAndPassword(auth,email,pass);await ensureProfile(c.user,els.nickInput.value.trim())}else await signInWithEmailAndPassword(auth,email,pass)}catch(er){status(els.authStatus,er.message)}};els.guestSubmit.onclick=async()=>{try{const c=await signInAnonymously(auth);await ensureProfile(c.user,els.nickInput.value.trim()||guest())}catch(e){status(els.authStatus,e.message)}};els.logoutBtn.onclick=async()=>{await leaveRoom();cleanGlobal();if(currentDmUnsub)currentDmUnsub();await signOut(auth)};els.openProfileBtn.onclick=()=>section('profileSection');[els.profileNick,els.profileTag,els.profileAvatar,els.profileCover].forEach(i=>i.oninput=renderPreview);els.saveProfileBtn.onclick=saveProfile;els.createRoomBtn.onclick=createRoom;els.joinRoomBtn.onclick=()=>joinRoom(els.joinRoomInput.value);els.copyInviteBtn.onclick=async()=>{if(!currentRoomId)return status(els.roomStatus,'Сначала создай комнату.');const u=new URL(location.href);u.searchParams.set('room',currentRoomId);await navigator.clipboard.writeText(u.toString()).catch(()=>{});status(els.roomStatus,'Invite-ссылка скопирована.')};els.openRoomBtn.onclick=()=>setVis('open');els.closeRoomBtn.onclick=()=>setVis('closed');els.publicRoomBtn.onclick=()=>setMode('public');els.inviteRoomBtn.onclick=()=>setMode('invite');els.sourceType.onchange=toggleSource;els.localVideoFile.onchange=()=>currentSource.type==='local'&&loadSource(currentSource);els.setSourceBtn.onclick=setSource;els.chatForm.onsubmit=async e=>{e.preventDefault();await sendChat(els.chatInput.value);els.chatInput.value=''};els.voiceBtn.onclick=()=>voiceOn?stopVoice():startVoice();els.friendSearchBtn.onclick=searchFriends;els.friendSearchInput.onkeydown=e=>{if(e.key==='Enter'){e.preventDefault();searchFriends()}};els.dmForm.onsubmit=sendDm;toggleSource()}
async function boot(){applyTheme(localStorage.getItem('jc-theme')||'rave');bind();setAuthMode('login');try{init()}catch(e){status(els.authStatus,e.message);return}onAuthStateChanged(auth,async u=>{currentUser=u;cleanGlobal();cleanRoom();if(currentDmUnsub){currentDmUnsub();currentDmUnsub=null}if(!u){profile=null;currentRoomId='';currentRoom=null;shell(false);return}profile=await ensureProfile(u);renderProfile();shell(true);section('homeSection');await presence();startLists();const r=roomFromUrl();if(r)await joinRoom(r)})}boot();


/* =========================================================
   JustClover Stage 3 toolbar hotfix
   Version: stage3toolbar-20260501-1
   Верхние кнопки теперь работают:
   Invite / Каталог / 16:9 / Кино / Скрыть чат
   ========================================================= */
function jcStage3ToolbarHotfix(){
  const chips = [...document.querySelectorAll('.toolbar-chip')];
  if(!chips.length) return;

  const byText = (part) => chips.find(b => (b.textContent || '').toLowerCase().includes(part.toLowerCase()));
  const invite = byText('invite');
  const catalog = byText('каталог');
  const ratio = byText('16:9');
  const cinema = byText('кино');
  const chat = byText('скрыть');

  if(invite){
    invite.dataset.jcAction = 'invite';
    invite.onclick = () => {
      if(els?.copyInviteBtn) els.copyInviteBtn.click();
      else alert('Сначала создай комнату.');
    };
  }

  if(catalog){
    catalog.dataset.jcAction = 'catalog';
    catalog.onclick = () => {
      document.body.classList.toggle('catalog-open');
      catalog.classList.toggle('active', document.body.classList.contains('catalog-open'));
      if(document.body.classList.contains('catalog-open')) {
        els?.sourceUrl?.focus?.();
      }
    };
  }

  if(ratio){
    ratio.dataset.jcAction = 'ratio';
    ratio.onclick = () => {
      document.body.classList.toggle('player-16x9');
      ratio.classList.toggle('active', document.body.classList.contains('player-16x9'));
    };
  }

  if(cinema){
    cinema.dataset.jcAction = 'cinema';
    cinema.onclick = () => {
      document.body.classList.toggle('cinema-mode');
      cinema.classList.toggle('active', document.body.classList.contains('cinema-mode'));
      if(document.body.classList.contains('cinema-mode')) section('watchSection');
    };
  }

  if(chat){
    chat.dataset.jcAction = 'chat';
    chat.onclick = () => {
      document.body.classList.toggle('chat-hidden');
      chat.classList.toggle('active', document.body.classList.contains('chat-hidden'));
      chat.textContent = document.body.classList.contains('chat-hidden') ? 'Показать чат' : 'Скрыть чат';
    };
  }

  const sourceMap = {
    'YouTube':'youtube',
    'VK Video':'vk',
    'AniLibria':'anilibrix',
    'Local':'local'
  };
  document.querySelectorAll('.source-pill').forEach(btn => {
    btn.onclick = () => {
      document.querySelectorAll('.source-pill').forEach(x => x.classList.remove('active'));
      btn.classList.add('active');
      document.body.classList.add('catalog-open');
      catalog?.classList.add('active');
      const val = sourceMap[(btn.textContent || '').trim()];
      if(val && els?.sourceType){
        els.sourceType.value = val;
        els.sourceType.dispatchEvent(new Event('change'));
      }
      els?.sourceUrl?.focus?.();
    };
  });

  console.log('JustClover Stage 3 toolbar hotfix active: stage3toolbar-20260501-1');
}
setTimeout(jcStage3ToolbarHotfix, 0);


/* =========================================================
   JustClover Stage 4 reactions / emoji / GIF picker
   Version: stage4reactions-20260501-1
   ========================================================= */
const JC_STAGE4_EMOJIS = ['🔥','😂','❤️','😮','☘️','😭','👍','😍','😎','👏','✨','💚','💜','🤝','💀','🍿','⚡','🎬','🌙','❄️','🌸','🍁','☀️','🖤'];
const JC_STAGE4_GIFS = [
  'https://media.giphy.com/media/3oEjI6SIIHBdRxXI40/giphy.gif',
  'https://media.giphy.com/media/l0MYt5jPR6QX5pnqM/giphy.gif',
  'https://media.giphy.com/media/ICOgUNjpvO0PC/giphy.gif',
  'https://media.giphy.com/media/11sBLVxNs7v6WA/giphy.gif',
  'https://media.giphy.com/media/GeimqsH0TLDt4tScGw/giphy.gif',
  'https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif',
  'https://media.giphy.com/media/OkJat1YNdoD3W/giphy.gif',
  'https://media.giphy.com/media/3o7aD2saalBwwftBIY/giphy.gif'
];

function jcStage4EnsureFloatLayer(){
  const frame = document.querySelector('.player-frame');
  if(!frame) return null;
  let layer = frame.querySelector('.jc-float-layer');
  if(!layer){
    layer = document.createElement('div');
    layer.className = 'jc-float-layer';
    frame.appendChild(layer);
  }
  return layer;
}

function jcStage4FloatReaction(content, isGif=false){
  const layer = jcStage4EnsureFloatLayer();
  if(!layer) return;
  const item = document.createElement('div');
  item.className = 'jc-float-reaction';
  item.style.left = (28 + Math.random()*44) + '%';
  if(isGif){
    const img = document.createElement('img');
    img.src = content;
    img.alt = 'GIF';
    item.appendChild(img);
  } else {
    item.textContent = content || '✨';
  }
  layer.appendChild(item);
  setTimeout(() => item.remove(), 1350);
}

function jcStage4IsGifUrl(u){
  return /^https?:\/\//i.test(String(u||'')) && /\.(gif|webp|png|jpe?g)(\?|$)/i.test(String(u||''));
}

const jcStage4OldAddChat = addChat;
addChat = function(m){
  if(!m) return;
  if(m.type === 'reaction'){
    jcStage4FloatReaction(m.text || '✨', false);
  }
  if(m.type === 'gif' && m.mediaUrl){
    jcStage4FloatReaction(m.mediaUrl, true);
  }

  const d = document.createElement('div');
  d.className = 'message';
  if(m.type === 'reaction') d.classList.add('jc-reaction-message');
  if(m.type === 'system') d.classList.add('jc-system-message');

  const who = `${esc(m.nickname||'User')}#${esc(m.tag||'0000')}`;
  const time = new Date(m.createdAt||Date.now()).toLocaleTimeString([],{hour:'2-digit',minute:'2-digit'});
  const text = esc(m.text || '');

  if(m.type === 'gif' && m.mediaUrl){
    d.innerHTML = `<strong>${who}</strong><div>${text || 'GIF'}</div><img class="jc-message-gif" src="${esc(m.mediaUrl)}" alt="GIF"><time>${time}</time>`;
  } else if(jcStage4IsGifUrl(m.text)){
    d.innerHTML = `<strong>${who}</strong><img class="jc-message-gif" src="${esc(m.text)}" alt="GIF"><time>${time}</time>`;
  } else {
    d.innerHTML = `<strong>${who}</strong><div>${text}</div><time>${time}</time>`;
  }

  els.chatMessages.appendChild(d);
  els.chatMessages.scrollTop = els.chatMessages.scrollHeight;
};

const jcStage4OldSendChat = sendChat;
sendChat = async function(t, extra={}){
  const text = String(t || '').trim();
  if(!text && !extra.mediaUrl && extra.type !== 'reaction') return;
  if(!currentRoomId){
    status(els.roomStatus, 'Сначала создай комнату или войди в комнату.');
    if(extra.type === 'reaction') jcStage4FloatReaction(text || '✨', false);
    if(extra.type === 'gif' && extra.mediaUrl) jcStage4FloatReaction(extra.mediaUrl, true);
    return;
  }
  await push(ref(db,`roomChats/${currentRoomId}`),{
    uid: currentUser.uid,
    nickname: profile.nickname,
    tag: profile.tag,
    text,
    type: extra.type || 'text',
    mediaUrl: extra.mediaUrl || '',
    createdAt: Date.now()
  });
};

function jcStage4SendEmoji(emoji){
  sendChat(emoji, {type:'reaction'});
}

function jcStage4SendGif(url){
  sendChat('GIF', {type:'gif', mediaUrl:url});
}

function jcStage4BuildChatPickers(){
  const form = els.chatForm;
  if(!form || form.dataset.stage4 === '1') return;
  form.dataset.stage4 = '1';
  form.classList.add('jc-enhanced');

  const emojiBtn = document.createElement('button');
  emojiBtn.type = 'button';
  emojiBtn.className = 'btn soft jc-chat-icon';
  emojiBtn.textContent = '😊';

  const gifBtn = document.createElement('button');
  gifBtn.type = 'button';
  gifBtn.className = 'btn soft jc-chat-icon';
  gifBtn.textContent = 'GIF';

  form.insertBefore(gifBtn, els.chatInput);
  form.insertBefore(emojiBtn, gifBtn);

  const picker = document.createElement('div');
  picker.className = 'jc-picker';
  picker.innerHTML = `
    <div class="jc-picker-head"><div><strong>Эмодзи</strong><br><span>Клик — сразу отправить в чат</span></div><button class="btn soft" type="button" data-close>×</button></div>
    <div class="jc-emoji-grid">${JC_STAGE4_EMOJIS.map(e=>`<button class="jc-emoji-item" type="button">${e}</button>`).join('')}</div>
  `;

  const gifPicker = document.createElement('div');
  gifPicker.className = 'jc-picker';
  gifPicker.innerHTML = `
    <div class="jc-picker-head"><div><strong>GIF</strong><br><span>Без ссылок: выбирай карточку</span></div><button class="btn soft" type="button" data-close>×</button></div>
    <div class="jc-gif-search">
      <input placeholder="поиск пока локальный: laugh, cat, anime..." />
      <button class="btn soft" type="button">Найти</button>
    </div>
    <div class="jc-gif-grid">${JC_STAGE4_GIFS.map(u=>`<button class="jc-gif-item" type="button" data-gif="${u}"><img src="${u}" alt="GIF"></button>`).join('')}</div>
  `;

  form.parentElement.appendChild(picker);
  form.parentElement.appendChild(gifPicker);

  const closeAll = () => {
    picker.classList.remove('open');
    gifPicker.classList.remove('open');
  };
  emojiBtn.onclick = () => {
    gifPicker.classList.remove('open');
    picker.classList.toggle('open');
  };
  gifBtn.onclick = () => {
    picker.classList.remove('open');
    gifPicker.classList.toggle('open');
  };
  picker.querySelector('[data-close]').onclick = closeAll;
  gifPicker.querySelector('[data-close]').onclick = closeAll;

  picker.querySelectorAll('.jc-emoji-item').forEach(b => {
    b.onclick = () => {
      jcStage4SendEmoji(b.textContent);
      closeAll();
    };
  });
  gifPicker.querySelectorAll('.jc-gif-item').forEach(b => {
    b.onclick = () => {
      jcStage4SendGif(b.dataset.gif);
      closeAll();
    };
  });

  const searchInput = gifPicker.querySelector('.jc-gif-search input');
  const searchBtn = gifPicker.querySelector('.jc-gif-search button');
  searchBtn.onclick = () => {
    const q = (searchInput.value || '').trim();
    if(!q) return;
    const giphySearchUrl = 'https://giphy.com/search/' + encodeURIComponent(q);
    sendChat('Открыл поиск GIF: ' + q, {type:'system'});
    window.open(giphySearchUrl, '_blank', 'noopener,noreferrer');
  };

  document.addEventListener('keydown', e => {
    if(e.key === 'Escape') closeAll();
  });
}

function jcStage4WirePlayerReactions(){
  document.querySelectorAll('.reaction-btn').forEach(btn => {
    if(btn.dataset.stage4 === '1') return;
    btn.dataset.stage4 = '1';
    btn.onclick = () => {
      const emoji = (btn.textContent || '✨').trim();
      btn.classList.remove('jc-pop');
      void btn.offsetWidth;
      btn.classList.add('jc-pop');
      jcStage4SendEmoji(emoji);
    };
  });
}

function jcStage4Hotfix(){
  jcStage4EnsureFloatLayer();
  jcStage4BuildChatPickers();
  jcStage4WirePlayerReactions();
  console.log('JustClover Stage 4 reactions/GIF hotfix active: stage4reactions-20260501-1');
}
setTimeout(jcStage4Hotfix, 80);


/* =========================================================
   JustClover Stage 5 invite modal + chat width slider
   Version: stage5invite-slider-20260501-1
   ========================================================= */
function jcStage5Toast(text){
  let t = document.querySelector('.jc-copy-toast');
  if(!t){
    t = document.createElement('div');
    t.className = 'jc-copy-toast';
    document.body.appendChild(t);
  }
  t.textContent = text;
  t.classList.add('show');
  clearTimeout(t._timer);
  t._timer = setTimeout(() => t.classList.remove('show'), 1700);
}

function jcStage5InviteUrl(){
  const u = new URL(location.href);
  if(currentRoomId) u.searchParams.set('room', currentRoomId);
  return u.toString();
}

async function jcStage5CopyInvite(){
  if(!currentRoomId){
    jcStage5Toast('Сначала создай комнату');
    status(els.roomStatus, 'Сначала создай комнату.');
    return '';
  }
  const url = jcStage5InviteUrl();
  await navigator.clipboard?.writeText(url).catch(() => {});
  jcStage5Toast('Invite-ссылка скопирована');
  status(els.roomStatus, 'Invite-ссылка скопирована.');
  return url;
}

function jcStage5BuildInviteModal(){
  if(document.querySelector('.jc-modal-layer')) return;
  const layer = document.createElement('div');
  layer.className = 'jc-modal-layer';
  layer.innerHTML = `
    <div class="jc-modal" role="dialog" aria-modal="true">
      <div class="jc-modal-head">
        <div>
          <h3>Пригласить в комнату</h3>
          <p>Скопируй ссылку, код или покажи QR с телефона.</p>
        </div>
        <button class="jc-modal-close" type="button">×</button>
      </div>
      <div class="jc-modal-body">
        <label>Invite-ссылка
          <div class="jc-invite-code">
            <input id="jcInviteUrlInput" readonly value="">
            <button id="jcCopyInviteModalBtn" class="btn primary" type="button">Копировать</button>
          </div>
        </label>
        <label>Код комнаты
          <div class="jc-invite-code">
            <input id="jcRoomCodeInput" readonly value="">
            <button id="jcCopyCodeBtn" class="btn soft" type="button">Код</button>
          </div>
        </label>
        <div class="jc-qr-card">
          <img id="jcInviteQr" alt="QR invite">
          <div>
            <strong>QR-код для телефона</strong>
            <p>Друг может открыть камеру, отсканировать QR и попасть в комнату по ссылке.</p>
          </div>
        </div>
        <div class="jc-share-row">
          <button id="jcNativeShareBtn" class="btn soft" type="button">Поделиться</button>
          <button id="jcOpenInviteBtn" class="btn soft" type="button">Открыть ссылку</button>
        </div>
      </div>
    </div>
  `;
  document.body.appendChild(layer);

  const close = () => layer.classList.remove('open');
  layer.querySelector('.jc-modal-close').onclick = close;
  layer.onclick = e => { if(e.target === layer) close(); };
  document.addEventListener('keydown', e => { if(e.key === 'Escape') close(); });

  layer.querySelector('#jcCopyInviteModalBtn').onclick = jcStage5CopyInvite;
  layer.querySelector('#jcCopyCodeBtn').onclick = async () => {
    if(!currentRoomId) return jcStage5Toast('Комнаты ещё нет');
    await navigator.clipboard?.writeText(currentRoomId).catch(()=>{});
    jcStage5Toast('Код комнаты скопирован');
  };
  layer.querySelector('#jcOpenInviteBtn').onclick = () => {
    const url = jcStage5InviteUrl();
    if(currentRoomId) window.open(url, '_blank', 'noopener,noreferrer');
    else jcStage5Toast('Сначала создай комнату');
  };
  layer.querySelector('#jcNativeShareBtn').onclick = async () => {
    if(!currentRoomId) return jcStage5Toast('Сначала создай комнату');
    const url = jcStage5InviteUrl();
    if(navigator.share){
      await navigator.share({title:'JustClover room', text:'Заходи смотреть вместе', url}).catch(()=>{});
    } else {
      await navigator.clipboard?.writeText(url).catch(()=>{});
      jcStage5Toast('Ссылка скопирована');
    }
  };
}

function jcStage5OpenInviteModal(){
  if(!currentRoomId){
    jcStage5Toast('Сначала создай комнату');
    status(els.roomStatus, 'Сначала создай комнату, потом Invite.');
    return;
  }
  jcStage5BuildInviteModal();
  const layer = document.querySelector('.jc-modal-layer');
  const url = jcStage5InviteUrl();
  layer.querySelector('#jcInviteUrlInput').value = url;
  layer.querySelector('#jcRoomCodeInput').value = currentRoomId || '';
  layer.querySelector('#jcInviteQr').src = 'https://api.qrserver.com/v1/create-qr-code/?size=220x220&data=' + encodeURIComponent(url);
  layer.classList.add('open');
}

function jcStage5WireInvite(){
  const invite = [...document.querySelectorAll('.toolbar-chip')].find(b => (b.textContent||'').toLowerCase().includes('invite'));
  if(invite){
    invite.onclick = jcStage5OpenInviteModal;
    invite.dataset.jcAction = 'invite';
  }
}

function jcStage5WireChatSlider(){
  const slider = document.querySelector('.watch-slider');
  const dot = document.querySelector('.slider-dot');
  if(!slider || slider.dataset.stage5 === '1') return;
  slider.dataset.stage5 = '1';

  const min = 280, max = 470;
  const saved = Number(localStorage.getItem('jc-chat-width') || 330);
  function apply(px){
    const v = Math.max(min, Math.min(max, px));
    const pct = ((v - min) / (max - min)) * 100;
    document.documentElement.style.setProperty('--chat-w', v + 'px');
    if(dot) dot.style.left = pct + '%';
    localStorage.setItem('jc-chat-width', String(v));
  }
  apply(saved);

  function setFromEvent(e){
    const r = slider.getBoundingClientRect();
    const x = Math.max(0, Math.min(r.width, (e.clientX || e.touches?.[0]?.clientX || 0) - r.left));
    apply(min + (x / r.width) * (max - min));
  }

  let dragging = false;
  slider.addEventListener('pointerdown', e => {
    dragging = true;
    slider.setPointerCapture?.(e.pointerId);
    setFromEvent(e);
  });
  slider.addEventListener('pointermove', e => {
    if(dragging) setFromEvent(e);
  });
  slider.addEventListener('pointerup', () => dragging = false);
  slider.addEventListener('pointercancel', () => dragging = false);
}

async function jcStage5GiphySearch(q){
  q = String(q || '').trim();
  if(!q) return [];
  const key = localStorage.getItem('jc-giphy-key') || '';
  if(!key) return [];
  const url = `https://api.giphy.com/v1/gifs/search?api_key=${encodeURIComponent(key)}&q=${encodeURIComponent(q)}&limit=12&rating=pg-13&lang=ru`;
  const r = await fetch(url);
  const j = await r.json();
  return (j.data || []).map(x => x.images?.fixed_height?.url || x.images?.downsized_medium?.url).filter(Boolean);
}

function jcStage5UpgradeGifPicker(){
  const gifPicker = [...document.querySelectorAll('.jc-picker')].find(p => p.textContent.includes('GIF'));
  if(!gifPicker || gifPicker.dataset.stage5 === '1') return;
  gifPicker.dataset.stage5 = '1';

  const searchBlock = gifPicker.querySelector('.jc-gif-search');
  if(searchBlock){
    searchBlock.insertAdjacentHTML('afterend', `
      <div class="jc-giphy-key">
        <input id="jcGiphyKeyInput" placeholder="GIPHY API key, если хочешь настоящий поиск" value="${localStorage.getItem('jc-giphy-key') || ''}">
        <button id="jcSaveGiphyKeyBtn" class="btn soft" type="button">Сохранить</button>
      </div>
      <div class="jc-picker-note">Без ключа работают быстрые GIF-карточки. С ключом GIPHY поиск грузит GIF прямо в панель.</div>
    `);
  }

  const keyInput = gifPicker.querySelector('#jcGiphyKeyInput');
  const saveKey = gifPicker.querySelector('#jcSaveGiphyKeyBtn');
  if(saveKey){
    saveKey.onclick = () => {
      localStorage.setItem('jc-giphy-key', keyInput.value.trim());
      jcStage5Toast('GIPHY key сохранён');
    };
  }

  const input = gifPicker.querySelector('.jc-gif-search input');
  const btn = gifPicker.querySelector('.jc-gif-search button');
  const grid = gifPicker.querySelector('.jc-gif-grid');
  if(btn && input && grid){
    btn.onclick = async () => {
      const q = input.value.trim();
      if(!q) return;
      const key = localStorage.getItem('jc-giphy-key') || '';
      if(!key){
        window.open('https://giphy.com/search/' + encodeURIComponent(q), '_blank', 'noopener,noreferrer');
        jcStage5Toast('Открыл GIPHY. Для поиска внутри сайта нужен API key.');
        return;
      }
      btn.textContent = '...';
      try{
        const urls = await jcStage5GiphySearch(q);
        if(!urls.length){
          jcStage5Toast('GIF не найдены');
          return;
        }
        grid.innerHTML = urls.map(u => `<button class="jc-gif-item" type="button" data-gif="${u}"><img src="${u}" alt="GIF"></button>`).join('');
        grid.querySelectorAll('.jc-gif-item').forEach(b => {
          b.onclick = () => {
            jcStage4SendGif(b.dataset.gif);
            gifPicker.classList.remove('open');
          };
        });
      }catch(e){
        console.error('GIPHY ERROR:', e);
        jcStage5Toast('Ошибка GIPHY');
      }finally{
        btn.textContent = 'Найти';
      }
    };
  }
}

function jcStage5Hotfix(){
  jcStage5BuildInviteModal();
  jcStage5WireInvite();
  jcStage5WireChatSlider();
  jcStage5UpgradeGifPicker();
  console.log('JustClover Stage 5 invite/slider hotfix active: stage5invite-slider-20260501-1');
}
setTimeout(jcStage5Hotfix, 160);


/* =========================================================
   JustClover Stage 6 layout polish JS
   Version: stage6-layout-polish-20260501-1
   ========================================================= */
function jcStage6LayoutPolish(){
  // Если чат был слишком узким в прошлой версии — поднимаем дефолт.
  const saved = Number(localStorage.getItem('jc-chat-width') || 0);
  if(!saved || saved < 340){
    localStorage.setItem('jc-chat-width', '360');
    document.documentElement.style.setProperty('--chat-w', '360px');
    const dot = document.querySelector('.slider-dot');
    if(dot) dot.style.left = '42%';
  }

  // Двойной клик по плееру — кино-режим.
  const frame = document.querySelector('.player-frame');
  if(frame && frame.dataset.stage6 !== '1'){
    frame.dataset.stage6 = '1';
    frame.addEventListener('dblclick', () => {
      document.body.classList.toggle('cinema-mode');
      const cinema = [...document.querySelectorAll('.toolbar-chip')].find(b => (b.textContent||'').toLowerCase().includes('кино'));
      cinema?.classList.toggle('active', document.body.classList.contains('cinema-mode'));
    });
  }

  // Кнопка "Каталог" дополнительно подсвечивает источник, чтобы было понятно куда вставлять ссылку.
  const catalog = [...document.querySelectorAll('.toolbar-chip')].find(b => (b.textContent||'').toLowerCase().includes('каталог'));
  if(catalog && catalog.dataset.stage6 !== '1'){
    catalog.dataset.stage6 = '1';
    const old = catalog.onclick;
    catalog.onclick = (e) => {
      old?.call(catalog, e);
      const panel = document.querySelector('.source-panel-embedded');
      if(panel && document.body.classList.contains('catalog-open')){
        panel.animate([
          {boxShadow:'0 0 0 0 rgba(192,132,252,0)'},
          {boxShadow:'0 0 0 4px rgba(192,132,252,.16)'},
          {boxShadow:'0 0 0 0 rgba(192,132,252,0)'}
        ], {duration:650, easing:'ease-out'});
      }
    };
  }

  console.log('JustClover Stage 6 layout polish active: stage6-layout-polish-20260501-1');
}
setTimeout(jcStage6LayoutPolish, 240);


/* =========================================================
   JustClover Stage 7 player/chat polish JS
   Version: stage7-player-chat-polish-20260501-1
   ========================================================= */
function jcStage7SetEmptyPlayerText(){
  const empty = document.querySelector('#emptyPlayer');
  if(!empty || empty.dataset.stage7 === '1') return;
  empty.dataset.stage7 = '1';
  empty.innerHTML = `
    <span class="jc-empty-title">Выбери источник</span>
    <span class="jc-empty-subtitle">Нажми «Каталог» или выбери YouTube / VK / Local, вставь ссылку и запускай просмотр вместе с друзьями.</span>
  `;
}

function jcStage7AddChatSizeButtons(){
  const row = document.querySelector('.watch-chip-row');
  if(!row || row.dataset.stage7 === '1') return;
  row.dataset.stage7 = '1';

  const minus = document.createElement('button');
  minus.type = 'button';
  minus.className = 'toolbar-chip jc-chat-size-btn';
  minus.dataset.sizeAction = 'minus';
  minus.title = 'Сделать чат уже';

  const plus = document.createElement('button');
  plus.type = 'button';
  plus.className = 'toolbar-chip jc-chat-size-btn';
  plus.dataset.sizeAction = 'plus';
  plus.title = 'Сделать чат шире';

  const hideChat = [...row.querySelectorAll('.toolbar-chip')].find(b => (b.textContent||'').toLowerCase().includes('чат'));
  if(hideChat){
    row.insertBefore(minus, hideChat);
    row.insertBefore(plus, hideChat);
  } else {
    row.appendChild(minus);
    row.appendChild(plus);
  }

  const apply = (delta) => {
    const cur = Number(localStorage.getItem('jc-chat-width') || 372);
    const next = Math.max(300, Math.min(500, cur + delta));
    localStorage.setItem('jc-chat-width', String(next));
    document.documentElement.style.setProperty('--chat-w', next + 'px');
    const dot = document.querySelector('.slider-dot');
    if(dot){
      const pct = ((next - 280) / (470 - 280)) * 100;
      dot.style.left = Math.max(0, Math.min(100, pct)) + '%';
    }
    jcStage5Toast?.('Ширина чата: ' + next + 'px');
  };

  minus.onclick = () => apply(-28);
  plus.onclick = () => apply(28);
}

function jcStage7ChatWelcome(){
  const box = els?.chatMessages;
  if(!box || box.dataset.stage7 === '1') return;
  box.dataset.stage7 = '1';
  // Не вставляем реальное сообщение в БД, только локальный placeholder уберётся сам при первом сообщении.
}

function jcStage7Polish(){
  jcStage7SetEmptyPlayerText();
  jcStage7AddChatSizeButtons();
  jcStage7ChatWelcome();
  console.log('JustClover Stage 7 player/chat polish active: stage7-player-chat-polish-20260501-1');
}
setTimeout(jcStage7Polish, 320);


/* =========================================================
   JustClover Stage 8 Catalog Overlay
   Version: stage8-catalog-overlay-20260501-1
   ========================================================= */
const JC_STAGE8_SOURCES = [
  {id:'youtube', icon:'▶', title:'YouTube', hint:'ссылка или поиск'},
  {id:'vk', icon:'VK', title:'VK Video', hint:'ссылка VK / буфер'},
  {id:'anilibrix', icon:'AX', title:'AniLibria', hint:'iframe / ссылка'},
  {id:'local', icon:'▣', title:'Local', hint:'файл с устройства'},
  {id:'mp4', icon:'MP4', title:'Direct MP4', hint:'mp4 / webm ссылка'},
  {id:'drive', icon:'G', title:'Google Drive', hint:'public preview'},
  {id:'yandex', icon:'Я', title:'Яндекс Диск', hint:'публичная ссылка'},
  {id:'paste', icon:'⌘', title:'Из буфера', hint:'вставить и запустить'}
];

let jcStage8Selected = 'youtube';

function jcStage8Toast(text){
  if(typeof jcStage5Toast === 'function') jcStage5Toast(text);
  else {
    console.log(text);
    status?.(els?.roomStatus, text);
  }
}

function jcStage8EnsureOptions(){
  if(!els?.sourceType) return;
  const need = {
    mp4:'Direct MP4',
    drive:'Google Drive',
    yandex:'Yandex Disk'
  };
  Object.entries(need).forEach(([value,label]) => {
    if(![...els.sourceType.options].some(o => o.value === value)){
      const opt = document.createElement('option');
      opt.value = value;
      opt.textContent = label;
      els.sourceType.appendChild(opt);
    }
  });
}

function jcStage8DrivePreview(url){
  try{
    const u = new URL(url);
    const m = u.href.match(/\/file\/d\/([^/]+)/);
    if(m) return `https://drive.google.com/file/d/${m[1]}/preview`;
    return url;
  }catch{ return url; }
}

const jcStage8OldLoadSource = loadSource;
loadSource = async function(s={type:'none'}){
  currentSource = s;
  if(!s || s.type === 'none') return jcStage8OldLoadSource(s);

  if(['mp4','direct'].includes(s.type)){
    hidePlayers();
    show(els.videoPlayer);
    els.videoPlayer.src = s.url || '';
    els.videoPlayer.load();
    status(els.sourceNote, 'Direct MP4 открыт во встроенном плеере.');
    return;
  }

  if(s.type === 'drive'){
    hidePlayers();
    show(els.iframePlayer);
    els.iframePlayer.src = jcStage8DrivePreview(s.url || s.embedUrl || '');
    show(els.externalPlayer);
    els.externalText.textContent = 'Google Drive: если preview не загрузился, открой ссылку отдельно.';
    els.externalLink.href = s.url || s.embedUrl || '';
    status(els.sourceNote, 'Google Drive preview открыт.');
    return;
  }

  if(s.type === 'yandex'){
    hidePlayers();
    show(els.externalPlayer);
    els.externalText.textContent = 'Яндекс Диск обычно не даёт стабильное iframe-встраивание. Открой ссылку отдельно или используй Direct MP4.';
    els.externalLink.href = s.url || '';
    status(els.sourceNote, 'Яндекс Диск: публичная ссылка сохранена.');
    return;
  }

  return jcStage8OldLoadSource(s);
};

async function jcStage8SetSourceFromFields(){
  if(!currentRoomId){
    jcStage8Toast('Сначала создай комнату');
    status(els.roomStatus, 'Сначала создай комнату.');
    return;
  }
  if(currentRoom?.ownerUid && currentRoom.ownerUid !== currentUser.uid){
    status(els.roomStatus, 'Источник может менять только хост.');
    return;
  }

  const type = jcStage8Selected === 'paste' ? 'youtube' : jcStage8Selected;
  if(type === 'local'){
    els.sourceType.value = 'local';
    els.localVideoFile?.click();
    return;
  }

  const urlInput = document.querySelector('#jcCatalogUrl');
  const titleInput = document.querySelector('#jcCatalogTitle');
  const url = safeUrl(urlInput?.value?.trim() || '');
  const title = titleInput?.value?.trim() || document.querySelector('.jc-source-card.active b')?.textContent || 'Источник';

  if(!url){
    jcStage8Toast('Вставь корректную ссылку');
    return;
  }

  let source;
  if(type === 'youtube'){
    const id = ytId(url);
    if(!id){
      jcStage8Toast('Не удалось распознать YouTube ссылку');
      return;
    }
    source = {type:'youtube', url, videoId:id, title};
  } else if(type === 'vk'){
    source = {type:'vk', url, embedUrl:vkEmbed(url), title};
  } else if(type === 'mp4'){
    source = {type:'mp4', url, title};
  } else if(type === 'drive'){
    source = {type:'drive', url, embedUrl:jcStage8DrivePreview(url), title};
  } else if(type === 'yandex'){
    source = {type:'yandex', url, title};
  } else {
    source = {type:'anilibrix', url, embedUrl:url, title};
  }

  await update(ref(db,`rooms/${currentRoomId}`),{
    source,
    playback:{time:0,playing:false,updatedAt:Date.now(),byUid:currentUser.uid},
    updatedAt:Date.now()
  });

  jcStage8Toast('Источник запущен');
  document.querySelector('.jc-catalog-layer')?.classList.remove('open');
  section('watchSection');
}

function jcStage8BuildCatalog(){
  if(document.querySelector('.jc-catalog-layer')) return;

  const layer = document.createElement('div');
  layer.className = 'jc-catalog-layer';
  layer.innerHTML = `
    <div class="jc-catalog" role="dialog" aria-modal="true">
      <div class="jc-catalog-head">
        <div class="jc-catalog-title">
          <div class="jc-catalog-mark">☘</div>
          <div>
            <h3>Каталог источников</h3>
            <p>Выбери источник, вставь ссылку или запусти файл с устройства.</p>
          </div>
        </div>
        <button class="jc-catalog-close" type="button">×</button>
      </div>
      <div class="jc-catalog-body">
        <div class="jc-catalog-grid">
          ${JC_STAGE8_SOURCES.map(s => `
            <button class="jc-source-card" type="button" data-source="${s.id}">
              <div class="jc-source-icon">${s.icon}</div>
              <b>${s.title}</b>
              <span>${s.hint}</span>
            </button>
          `).join('')}
        </div>

        <div class="jc-catalog-panel">
          <div class="jc-catalog-row">
            <input id="jcCatalogUrl" placeholder="Вставь ссылку YouTube / VK / Drive / MP4" />
            <input id="jcCatalogTitle" placeholder="Название" />
            <button id="jcCatalogRunBtn" class="btn primary" type="button">Запустить</button>
          </div>
          <div class="jc-catalog-actions">
            <button id="jcCatalogPasteBtn" class="btn soft" type="button">Вставить из буфера</button>
            <button id="jcCatalogPasteRunBtn" class="btn soft" type="button">Вставить и запустить</button>
            <button id="jcCatalogOpenExternalBtn" class="btn soft" type="button">Открыть сайт</button>
            <button id="jcCatalogLocalBtn" class="btn soft" type="button">Выбрать файл</button>
          </div>
          <div class="jc-catalog-help">
            <strong>Подсказка:</strong> YouTube и VK запускаются через встроенный плеер/iframe. Google Drive работает через public preview. Для Яндекс Диска лучше использовать direct MP4, если есть прямая ссылка.
          </div>
        </div>

        <div class="jc-catalog-panel">
          <div class="jc-catalog-search">
            <input id="jcCatalogSearchInput" placeholder="Поиск YouTube/VK: например название ролика" />
            <button id="jcCatalogSearchYtBtn" class="btn soft" type="button">Искать YouTube</button>
            <button id="jcCatalogSearchVkBtn" class="btn soft" type="button">Искать VK</button>
          </div>
          <div class="jc-catalog-mini">
            <button class="jc-mini-chip" data-demo="youtube">YouTube → скопируй ссылку → вставить</button>
            <button class="jc-mini-chip" data-demo="vk">VK Video → скопируй ссылку → вставить</button>
            <button class="jc-mini-chip" data-demo="mp4">Direct MP4 → вставь прямую ссылку</button>
            <button class="jc-mini-chip" data-demo="local">Local → файл с устройства</button>
          </div>
          <div class="jc-catalog-results">
            <button class="jc-result-card" type="button" data-help="youtube">
              <b>YouTube без выхода из комнаты</b>
              <span>Открой поиск, скопируй ссылку ролика и нажми «Вставить и запустить».</span>
            </button>
            <button class="jc-result-card" type="button" data-help="vk">
              <b>VK Video</b>
              <span>Вставь ссылку вида vk.com/video... — JustClover сам попробует собрать embed.</span>
            </button>
            <button class="jc-result-card" type="button" data-help="local">
              <b>Local video</b>
              <span>Выбирается с устройства. Другим участникам нужен тот же файл.</span>
            </button>
          </div>
        </div>
      </div>
    </div>
  `;

  document.body.appendChild(layer);

  const close = () => layer.classList.remove('open');
  layer.querySelector('.jc-catalog-close').onclick = close;
  layer.onclick = e => { if(e.target === layer) close(); };
  document.addEventListener('keydown', e => { if(e.key === 'Escape') close(); });

  layer.querySelectorAll('.jc-source-card').forEach(card => {
    card.onclick = () => jcStage8SelectSource(card.dataset.source);
  });

  layer.querySelector('#jcCatalogRunBtn').onclick = jcStage8SetSourceFromFields;
  layer.querySelector('#jcCatalogLocalBtn').onclick = () => {
    jcStage8SelectSource('local');
    els.localVideoFile?.click();
  };

  layer.querySelector('#jcCatalogPasteBtn').onclick = async () => {
    try{
      const text = await navigator.clipboard.readText();
      layer.querySelector('#jcCatalogUrl').value = text || '';
      jcStage8GuessSource(text);
      jcStage8Toast('Ссылка вставлена');
    }catch{
      jcStage8Toast('Браузер не дал доступ к буферу');
    }
  };

  layer.querySelector('#jcCatalogPasteRunBtn').onclick = async () => {
    try{
      const text = await navigator.clipboard.readText();
      layer.querySelector('#jcCatalogUrl').value = text || '';
      jcStage8GuessSource(text);
      await jcStage8SetSourceFromFields();
    }catch{
      jcStage8Toast('Браузер не дал доступ к буферу');
    }
  };

  layer.querySelector('#jcCatalogOpenExternalBtn').onclick = () => {
    const target = jcStage8Selected === 'vk' ? 'https://vkvideo.ru/' :
      jcStage8Selected === 'drive' ? 'https://drive.google.com/' :
      jcStage8Selected === 'yandex' ? 'https://disk.yandex.ru/' :
      jcStage8Selected === 'anilibrix' ? 'https://www.anilibria.tv/' :
      'https://www.youtube.com/';
    window.open(target, '_blank', 'noopener,noreferrer');
  };

  layer.querySelector('#jcCatalogSearchYtBtn').onclick = () => {
    const q = layer.querySelector('#jcCatalogSearchInput').value.trim();
    window.open('https://www.youtube.com/results?search_query=' + encodeURIComponent(q || 'anime'), '_blank', 'noopener,noreferrer');
  };
  layer.querySelector('#jcCatalogSearchVkBtn').onclick = () => {
    const q = layer.querySelector('#jcCatalogSearchInput').value.trim();
    window.open('https://vkvideo.ru/?q=' + encodeURIComponent(q || 'anime'), '_blank', 'noopener,noreferrer');
  };

  layer.querySelectorAll('.jc-mini-chip').forEach(btn => btn.onclick = () => jcStage8SelectSource(btn.dataset.demo));
  layer.querySelectorAll('.jc-result-card').forEach(btn => btn.onclick = () => jcStage8SelectSource(btn.dataset.help));

  jcStage8SelectSource('youtube');
}

function jcStage8SelectSource(id){
  jcStage8Selected = id || 'youtube';
  document.querySelectorAll('.jc-source-card').forEach(c => c.classList.toggle('active', c.dataset.source === jcStage8Selected));

  const input = document.querySelector('#jcCatalogUrl');
  const title = document.querySelector('#jcCatalogTitle');
  if(title){
    const cardTitle = document.querySelector(`.jc-source-card[data-source="${jcStage8Selected}"] b`)?.textContent || '';
    title.placeholder = cardTitle ? `Название: ${cardTitle}` : 'Название';
  }

  if(els?.sourceType){
    const map = {paste:'youtube'};
    const value = map[jcStage8Selected] || jcStage8Selected;
    if([...els.sourceType.options].some(o => o.value === value)){
      els.sourceType.value = value;
      els.sourceType.dispatchEvent(new Event('change'));
    }
  }

  if(jcStage8Selected === 'local') {
    input.placeholder = 'Local video выбирается кнопкой «Выбрать файл»';
  } else if(jcStage8Selected === 'mp4') {
    input.placeholder = 'Прямая ссылка на .mp4 или .webm';
  } else if(jcStage8Selected === 'drive') {
    input.placeholder = 'Публичная ссылка Google Drive';
  } else if(jcStage8Selected === 'yandex') {
    input.placeholder = 'Публичная ссылка Яндекс Диска';
  } else {
    input.placeholder = 'Вставь ссылку ' + (document.querySelector(`.jc-source-card[data-source="${jcStage8Selected}"] b`)?.textContent || '');
  }
}

function jcStage8GuessSource(url){
  const s = String(url || '').toLowerCase();
  if(s.includes('youtu')) return jcStage8SelectSource('youtube');
  if(s.includes('vk.com') || s.includes('vkvideo')) return jcStage8SelectSource('vk');
  if(s.includes('drive.google')) return jcStage8SelectSource('drive');
  if(s.includes('disk.yandex')) return jcStage8SelectSource('yandex');
  if(/\.(mp4|webm|mov)(\?|$)/.test(s)) return jcStage8SelectSource('mp4');
}

function jcStage8OpenCatalog(preselect='youtube'){
  jcStage8EnsureOptions();
  jcStage8BuildCatalog();
  jcStage8SelectSource(preselect);
  document.querySelector('.jc-catalog-layer')?.classList.add('open');
  setTimeout(() => document.querySelector('#jcCatalogUrl')?.focus(), 60);
}

function jcStage8WireCatalog(){
  jcStage8EnsureOptions();

  const catalog = [...document.querySelectorAll('.toolbar-chip')].find(b => (b.textContent||'').toLowerCase().includes('каталог'));
  if(catalog){
    catalog.onclick = () => jcStage8OpenCatalog(jcStage8Selected || 'youtube');
    catalog.dataset.jcAction = 'catalog-overlay';
  }

  const sourceMap = {
    'YouTube':'youtube',
    'VK Video':'vk',
    'AniLibria':'anilibrix',
    'Local':'local',
    'Google Drive':'drive',
    'Яндекс Диск':'yandex',
    'MP4 Direct':'mp4'
  };
  document.querySelectorAll('.source-pill').forEach(btn => {
    btn.onclick = () => {
      document.querySelectorAll('.source-pill').forEach(x => x.classList.remove('active'));
      btn.classList.add('active');
      const v = sourceMap[(btn.textContent || '').trim()] || 'youtube';
      jcStage8OpenCatalog(v);
    };
  });

  if(els?.localVideoFile && els.localVideoFile.dataset.stage8 !== '1'){
    els.localVideoFile.dataset.stage8 = '1';
    els.localVideoFile.addEventListener('change', () => {
      if(els.localVideoFile.files?.[0]){
        jcStage8Selected = 'local';
        els.sourceType.value = 'local';
        setTimeout(() => els.setSourceBtn?.click(), 50);
        document.querySelector('.jc-catalog-layer')?.classList.remove('open');
      }
    });
  }

  console.log('JustClover Stage 8 catalog overlay active: stage8-catalog-overlay-20260501-1');
}

setTimeout(jcStage8WireCatalog, 420);


/* =========================================================
   JustClover Stage 9 chat/catalog polish JS
   Version: stage9-chat-catalog-polish-20260501-1
   ========================================================= */
function jcStage9Polish(){
  // Дефолт ширины чата чуть больше, чтобы поле и кнопка не резались.
  const cur = Number(localStorage.getItem('jc-chat-width') || 0);
  if(!cur || cur < 360){
    localStorage.setItem('jc-chat-width', '382');
    document.documentElement.style.setProperty('--chat-w', '382px');
    const dot = document.querySelector('.slider-dot');
    if(dot) dot.style.left = '54%';
  }

  // Укорачиваем текст кнопки только когда места мало.
  const sendBtn = document.querySelector('.message-form .btn.primary');
  function tuneSendText(){
    if(!sendBtn) return;
    sendBtn.textContent = window.innerWidth < 1450 ? 'Отпр.' : 'Отправить';
  }
  tuneSendText();
  window.addEventListener('resize', tuneSendText);

  // Каталог должен быть очевиден: при первом входе слегка подсветим кнопку.
  const catalog = [...document.querySelectorAll('.toolbar-chip')].find(b => (b.textContent||'').toLowerCase().includes('каталог'));
  if(catalog && catalog.dataset.stage9 !== '1'){
    catalog.dataset.stage9 = '1';
    setTimeout(() => {
      catalog.animate([
        { transform:'scale(1)', boxShadow:'0 0 0 rgba(192,132,252,0)' },
        { transform:'scale(1.045)', boxShadow:'0 0 32px rgba(192,132,252,.35)' },
        { transform:'scale(1)', boxShadow:'0 0 0 rgba(192,132,252,0)' }
      ], { duration:900, easing:'ease-out' });
    }, 800);
  }

  console.log('JustClover Stage 9 chat/catalog polish active: stage9-chat-catalog-polish-20260501-1');
}
setTimeout(jcStage9Polish, 520);


/* =========================================================
   JustClover Stage 10 chat form + catalog CTA JS
   Version: stage10-chat-catalog-cta-20260501-1
   ========================================================= */
function jcStage10AddCatalogCTA(){
  const empty = document.querySelector('#emptyPlayer');
  if(!empty || empty.dataset.stage10 === '1') return;
  empty.dataset.stage10 = '1';

  const row = document.createElement('div');
  row.className = 'jc-empty-cta-row';
  row.innerHTML = `
    <button class="jc-empty-cta" type="button">Открыть каталог</button>
    <button class="jc-empty-cta secondary" type="button">Вставить ссылку</button>
  `;
  empty.appendChild(row);

  const [catalogBtn, pasteBtn] = row.querySelectorAll('button');

  catalogBtn.onclick = () => {
    if(typeof jcStage8OpenCatalog === 'function') jcStage8OpenCatalog('youtube');
    else document.querySelector('.toolbar-chip[data-jc-action="catalog-overlay"]')?.click();
  };

  pasteBtn.onclick = async () => {
    if(typeof jcStage8OpenCatalog === 'function') {
      jcStage8OpenCatalog('youtube');
      setTimeout(async () => {
        try {
          const text = await navigator.clipboard.readText();
          const input = document.querySelector('#jcCatalogUrl');
          if(input) input.value = text || '';
          if(typeof jcStage8GuessSource === 'function') jcStage8GuessSource(text);
          jcStage5Toast?.('Ссылка вставлена');
        } catch {
          jcStage5Toast?.('Браузер не дал доступ к буферу');
        }
      }, 80);
    }
  };
}

function jcStage10ChatFormFix(){
  const sendBtn = document.querySelector('.message-form .btn.primary');
  if(sendBtn){
    sendBtn.textContent = 'Отправить';
  }

  // Если старый resize-обработчик Stage 9 укоротит кнопку, возвращаем текст обратно.
  const keepText = () => {
    const b = document.querySelector('.message-form .btn.primary');
    if(b && b.textContent.trim() !== 'Отправить') b.textContent = 'Отправить';
  };
  setInterval(keepText, 1200);
}

function jcStage10Hotfix(){
  jcStage10AddCatalogCTA();
  jcStage10ChatFormFix();
  console.log('JustClover Stage 10 chat/catalog CTA active: stage10-chat-catalog-cta-20260501-1');
}
setTimeout(jcStage10Hotfix, 720);


/* =========================================================
   JustClover MEGA Stage 11-15 JS
   Version: mega-stage11-15-20260501-1
   ========================================================= */

function jcMegaToast(text){
  if(typeof jcStage5Toast === 'function') return jcStage5Toast(text);
  status?.(els?.roomStatus, text);
}

function jcMegaIsBadLink(text){
  const v = String(text || '').trim();
  if(!v) return 'Вставь ссылку.';
  if(/javascript:|<script|document\.|location\.|params\.set|function\s*\(|=>|;\s*location|\bfetch\s*\(/i.test(v)) {
    return 'Похоже, в поле попал JS-код, а не ссылка. Очисти поле и вставь ссылку YouTube / VK / MP4.';
  }
  if(!/^https?:\/\//i.test(v)) {
    return 'Нужна ссылка, которая начинается с http:// или https://.';
  }
  try {
    const u = new URL(v);
    if(!['http:','https:'].includes(u.protocol)) return 'Поддерживаются только http/https ссылки.';
  } catch {
    return 'Это не похоже на корректную ссылку.';
  }
  return '';
}

function jcMegaCatalogWarning(text=''){
  const panel = document.querySelector('.jc-catalog-panel');
  if(!panel) return;
  let w = panel.querySelector('.jc-catalog-warning');
  if(!w){
    w = document.createElement('div');
    w.className = 'jc-catalog-warning';
    panel.insertBefore(w, panel.firstChild);
  }
  w.textContent = text;
  w.classList.toggle('show', !!text);
}

function jcMegaHardenCatalog(){
  const input = document.querySelector('#jcCatalogUrl');
  if(!input || input.dataset.mega === '1') return;
  input.dataset.mega = '1';

  const wrap = document.createElement('div');
  wrap.className = 'jc-catalog-url-wrap';
  input.parentElement.insertBefore(wrap, input);
  wrap.appendChild(input);

  const clear = document.createElement('button');
  clear.type = 'button';
  clear.className = 'jc-catalog-clear';
  clear.textContent = '×';
  clear.title = 'Очистить поле';
  wrap.appendChild(clear);

  clear.onclick = () => {
    input.value = '';
    input.focus();
    jcMegaCatalogWarning('');
  };

  input.addEventListener('input', () => {
    const err = jcMegaIsBadLink(input.value);
    jcMegaCatalogWarning(err && input.value.trim() ? err : '');
  });

  if(typeof jcStage8SetSourceFromFields === 'function' && !window.__jcMegaWrappedCatalogRun){
    window.__jcMegaWrappedCatalogRun = true;
    const oldRun = jcStage8SetSourceFromFields;
    jcStage8SetSourceFromFields = async function(){
      const val = document.querySelector('#jcCatalogUrl')?.value || '';
      const selected = typeof jcStage8Selected !== 'undefined' ? jcStage8Selected : '';
      if(selected !== 'local'){
        const err = jcMegaIsBadLink(val);
        if(err){
          jcMegaCatalogWarning(err);
          jcMegaToast('Проверь ссылку');
          return;
        }
      }
      jcMegaCatalogWarning('');
      return oldRun();
    };
    const runBtn = document.querySelector('#jcCatalogRunBtn');
    if(runBtn) runBtn.onclick = jcStage8SetSourceFromFields;
  }
}

function jcMegaProfileUploads(){
  if(!els?.profileAvatar || els.profileAvatar.dataset.megaUpload === '1') return;
  els.profileAvatar.dataset.megaUpload = '1';

  function makeUpload(afterEl, label, targetInput){
    const row = document.createElement('div');
    row.className = 'jc-upload-row';
    row.innerHTML = `
      <button class="btn soft" type="button">${label}</button>
      <span class="jc-file-hint">PNG/JPG/GIF/WebP до 2.5 МБ. Файл сохранится как data-url в профиле.</span>
      <input type="file" accept="image/*,.gif,.webp" hidden>
    `;
    afterEl.insertAdjacentElement('afterend', row);
    const btn = row.querySelector('button');
    const file = row.querySelector('input');
    btn.onclick = () => file.click();
    file.onchange = () => {
      const f = file.files?.[0];
      if(!f) return;
      if(f.size > 2.5 * 1024 * 1024){
        jcMegaToast('Файл слишком большой. Лучше до 2.5 МБ.');
        return;
      }
      const reader = new FileReader();
      reader.onload = () => {
        targetInput.value = reader.result;
        targetInput.dispatchEvent(new Event('input'));
        renderPreview?.();
        jcMegaToast(label + ' загружена');
      };
      reader.readAsDataURL(f);
    };
  }

  makeUpload(els.profileAvatar, 'Загрузить аватар', els.profileAvatar);
  if(els.profileCover) makeUpload(els.profileCover, 'Загрузить обложку', els.profileCover);
}

function jcMegaThemePack(){
  const section = document.querySelector('#appearanceSection');
  if(!section || section.dataset.megaThemes === '1') return;
  section.dataset.megaThemes = '1';

  const pack = document.createElement('div');
  pack.className = 'jc-theme-pack';
  pack.innerHTML = `
    <h3>Быстрые темы</h3>
    <div class="jc-theme-grid">
      <button class="jc-theme-btn" data-theme="rave" style="--a:#7c3aed;--b:#22d3ee">Rave Night</button>
      <button class="jc-theme-btn" data-theme="red" style="--a:#7f1d1d;--b:#fb7185">Crimson</button>
      <button class="jc-theme-btn" data-theme="green" style="--a:#064e3b;--b:#22c55e">Clover</button>
      <button class="jc-theme-btn" data-theme="blackclover" style="--a:#020405;--b:#22c55e">Black Clover</button>
      <button class="jc-theme-btn" data-theme="winter" style="--a:#1e3a8a;--b:#67e8f9">Зима</button>
      <button class="jc-theme-btn" data-theme="spring" style="--a:#16a34a;--b:#f0abfc">Весна</button>
      <button class="jc-theme-btn" data-theme="summer" style="--a:#f97316;--b:#facc15">Лето</button>
      <button class="jc-theme-btn" data-theme="autumn" style="--a:#78350f;--b:#fb7185">Осень</button>
      <button class="jc-theme-btn" data-theme="demon" style="--a:#111827;--b:#ef4444">Demon</button>
    </div>
  `;
  section.appendChild(pack);

  pack.querySelectorAll('.jc-theme-btn').forEach(btn => {
    btn.onclick = () => {
      applyTheme?.(btn.dataset.theme);
      pack.querySelectorAll('.jc-theme-btn').forEach(b => b.classList.toggle('active', b === btn));
      jcMegaToast('Тема применена: ' + btn.textContent.trim());
    };
  });
}

const jcMegaOldSendChat = sendChat;
sendChat = async function(t, extra={}){
  const text = String(t || '').trim();
  if(!text && !extra.mediaUrl && extra.type !== 'reaction') return;
  if(!currentRoomId){
    status(els.roomStatus, 'Сначала создай комнату или войди в комнату.');
    if(extra.type === 'reaction' && typeof jcStage4FloatReaction === 'function') jcStage4FloatReaction(text || '✨', false);
    if(extra.type === 'gif' && extra.mediaUrl && typeof jcStage4FloatReaction === 'function') jcStage4FloatReaction(extra.mediaUrl, true);
    return;
  }
  await push(ref(db,`roomChats/${currentRoomId}`),{
    uid: currentUser.uid,
    nickname: profile.nickname,
    tag: profile.tag,
    avatarUrl: profile.avatarUrl || avatar(profile.nickname),
    accentColor: profile.accentColor || '',
    text,
    type: extra.type || 'text',
    mediaUrl: extra.mediaUrl || '',
    createdAt: Date.now()
  });
};

addChat = function(m){
  if(!m) return;
  if(m.type === 'reaction' && typeof jcStage4FloatReaction === 'function') jcStage4FloatReaction(m.text || '✨', false);
  if(m.type === 'gif' && m.mediaUrl && typeof jcStage4FloatReaction === 'function') jcStage4FloatReaction(m.mediaUrl, true);

  const d = document.createElement('div');
  d.className = 'message jc-chat-bubble';
  if(m.type === 'system') d.className = 'message jc-system-message';
  if(m.type === 'reaction') d.classList.add('jc-reaction-message');

  const name = `${esc(m.nickname || 'User')}#${esc(m.tag || '0000')}`;
  const time = new Date(m.createdAt || Date.now()).toLocaleTimeString([],{hour:'2-digit',minute:'2-digit'});
  const av = esc(m.avatarUrl || avatar(m.nickname || 'JC'));
  const color = esc(m.accentColor || 'var(--primary2)');
  const text = esc(m.text || '');

  if(m.type === 'system'){
    d.innerHTML = `<div>${text}</div><time>${time}</time>`;
  } else if(m.type === 'gif' && m.mediaUrl){
    d.innerHTML = `
      <img class="jc-msg-avatar" src="${av}" alt="">
      <div class="jc-msg-body">
        <div class="jc-msg-head"><strong style="color:${color}">${name}</strong><span class="jc-msg-time">${time}</span></div>
        <div class="jc-msg-text">GIF</div>
        <img class="jc-message-gif" src="${esc(m.mediaUrl)}" alt="GIF">
      </div>`;
  } else {
    d.innerHTML = `
      <img class="jc-msg-avatar" src="${av}" alt="">
      <div class="jc-msg-body">
        <div class="jc-msg-head"><strong style="color:${color}">${name}</strong><span class="jc-msg-time">${time}</span></div>
        <div class="jc-msg-text">${text}</div>
      </div>`;
  }

  els.chatMessages.appendChild(d);
  els.chatMessages.scrollTop = els.chatMessages.scrollHeight;
};

function jcMegaMobileNav(){
  if(document.querySelector('.jc-mobile-nav')) return;
  const nav = document.createElement('div');
  nav.className = 'jc-mobile-nav';
  nav.innerHTML = `
    <button data-section="homeSection">Комната</button>
    <button data-section="watchSection">Плеер</button>
    <button data-section="friendsSection">Друзья</button>
    <button data-section="profileSection">Профиль</button>
    <button data-section="appearanceSection">Темы</button>
  `;
  document.body.appendChild(nav);

  nav.querySelectorAll('button').forEach(btn => {
    btn.onclick = () => {
      section(btn.dataset.section);
      nav.querySelectorAll('button').forEach(b => b.classList.toggle('active', b === btn));
      document.body.classList.remove('mobile-chat-open');
    };
  });

  const chat = document.createElement('button');
  chat.className = 'jc-mobile-chat-toggle';
  chat.type = 'button';
  chat.textContent = 'Чат';
  chat.onclick = () => document.body.classList.toggle('mobile-chat-open');
  document.body.appendChild(chat);
}

function jcMegaPatch(){
  jcMegaProfileUploads();
  jcMegaThemePack();
  jcMegaMobileNav();

  // Каталог может быть создан только после открытия. Перехватываем момент открытия через периодическую мягкую проверку.
  setInterval(jcMegaHardenCatalog, 700);

  console.log('JustClover MEGA Stage 11-15 active: mega-stage11-15-20260501-1');
}
setTimeout(jcMegaPatch, 900);


/* =========================================================
   JustClover profile avatar/cover/color fix
   Version: profile-media-color-fix-20260501-1
   Fix:
   - data:image avatar/cover from device files now saves and applies;
   - GIF avatars/backgrounds work as data-url or https URL;
   - accent color applies live to UI, profile card, mini profile.
   ========================================================= */

function jcProfileIsImageUrl(v){
  const s = String(v || '').trim();
  if(!s) return '';
  if(/^data:image\/(png|jpe?g|gif|webp|bmp|svg\+xml);base64,/i.test(s)) return s;
  if(/^https?:\/\//i.test(s)) return safeUrl(s);
  return '';
}

function jcColorMix(hex, amount=0.18){
  hex = String(hex || '').trim();
  if(!/^#[0-9a-f]{6}$/i.test(hex)) return '#8b5cf6';
  const n = parseInt(hex.slice(1), 16);
  const r = (n >> 16) & 255, g = (n >> 8) & 255, b = n & 255;
  const mix = (x) => Math.round(x + (255 - x) * amount);
  return '#' + [mix(r), mix(g), mix(b)].map(x => x.toString(16).padStart(2,'0')).join('');
}

function jcApplyProfileAccent(color){
  const c = /^#[0-9a-f]{6}$/i.test(String(color || '')) ? color : '#8b5cf6';
  const c2 = jcColorMix(c, .22);
  document.documentElement.style.setProperty('--profile-accent', c);
  document.documentElement.style.setProperty('--primary', c);
  document.documentElement.style.setProperty('--primary2', c2);
  document.body.style.setProperty('--profile-accent', c);
  document.body.style.setProperty('--primary', c);
  document.body.style.setProperty('--primary2', c2);
}

const jcProfileOldRenderProfile = renderProfile;
renderProfile = function(){
  if(!profile) return jcProfileOldRenderProfile?.();

  const accent = profile.accentColor || '#8b5cf6';
  jcApplyProfileAccent(accent);

  const nick = profile.nickname || 'User';
  const av = jcProfileIsImageUrl(profile.avatarUrl) || avatar(nick);
  const coverUrl = jcProfileIsImageUrl(profile.coverUrl);

  const cover = els.miniProfile?.querySelector('.cover');
  if(cover){
    cover.style.backgroundImage = coverUrl
      ? `linear-gradient(135deg,rgba(0,0,0,.08),rgba(0,0,0,.52)),url("${coverUrl}")`
      : '';
  }

  if(els.miniAvatar) els.miniAvatar.src = av;
  if(els.miniName) els.miniName.textContent = nick;
  if(els.miniTag) els.miniTag.textContent = `#${profile.tag || '0000'}`;
  if(els.miniStatus) els.miniStatus.textContent = profile.statusText || 'online';
  if(els.topUser) els.topUser.textContent = handle(profile);

  if(els.profileNick) els.profileNick.value = nick;
  if(els.profileTag) els.profileTag.value = profile.tag || '';
  if(els.profileAvatar) els.profileAvatar.value = profile.avatarUrl || '';
  if(els.profileCover) els.profileCover.value = profile.coverUrl || '';
  if(els.profileStatusText) els.profileStatusText.value = profile.statusText || '';
  if(els.profileBio) els.profileBio.value = profile.bio || '';
  if(els.profileAccent) els.profileAccent.value = accent;

  renderPreview();
};

renderPreview = function(){
  const n = els.profileNick?.value?.trim() || profile?.nickname || 'User';
  const a = jcProfileIsImageUrl(els.profileAvatar?.value) || profile?.avatarUrl || avatar(n);
  const c = jcProfileIsImageUrl(els.profileCover?.value) || profile?.coverUrl || '';
  const accent = els.profileAccent?.value || profile?.accentColor || '#8b5cf6';

  jcApplyProfileAccent(accent);

  if(els.profilePreviewAvatar) els.profilePreviewAvatar.src = jcProfileIsImageUrl(a) || avatar(n);
  if(els.profilePreviewName) els.profilePreviewName.textContent = n;
  if(els.profilePreviewTag) els.profilePreviewTag.textContent = `#${els.profileTag?.value?.trim() || profile?.tag || '0000'}`;

  const pc = els.profilePreviewCard?.querySelector('.profile-preview-cover');
  if(pc){
    pc.style.backgroundImage = c
      ? `linear-gradient(135deg,rgba(0,0,0,.08),rgba(0,0,0,.52)),url("${c}")`
      : '';
  }
};

saveProfile = async function(e){
  e?.preventDefault?.();

  const nickname = els.profileNick.value.trim().slice(0,24) || 'User';
  const t = els.profileTag.value.trim().replace(/[^a-zA-Z0-9_а-яА-ЯёЁ-]/g,'').slice(0,12) || tag();

  const data = {
    nickname,
    tag: t,
    avatarUrl: jcProfileIsImageUrl(els.profileAvatar.value) || avatar(nickname),
    coverUrl: jcProfileIsImageUrl(els.profileCover.value),
    statusText: els.profileStatusText.value.trim().slice(0,80),
    bio: els.profileBio.value.trim().slice(0,280),
    accentColor: /^#[0-9a-f]{6}$/i.test(els.profileAccent.value) ? els.profileAccent.value : '#8b5cf6',
    updatedAt: Date.now()
  };

  await update(ref(db,`users/${currentUser.uid}`),data);
  profile = {...profile,...data};
  renderProfile();
  status(els.profileSaveStatus,'Сохранено. Аватар/фон/цвет применены.');
  jcStage5Toast?.('Профиль сохранён');
};

function jcProfileWireLiveInputs(){
  if(els.profileAccent && els.profileAccent.dataset.profileFix !== '1'){
    els.profileAccent.dataset.profileFix = '1';
    els.profileAccent.addEventListener('input', renderPreview);
    els.profileAccent.addEventListener('change', renderPreview);
  }

  [els.profileAvatar, els.profileCover, els.profileNick, els.profileTag].forEach(i => {
    if(i && i.dataset.profileFix !== '1'){
      i.dataset.profileFix = '1';
      i.addEventListener('input', renderPreview);
      i.addEventListener('change', renderPreview);
    }
  });

  // Улучшаем старые кнопки загрузки: после выбора сразу видно результат.
  document.querySelectorAll('.jc-upload-row input[type="file"]').forEach(file => {
    if(file.dataset.profileFix === '1') return;
    file.dataset.profileFix = '1';
    file.addEventListener('change', () => setTimeout(renderPreview, 120));
  });

  console.log('JustClover profile media/color fix active: profile-media-color-fix-20260501-1');
}

setTimeout(() => {
  jcProfileWireLiveInputs();
  if(profile) renderProfile();
}, 1200);


/* =========================================================
   JustClover Device Background Upload Fix
   Version: device-background-upload-fix-20260501-1
   ========================================================= */

function jcDeviceFileToDataUrl(file, maxMb = 4){
  return new Promise((resolve, reject) => {
    if(!file) return resolve('');
    if(file.size > maxMb * 1024 * 1024){
      reject(new Error(`Файл слишком большой. Лучше до ${maxMb} МБ.`));
      return;
    }
    const reader = new FileReader();
    reader.onload = () => resolve(reader.result);
    reader.onerror = () => reject(new Error('Не удалось прочитать файл.'));
    reader.readAsDataURL(file);
  });
}

function jcApplyCustomBackground(){
  const bg = localStorage.getItem('jc-custom-site-bg') || '';
  const opacity = localStorage.getItem('jc-custom-site-bg-opacity') || '.34';
  const blur = localStorage.getItem('jc-custom-site-bg-blur') || '0';

  document.documentElement.style.setProperty('--jc-custom-bg', bg ? `url("${bg}")` : 'none');
  document.documentElement.style.setProperty('--jc-custom-bg-opacity', opacity);
  document.documentElement.style.setProperty('--jc-custom-bg-blur', `${blur}px`);

  const preview = document.querySelector('.jc-bg-preview');
  if(preview){
    preview.style.backgroundImage = bg
      ? `linear-gradient(180deg,rgba(0,0,0,.12),rgba(0,0,0,.42)),url("${bg}")`
      : '';
    preview.textContent = bg ? 'Фон сайта загружен с устройства' : 'Фон сайта не выбран';
  }
}

function jcAddDeviceBackgroundPanel(){
  const section = document.querySelector('#appearanceSection');
  if(!section || section.dataset.deviceBg === '1') return;
  section.dataset.deviceBg = '1';

  const panel = document.createElement('div');
  panel.className = 'jc-device-upload-panel';
  panel.innerHTML = `
    <h3>Фон сайта с устройства</h3>
    <p>Можно загрузить PNG/JPG/WebP/GIF с устройства. Фон сохранится в этом браузере и будет работать без URL.</p>

    <div class="jc-device-upload-grid">
      <button class="btn primary" type="button" id="jcUploadSiteBgBtn">Загрузить фон сайта</button>
      <button class="btn soft" type="button" id="jcClearSiteBgBtn">Убрать фон</button>
      <button class="btn soft" type="button" id="jcApplyProfileCoverAsBgBtn">Взять обложку профиля</button>
    </div>

    <input id="jcUploadSiteBgFile" type="file" accept="image/*,.gif,.webp" hidden>

    <div class="jc-bg-controls">
      <label>Прозрачность фона
        <input id="jcBgOpacity" type="range" min="0" max="0.75" step="0.01" value="${localStorage.getItem('jc-custom-site-bg-opacity') || '.34'}">
      </label>
      <label>Размытие фона
        <input id="jcBgBlur" type="range" min="0" max="18" step="1" value="${localStorage.getItem('jc-custom-site-bg-blur') || '0'}">
      </label>
    </div>

    <div class="jc-bg-preview">Фон сайта не выбран</div>
  `;

  section.appendChild(panel);

  const file = panel.querySelector('#jcUploadSiteBgFile');
  panel.querySelector('#jcUploadSiteBgBtn').onclick = () => file.click();

  file.onchange = async () => {
    try{
      const data = await jcDeviceFileToDataUrl(file.files?.[0], 5);
      if(!data) return;
      localStorage.setItem('jc-custom-site-bg', data);
      jcApplyCustomBackground();
      jcStage5Toast?.('Фон сайта загружен');
    }catch(e){
      jcStage5Toast?.(e.message || 'Не удалось загрузить фон');
    }
  };

  panel.querySelector('#jcClearSiteBgBtn').onclick = () => {
    localStorage.removeItem('jc-custom-site-bg');
    jcApplyCustomBackground();
    jcStage5Toast?.('Фон сайта убран');
  };

  panel.querySelector('#jcApplyProfileCoverAsBgBtn').onclick = () => {
    const cover = els.profileCover?.value || profile?.coverUrl || '';
    const valid = jcProfileIsImageUrl?.(cover) || '';
    if(!valid){
      jcStage5Toast?.('Сначала загрузи обложку профиля');
      return;
    }
    localStorage.setItem('jc-custom-site-bg', valid);
    jcApplyCustomBackground();
    jcStage5Toast?.('Обложка профиля стала фоном сайта');
  };

  panel.querySelector('#jcBgOpacity').oninput = e => {
    localStorage.setItem('jc-custom-site-bg-opacity', e.target.value);
    jcApplyCustomBackground();
  };

  panel.querySelector('#jcBgBlur').oninput = e => {
    localStorage.setItem('jc-custom-site-bg-blur', e.target.value);
    jcApplyCustomBackground();
  };

  jcApplyCustomBackground();
}

function jcImproveProfileUploadLabels(){
  // Делает понятнее, что обложка тоже грузится с устройства.
  const avatarRows = [...document.querySelectorAll('.jc-upload-row')];
  avatarRows.forEach(row => {
    const btn = row.querySelector('button');
    if(!btn) return;
    if(btn.textContent.includes('облож')) {
      btn.textContent = 'Загрузить обложку/фон профиля';
    }
    if(btn.textContent.includes('аватар')) {
      btn.textContent = 'Загрузить аватар с устройства';
    }
  });

  if(els.profileCover && !document.querySelector('.jc-profile-bg-note')){
    const note = document.createElement('div');
    note.className = 'jc-profile-bg-note';
    note.textContent = 'Обложку/фон профиля можно загрузить кнопкой выше: PNG/JPG/WebP/GIF, без URL.';
    els.profileCover.insertAdjacentElement('afterend', note);
  }
}

function jcDeviceBgPatch(){
  jcAddDeviceBackgroundPanel();
  jcImproveProfileUploadLabels();
  jcApplyCustomBackground();
  console.log('JustClover device background upload fix active: device-background-upload-fix-20260501-1');
}

setTimeout(jcDeviceBgPatch, 1300);
setInterval(jcImproveProfileUploadLabels, 1500);


/* =========================================================
   JustClover Profile Device Avatar Strong Fix
   Version: profile-device-avatar-strongfix-20260501-1
   ========================================================= */

function jcStrongFileToDataUrl(file, maxMb = 3){
  return new Promise((resolve, reject) => {
    if(!file) return resolve('');
    if(file.size > maxMb * 1024 * 1024){
      reject(new Error(`Файл слишком большой. Выбери до ${maxMb} МБ.`));
      return;
    }
    if(!/^image\//i.test(file.type) && !/\.(gif|webp|png|jpe?g)$/i.test(file.name)){
      reject(new Error('Нужна картинка: PNG/JPG/WebP/GIF.'));
      return;
    }
    const r = new FileReader();
    r.onload = () => resolve(r.result);
    r.onerror = () => reject(new Error('Не удалось прочитать файл.'));
    r.readAsDataURL(file);
  });
}

function jcStrongProfileStatus(text, ok=true){
  let box = document.querySelector('.jc-profile-file-status');
  if(!box) return;
  box.style.color = ok ? '#86efac' : '#fecaca';
  box.textContent = text || '';
}

function jcStrongSetProfileImage(target, dataUrl){
  if(target === 'avatar'){
    els.profileAvatar.value = dataUrl;
    if(els.profilePreviewAvatar) els.profilePreviewAvatar.src = dataUrl;
    if(els.miniAvatar) els.miniAvatar.src = dataUrl;
    if(profile) profile.avatarUrl = dataUrl;
    jcStrongProfileStatus('Аватар выбран с устройства. Нажми «Сохранить», чтобы закрепить его в профиле.');
  }

  if(target === 'cover'){
    els.profileCover.value = dataUrl;
    const pc = els.profilePreviewCard?.querySelector('.profile-preview-cover');
    if(pc) pc.style.backgroundImage = `linear-gradient(135deg,rgba(0,0,0,.08),rgba(0,0,0,.52)),url("${dataUrl}")`;
    const miniCover = els.miniProfile?.querySelector('.cover');
    if(miniCover) miniCover.style.backgroundImage = `linear-gradient(135deg,rgba(0,0,0,.08),rgba(0,0,0,.52)),url("${dataUrl}")`;
    if(profile) profile.coverUrl = dataUrl;
    jcStrongProfileStatus('Обложка/фон профиля выбран с устройства. Нажми «Сохранить», чтобы закрепить.');
  }

  renderPreview?.();
}

function jcStrongAddProfileFilePanel(){
  const section = document.querySelector('#profileSection');
  if(!section || section.dataset.strongAvatar === '1') return;
  section.dataset.strongAvatar = '1';

  const formCard = els.profileNick?.closest('.card') || els.profileNick?.closest('form') || section.querySelector('.card');
  if(!formCard) return;

  const panel = document.createElement('div');
  panel.className = 'jc-profile-file-panel';
  panel.innerHTML = `
    <h3>Загрузка с устройства</h3>
    <p>URL не обязателен: выбери аватарку, GIF-аватарку или обложку/фон профиля прямо с компьютера/телефона.</p>

    <div class="jc-profile-file-grid">
      <button class="btn primary" type="button" id="jcPickAvatarFile">Аватар с устройства</button>
      <button class="btn soft" type="button" id="jcPickGifAvatarFile">GIF-аватарка</button>
      <button class="btn soft" type="button" id="jcPickCoverFile">Обложка/фон профиля</button>
      <button class="btn soft" type="button" id="jcApplyCoverAsSiteBg">Обложку → фон сайта</button>
      <button class="btn soft" type="button" id="jcResetAvatar">Сбросить аватар</button>
      <button class="btn soft" type="button" id="jcResetCover">Сбросить обложку</button>
    </div>

    <div class="jc-profile-file-status"></div>

    <input id="jcAvatarFileInput" type="file" accept="image/*,.gif,.webp" hidden>
    <input id="jcCoverFileInput" type="file" accept="image/*,.gif,.webp" hidden>
  `;

  // Вставляем перед кнопкой Сохранить, чтобы было очевидно.
  const saveBtn = els.saveProfileBtn;
  if(saveBtn && saveBtn.parentElement === formCard){
    formCard.insertBefore(panel, saveBtn);
  } else {
    formCard.appendChild(panel);
  }

  if(els.profileAvatar && !document.querySelector('#profileAvatar + .jc-url-optional-note')){
    const n = document.createElement('div');
    n.className = 'jc-url-optional-note';
    n.textContent = 'Можно оставить URL, а можно выбрать файл кнопкой «Аватар с устройства».';
    els.profileAvatar.insertAdjacentElement('afterend', n);
  }

  if(els.profileCover && !document.querySelector('#profileCover + .jc-url-optional-note')){
    const n = document.createElement('div');
    n.className = 'jc-url-optional-note';
    n.textContent = 'Можно оставить URL, а можно выбрать файл кнопкой «Обложка/фон профиля».';
    els.profileCover.insertAdjacentElement('afterend', n);
  }

  const avatarInput = panel.querySelector('#jcAvatarFileInput');
  const coverInput = panel.querySelector('#jcCoverFileInput');

  panel.querySelector('#jcPickAvatarFile').onclick = () => avatarInput.click();
  panel.querySelector('#jcPickGifAvatarFile').onclick = () => avatarInput.click();
  panel.querySelector('#jcPickCoverFile').onclick = () => coverInput.click();

  avatarInput.onchange = async () => {
    try {
      const data = await jcStrongFileToDataUrl(avatarInput.files?.[0], 3);
      if(data) jcStrongSetProfileImage('avatar', data);
    } catch(e) {
      jcStrongProfileStatus(e.message || 'Не удалось загрузить аватар.', false);
      jcStage5Toast?.(e.message || 'Не удалось загрузить аватар');
    }
  };

  coverInput.onchange = async () => {
    try {
      const data = await jcStrongFileToDataUrl(coverInput.files?.[0], 5);
      if(data) jcStrongSetProfileImage('cover', data);
    } catch(e) {
      jcStrongProfileStatus(e.message || 'Не удалось загрузить обложку.', false);
      jcStage5Toast?.(e.message || 'Не удалось загрузить обложку');
    }
  };

  panel.querySelector('#jcApplyCoverAsSiteBg').onclick = () => {
    const cover = els.profileCover?.value || profile?.coverUrl || '';
    if(!cover || !/^data:image\//i.test(cover) && !/^https?:\/\//i.test(cover)){
      jcStrongProfileStatus('Сначала выбери обложку/фон профиля.', false);
      return;
    }
    localStorage.setItem('jc-custom-site-bg', cover);
    jcApplyCustomBackground?.();
    jcStrongProfileStatus('Обложка профиля применена как фон сайта.');
    jcStage5Toast?.('Обложка стала фоном сайта');
  };

  panel.querySelector('#jcResetAvatar').onclick = () => {
    const n = els.profileNick?.value || profile?.nickname || 'JC';
    const a = avatar(n);
    els.profileAvatar.value = a;
    jcStrongSetProfileImage('avatar', a);
    jcStrongProfileStatus('Аватар сброшен. Нажми «Сохранить».');
  };

  panel.querySelector('#jcResetCover').onclick = () => {
    els.profileCover.value = '';
    if(profile) profile.coverUrl = '';
    renderPreview?.();
    const pc = els.profilePreviewCard?.querySelector('.profile-preview-cover');
    if(pc) pc.style.backgroundImage = '';
    const miniCover = els.miniProfile?.querySelector('.cover');
    if(miniCover) miniCover.style.backgroundImage = '';
    jcStrongProfileStatus('Обложка сброшена. Нажми «Сохранить».');
  };

  console.log('JustClover profile device avatar strong fix active: profile-device-avatar-strongfix-20260501-1');
}

setTimeout(jcStrongAddProfileFilePanel, 1400);
setInterval(jcStrongAddProfileFilePanel, 2000);


/* =========================================================
   JustClover MEGA Stage 16-18 JS
   Version: mega-stage16-18-rooms-queue-20260501-1
   - Custom room code/password
   - Improved invite modal
   - Source history + queue
   ========================================================= */

let jcRoomMode = localStorage.getItem('jc-room-mode') || 'public';
let jcRoomOpen = localStorage.getItem('jc-room-open') || 'open';
let jcLastSourceKey = '';
let jcSourceRoomId = '';
let jcSourceUnsubs = [];
let jcSourceHistoryCache = [];
let jcSourceQueueCache = [];

function jc1618Toast(text){
  if(typeof jcStage5Toast === 'function') jcStage5Toast(text);
  else status?.(els?.roomStatus, text);
}

function jc1618RoomCode(v){
  return String(v || '')
    .trim()
    .replace(/[^a-zA-Z0-9_а-яА-ЯёЁ-]/g, '-')
    .replace(/-+/g, '-')
    .slice(0, 32);
}

function jc1618InputRoomId(v){
  const raw = String(v || '').trim();
  if(!raw) return '';
  try {
    const u = new URL(raw);
    return jc1618RoomCode(u.searchParams.get('room') || raw);
  } catch {
    return jc1618RoomCode(raw);
  }
}

function jc1618BuildAdvancedRoomControls(){
  if(!els?.roomNameInput || document.querySelector('.jc-room-advanced')) return;

  const box = document.createElement('div');
  box.className = 'jc-room-advanced';
  box.innerHTML = `
    <div class="jc-room-advanced-title">
      <strong>Расширенные настройки комнаты</strong>
      <span>код / пароль / доступ</span>
    </div>
    <div class="split">
      <input id="jcCustomRoomCode" maxlength="32" placeholder="Свой код: anime123" />
      <input id="jcCreateRoomPassword" maxlength="32" placeholder="Пароль, если нужен" />
    </div>
    <div class="split">
      <input id="jcJoinRoomPassword" maxlength="32" placeholder="Пароль для входа" />
      <button id="jcQuickInviteBtn" class="btn soft" type="button">Invite окно</button>
    </div>
    <div class="jc-room-toggle-row">
      <button class="jc-room-toggle" data-room-open="open" type="button">Открытая</button>
      <button class="jc-room-toggle" data-room-open="closed" type="button">Закрытая</button>
      <button class="jc-room-toggle" data-room-mode="public" type="button">В списке публичных</button>
      <button class="jc-room-toggle" data-room-mode="invite" type="button">Только по ссылке</button>
    </div>
  `;

  els.roomNameInput.insertAdjacentElement('afterend', box);

  const sync = () => {
    box.querySelectorAll('[data-room-open]').forEach(b => b.classList.toggle('active', b.dataset.roomOpen === jcRoomOpen));
    box.querySelectorAll('[data-room-mode]').forEach(b => b.classList.toggle('active', b.dataset.roomMode === jcRoomMode));
  };

  box.querySelectorAll('[data-room-open]').forEach(btn => {
    btn.onclick = async () => {
      jcRoomOpen = btn.dataset.roomOpen;
      localStorage.setItem('jc-room-open', jcRoomOpen);
      sync();
      if(currentRoomId && currentRoom?.ownerUid === currentUser?.uid) {
        await setVis(jcRoomOpen);
      }
    };
  });

  box.querySelectorAll('[data-room-mode]').forEach(btn => {
    btn.onclick = async () => {
      jcRoomMode = btn.dataset.roomMode;
      localStorage.setItem('jc-room-mode', jcRoomMode);
      sync();
      if(currentRoomId && currentRoom?.ownerUid === currentUser?.uid) {
        await setMode(jcRoomMode);
      }
    };
  });

  box.querySelector('#jcQuickInviteBtn').onclick = () => {
    if(typeof jcStage5OpenInviteModal === 'function') jcStage5OpenInviteModal();
    else els.copyInviteBtn?.click();
  };

  sync();
}

const jc1618OldCreateRoom = createRoom;
createRoom = async function(){
  if(!currentUser || !profile) return;

  const custom = jc1618RoomCode(document.querySelector('#jcCustomRoomCode')?.value || '');
  let rr, id;

  if(custom) {
    id = custom;
    const exists = await get(ref(db,`rooms/${id}`));
    if(exists.exists()) {
      status(els.roomStatus, 'Такой код комнаты уже занят.');
      jc1618Toast('Код комнаты занят');
      return;
    }
    rr = ref(db,`rooms/${id}`);
  } else {
    rr = push(ref(db,'rooms'));
    id = rr.key;
  }

  const name = els.roomNameInput.value.trim() || `${profile.nickname}'s room`;
  const password = String(document.querySelector('#jcCreateRoomPassword')?.value || '').trim();
  const visibility = jcRoomOpen === 'closed' ? 'closed' : 'open';
  const joinMode = jcRoomMode === 'invite' ? 'invite' : 'public';
  const publicOpen = visibility === 'open' && joinMode === 'public';

  const room = {
    id,
    name,
    ownerUid: currentUser.uid,
    ownerName: handle(profile),
    ownerAvatar: profile.avatarUrl || avatar(profile.nickname),
    visibility,
    joinMode,
    publicOpen,
    passwordEnabled: !!password,
    password: password,
    source:{type:'none'},
    playback:{time:0,playing:false,updatedAt:Date.now(),byUid:''},
    createdAt:Date.now(),
    updatedAt:Date.now()
  };

  await set(rr, room);
  await joinRoom(id);
  section('watchSection');
  jc1618Toast(custom ? 'Комната создана со своим кодом' : 'Комната создана');
};

const jc1618OldJoinRoom = joinRoom;
joinRoom = async function(id){
  if(!currentUser || !profile) return;
  id = jc1618InputRoomId(id);
  if(!id) {
    status(els.roomStatus, 'Введи код комнаты.');
    return;
  }

  const s = await get(ref(db,`rooms/${id}`));
  if(!s.exists()) {
    status(els.roomStatus, 'Комната не найдена.');
    jc1618Toast('Комната не найдена');
    return;
  }

  const r = s.val();
  const owner = r.ownerUid === currentUser.uid;

  if(r.visibility !== 'open' && !owner) {
    status(els.roomStatus, 'Комната закрыта.');
    jc1618Toast('Комната закрыта');
    return;
  }

  if(r.passwordEnabled && !owner) {
    let pass = String(document.querySelector('#jcJoinRoomPassword')?.value || '').trim();
    if(!pass) pass = prompt('Введите пароль комнаты') || '';
    if(pass !== String(r.password || '')) {
      status(els.roomStatus, 'Неверный пароль комнаты.');
      jc1618Toast('Неверный пароль');
      return;
    }
  }

  await leaveRoom(false);
  currentRoomId = id;
  currentRoom = r;
  els.joinRoomInput.value = id;
  setRoomUrl(id);

  await set(ref(db,`rooms/${id}/members/${currentUser.uid}`), {
    uid: currentUser.uid,
    nickname: profile.nickname,
    tag: profile.tag,
    avatarUrl: profile.avatarUrl || avatar(profile.nickname),
    joinedAt: Date.now()
  });

  await update(ref(db,`users/${currentUser.uid}`), {
    activeRoomId:id,
    activeRoomName:r.name || 'Комната',
    activeRoomOpen:r.visibility === 'open',
    activeRoomPublic:r.joinMode === 'public',
    updatedAt:Date.now()
  });

  await update(ref(db,`presence/${currentUser.uid}`), {activeRoomId:id});
  subRoom(id);
  status(els.roomStatus, `Ты в комнате: ${r.name || id}`);
  section('watchSection');
};

const jc1618OldRenderRooms = renderRooms;
renderRooms = function(rooms){
  els.publicRoomsList.innerHTML = '';
  if(!rooms.length) {
    els.publicRoomsList.innerHTML = '<p class="status">Открытых комнат пока нет.</p>';
    return;
  }

  rooms.forEach(r => {
    const card = document.createElement('div');
    card.className = 'room-card' + (r.passwordEnabled ? ' locked' : '');
    card.innerHTML = `
      <img src="${esc(r.ownerAvatar || avatar(r.ownerName))}">
      <div class="card-main">
        <strong>${esc(r.name || 'Комната')}</strong>
        <span>Код: <span class="jc-room-code-badge">${esc(r.id || '')}</span> ${r.passwordEnabled ? '<span class="jc-room-lock">пароль</span>' : ''}</span>
        <span>Хост: ${esc(r.ownerName || 'User')}</span>
        <span>${esc(r.source?.title || 'Источник не выбран')}</span>
      </div>
      <button class="btn primary">Войти</button>
    `;
    card.querySelector('button').onclick = () => joinRoom(r.id);
    els.publicRoomsList.appendChild(card);
  });
};

function jc1618ImproveInviteModal(){
  const old = typeof jcStage5OpenInviteModal === 'function' ? jcStage5OpenInviteModal : null;
  if(!old || window.__jc1618InviteWrapped) return;
  window.__jc1618InviteWrapped = true;

  jcStage5OpenInviteModal = function(){
    old();
    setTimeout(() => {
      const body = document.querySelector('.jc-modal-body');
      if(!body || body.querySelector('.jc-invite-extra')) return;

      const extra = document.createElement('div');
      extra.className = 'jc-invite-extra';
      extra.innerHTML = `
        <div class="jc-invite-extra-row">
          <code>Код: ${esc(currentRoomId || 'нет комнаты')}</code>
          <button class="btn soft" type="button" data-copy-code>Копировать код</button>
        </div>
        <div class="jc-invite-extra-row">
          <code>${currentRoom?.passwordEnabled ? 'Пароль: ' + esc(currentRoom.password || '') : 'Пароль не установлен'}</code>
          <button class="btn soft" type="button" data-copy-pass ${currentRoom?.passwordEnabled ? '' : 'disabled'}>Копировать пароль</button>
        </div>
      `;
      body.appendChild(extra);

      extra.querySelector('[data-copy-code]').onclick = async () => {
        await navigator.clipboard?.writeText(currentRoomId || '').catch(()=>{});
        jc1618Toast('Код комнаты скопирован');
      };

      extra.querySelector('[data-copy-pass]').onclick = async () => {
        await navigator.clipboard?.writeText(currentRoom?.password || '').catch(()=>{});
        jc1618Toast('Пароль скопирован');
      };
    }, 80);
  };
}

function jcSourceKey(s){
  if(!s || s.type === 'none') return '';
  return [s.type, s.videoId || s.url || s.embedUrl || '', s.title || ''].join('|');
}

async function jcRememberSource(s){
  if(!currentRoomId || !currentUser || !currentRoom || currentRoom.ownerUid !== currentUser.uid) return;
  if(!s || s.type === 'none') return;

  const key = currentRoomId + '|' + jcSourceKey(s);
  if(!jcSourceKey(s) || key === jcLastSourceKey) return;
  jcLastSourceKey = key;

  await push(ref(db,`sourceHistory/${currentRoomId}`), {
    source:s,
    title:s.title || s.videoId || s.url || s.type,
    type:s.type,
    byUid:currentUser.uid,
    byName:handle(profile),
    createdAt:Date.now()
  }).catch(()=>{});
}

const jcOldLoadSource1618 = loadSource;
loadSource = async function(s={type:'none'}){
  const r = await jcOldLoadSource1618(s);
  setTimeout(() => jcRememberSource(s), 120);
  return r;
};

async function jcPlaySource(source){
  if(!currentRoomId || !source) return;
  if(currentRoom?.ownerUid !== currentUser?.uid) {
    jc1618Toast('Запускать источник может только хост');
    return;
  }
  await update(ref(db,`rooms/${currentRoomId}`), {
    source,
    playback:{time:0,playing:false,updatedAt:Date.now(),byUid:currentUser.uid},
    updatedAt:Date.now()
  });
  jc1618Toast('Источник запущен');
}

async function jcAddCurrentToQueue(){
  if(!currentRoomId || !currentSource || currentSource.type === 'none') {
    jc1618Toast('Сначала выбери источник');
    return;
  }
  await push(ref(db,`sourceQueue/${currentRoomId}`), {
    source:currentSource,
    title:currentSource.title || currentSource.videoId || currentSource.url || currentSource.type,
    type:currentSource.type,
    byUid:currentUser.uid,
    byName:handle(profile),
    createdAt:Date.now()
  });
  jc1618Toast('Добавлено в очередь');
}

async function jcQueueNext(){
  if(!currentRoomId) return;
  if(currentRoom?.ownerUid !== currentUser?.uid) {
    jc1618Toast('Очередью управляет хост');
    return;
  }
  const s = await get(ref(db,`sourceQueue/${currentRoomId}`));
  const items = [];
  s.forEach(x => items.push({key:x.key,...x.val()}));
  items.sort((a,b)=>(a.createdAt||0)-(b.createdAt||0));
  const next = items[0];
  if(!next) {
    jc1618Toast('Очередь пустая');
    return;
  }
  await jcPlaySource(next.source);
  await remove(ref(db,`sourceQueue/${currentRoomId}/${next.key}`));
}

function jcBuildSourceTools(){
  const stage = document.querySelector('.watch-stage');
  if(!stage || document.querySelector('.jc-source-tools')) return;

  const tools = document.createElement('div');
  tools.className = 'jc-source-tools';
  tools.innerHTML = `
    <div class="jc-source-panel">
      <div class="jc-source-panel-head">
        <h3>История источников</h3>
        <button class="btn soft" type="button" data-refresh-history>Обновить</button>
      </div>
      <div class="jc-source-list" id="jcSourceHistoryList"><div class="jc-source-empty">История появится после запуска видео.</div></div>
    </div>
    <div class="jc-source-panel">
      <div class="jc-source-panel-head">
        <h3>Очередь видео</h3>
        <div>
          <button class="btn soft" type="button" data-add-current>+ текущее</button>
          <button class="btn primary" type="button" data-next>Следующее</button>
        </div>
      </div>
      <div class="jc-source-list" id="jcSourceQueueList"><div class="jc-source-empty">Очередь пустая.</div></div>
    </div>
  `;

  const meta = stage.querySelector('.watch-footer-meta');
  if(meta) meta.insertAdjacentElement('beforebegin', tools);
  else stage.appendChild(tools);

  tools.querySelector('[data-add-current]').onclick = jcAddCurrentToQueue;
  tools.querySelector('[data-next]').onclick = jcQueueNext;
  tools.querySelector('[data-refresh-history]').onclick = () => jcSubscribeSourceTools(true);
}

function jcRenderSourceList(container, items, mode){
  const el = document.querySelector(container);
  if(!el) return;
  el.innerHTML = '';

  if(!items.length) {
    el.innerHTML = `<div class="jc-source-empty">${mode === 'history' ? 'История появится после запуска видео.' : 'Очередь пустая.'}</div>`;
    return;
  }

  items.slice(0, mode === 'history' ? 8 : 12).forEach(item => {
    const div = document.createElement('div');
    div.className = 'jc-source-item';
    const title = item.title || item.source?.title || item.source?.videoId || item.source?.url || item.type || 'Источник';
    const type = item.type || item.source?.type || 'source';
    div.innerHTML = `
      <div>
        <strong>${esc(title)}</strong>
        <span>${esc(type)} · ${new Date(item.createdAt || Date.now()).toLocaleTimeString([],{hour:'2-digit',minute:'2-digit'})}</span>
      </div>
      <button class="btn soft" type="button">${mode === 'history' ? 'Запуск' : 'Play'}</button>
    `;
    div.querySelector('button').onclick = () => jcPlaySource(item.source);
    el.appendChild(div);
  });
}

function jcSubscribeSourceTools(force=false){
  if(!currentRoomId) return;
  jcBuildSourceTools();

  if(!force && jcSourceRoomId === currentRoomId) return;

  jcSourceUnsubs.forEach(u => u && u());
  jcSourceUnsubs = [];
  jcSourceRoomId = currentRoomId;

  jcSourceUnsubs.push(onValue(ref(db,`sourceHistory/${currentRoomId}`), s => {
    const a = [];
    s.forEach(x => a.push({key:x.key,...x.val()}));
    a.sort((x,y)=>(y.createdAt||0)-(x.createdAt||0));
    jcSourceHistoryCache = a;
    jcRenderSourceList('#jcSourceHistoryList', a, 'history');
  }));

  jcSourceUnsubs.push(onValue(ref(db,`sourceQueue/${currentRoomId}`), s => {
    const a = [];
    s.forEach(x => a.push({key:x.key,...x.val()}));
    a.sort((x,y)=>(x.createdAt||0)-(y.createdAt||0));
    jcSourceQueueCache = a;
    jcRenderSourceList('#jcSourceQueueList', a, 'queue');
  }));
}

function jc1618Patch(){
  jc1618BuildAdvancedRoomControls();
  jc1618ImproveInviteModal();
  jcBuildSourceTools();

  setInterval(() => {
    jc1618BuildAdvancedRoomControls();
    if(currentRoomId) jcSubscribeSourceTools();
  }, 1200);

  console.log('JustClover MEGA Stage 16-18 active: mega-stage16-18-rooms-queue-20260501-1');
}

setTimeout(jc1618Patch, 1200);


/* =========================================================
   JustClover Stage 18.5 Lobby Cleanup JS
   Version: stage18-5-lobby-cleanup-20260501-1
   ========================================================= */

function jc185Toast(text){
  if(typeof jcStage5Toast === 'function') jcStage5Toast(text);
  else status?.(els?.roomStatus, text);
}

function jc185RoomActiveSync(){
  document.body.classList.toggle('room-active', !!currentRoomId);

  const strip = document.querySelector('.jc-current-room-strip');
  if(strip){
    const name = currentRoom?.name || currentRoomId || 'Комната';
    const code = currentRoomId || 'нет';
    const lock = currentRoom?.passwordEnabled ? ' · пароль' : '';
    const mode = currentRoom
      ? `${currentRoom.visibility === 'open' ? 'открыта' : 'закрыта'} · ${currentRoom.joinMode === 'public' ? 'публичная' : 'по ссылке'}${lock}`
      : 'комната не создана';

    strip.querySelector('[data-current-room-title]').textContent = name;
    strip.querySelector('[data-current-room-meta]').textContent = `Код: ${code} · ${mode}`;
  }
}

function jc185RebuildLobby(){
  if(!els?.roomNameInput || document.querySelector('.jc-current-room-strip')) return;

  const advanced = document.querySelector('.jc-room-advanced');
  if(advanced){
    const custom = advanced.querySelector('#jcCustomRoomCode');
    const createPass = advanced.querySelector('#jcCreateRoomPassword');
    const joinPass = advanced.querySelector('#jcJoinRoomPassword');
    const quickInvite = advanced.querySelector('#jcQuickInviteBtn');

    if(custom && createPass && !advanced.querySelector('.jc-room-create-row')){
      const row = document.createElement('div');
      row.className = 'jc-room-create-row';
      custom.parentElement.insertBefore(row, custom);
      row.appendChild(custom);
      row.appendChild(createPass);
    }

    if(quickInvite){
      quickInvite.classList.add('jc-room-invite-quick');
      quickInvite.textContent = 'Invite';
    }

    const createBtn = els.createRoomBtn;
    if(createBtn && advanced.nextElementSibling !== createBtn){
      advanced.insertAdjacentElement('afterend', createBtn);
    }

    if(joinPass && els.joinRoomInput && els.joinRoomBtn){
      const joinRow = els.joinRoomInput.parentElement;
      joinRow.classList.add('jc-join-clean-row');
      if(joinPass.parentElement !== joinRow){
        joinRow.insertBefore(joinPass, els.joinRoomBtn);
      }
      els.joinRoomInput.placeholder = 'Код комнаты или invite-ссылка';
      joinPass.placeholder = 'Пароль, если есть';
    }
  }

  const strip = document.createElement('div');
  strip.className = 'jc-current-room-strip';
  strip.innerHTML = `
    <div class="jc-current-room-main">
      <strong data-current-room-title>Комната</strong>
      <span data-current-room-meta>Код: —</span>
    </div>
    <button class="btn soft" type="button" data-lobby-invite>Invite</button>
    <button class="btn primary" type="button" data-lobby-watch>К плееру</button>
  `;

  const roomStatus = els.roomStatus;
  if(roomStatus){
    roomStatus.insertAdjacentElement('beforebegin', strip);
  } else {
    els.createRoomBtn.insertAdjacentElement('afterend', strip);
  }

  strip.querySelector('[data-lobby-invite]').onclick = () => {
    if(!currentRoomId){
      jc185Toast('Сначала создай комнату');
      return;
    }
    if(typeof jcStage5OpenInviteModal === 'function') jcStage5OpenInviteModal();
    else els.copyInviteBtn?.click();
  };

  strip.querySelector('[data-lobby-watch]').onclick = () => section('watchSection');

  jc185RoomActiveSync();
}

const jc185OldRenderRooms = renderRooms;
renderRooms = function(rooms){
  els.publicRoomsList.innerHTML = '';
  if(!rooms.length){
    els.publicRoomsList.innerHTML = '<p class="status">Открытых комнат пока нет.</p>';
    return;
  }

  rooms.forEach(r => {
    const card = document.createElement('div');
    card.className = 'room-card' + (r.passwordEnabled ? ' locked' : '');
    card.innerHTML = `
      <img src="${esc(r.ownerAvatar || avatar(r.ownerName))}">
      <div class="card-main">
        <strong>${esc(r.name || 'Комната')}</strong>
        <span>Код: <span class="jc-room-code-badge">${esc(r.id || '')}</span> ${r.passwordEnabled ? '<span class="jc-room-lock">🔒 пароль</span>' : ''}</span>
        <span>Хост: ${esc(r.ownerName || 'User')}</span>
        <span>${esc(r.source?.title || 'Источник не выбран')}</span>
      </div>
      <div class="jc-room-card-actions">
        <button class="btn soft" data-copy type="button">Код</button>
        <button class="btn primary" data-join type="button">Войти</button>
      </div>
    `;

    card.querySelector('[data-copy]').onclick = async (e) => {
      e.stopPropagation();
      await navigator.clipboard?.writeText(r.id || '').catch(()=>{});
      jc185Toast('Код комнаты скопирован');
    };

    card.querySelector('[data-join]').onclick = () => joinRoom(r.id);
    els.publicRoomsList.appendChild(card);
  });
};

const jc185OldJoinRoom = joinRoom;
joinRoom = async function(id){
  const r = await jc185OldJoinRoom(id);
  setTimeout(jc185RoomActiveSync, 120);
  return r;
};

const jc185OldCreateRoom = createRoom;
createRoom = async function(){
  const r = await jc185OldCreateRoom();
  setTimeout(jc185RoomActiveSync, 160);
  return r;
};

const jc185OldLeaveRoom = leaveRoom;
leaveRoom = async function(clear=true){
  const r = await jc185OldLeaveRoom(clear);
  setTimeout(jc185RoomActiveSync, 120);
  return r;
};

function jc185Patch(){
  jc185RebuildLobby();
  jc185RoomActiveSync();

  setInterval(() => {
    jc185RebuildLobby();
    jc185RoomActiveSync();
  }, 1200);

  console.log('JustClover Stage 18.5 lobby cleanup active: stage18-5-lobby-cleanup-20260501-1');
}

setTimeout(jc185Patch, 1600);


/* =========================================================
   JustClover Stage 18.6 HARD Lobby Cleanup JS
   Version: stage18-6-lobby-hardcleanup-20260501-1
   ========================================================= */

function jc186Toast(text){
  if(typeof jcStage5Toast === 'function') jcStage5Toast(text);
  else status?.(els?.roomStatus, text);
}

function jc186HideOldLobbyButtons(){
  ['copyInviteBtn','openRoomBtn','closeRoomBtn','publicRoomBtn','inviteRoomBtn'].forEach(id => {
    const el = document.getElementById(id);
    if(el) {
      el.classList.add('jc-hard-hidden');
      el.style.display = 'none';
    }
  });
}

function jc186EnsureStrip(){
  let strip = document.querySelector('.jc-current-room-strip');
  if(strip) return strip;

  strip = document.createElement('div');
  strip.className = 'jc-current-room-strip';
  strip.innerHTML = `
    <div class="jc-current-room-main">
      <strong data-current-room-title>Комната</strong>
      <span data-current-room-meta>Код: —</span>
    </div>
    <button class="btn soft" type="button" data-lobby-invite>Invite</button>
    <button class="btn primary" type="button" data-lobby-watch>К плееру</button>
  `;

  const anchor =
    els?.roomStatus ||
    document.querySelector('#roomStatus') ||
    document.querySelector('#joinRoomInput')?.parentElement ||
    document.querySelector('#createRoomBtn');

  if(anchor) anchor.insertAdjacentElement('beforebegin', strip);
  else document.querySelector('#homeSection')?.appendChild(strip);

  strip.querySelector('[data-lobby-invite]').onclick = () => {
    if(!currentRoomId){
      jc186Toast('Сначала создай комнату');
      return;
    }
    if(typeof jcStage5OpenInviteModal === 'function') jcStage5OpenInviteModal();
    else document.getElementById('copyInviteBtn')?.click();
  };

  strip.querySelector('[data-lobby-watch]').onclick = () => section('watchSection');

  return strip;
}

function jc186SyncStrip(){
  document.body.classList.toggle('room-active', !!currentRoomId);
  const strip = jc186EnsureStrip();
  const name = currentRoom?.name || currentRoomId || 'Комната';
  const code = currentRoomId || 'нет';
  const lock = currentRoom?.passwordEnabled ? ' · пароль' : '';
  const mode = currentRoom
    ? `${currentRoom.visibility === 'open' ? 'открыта' : 'закрыта'} · ${currentRoom.joinMode === 'public' ? 'публичная' : 'по ссылке'}${lock}`
    : 'комната не создана';

  strip.querySelector('[data-current-room-title]').textContent = name;
  strip.querySelector('[data-current-room-meta]').textContent = `Код: ${code} · ${mode}`;
}

function jc186RearrangeLobby(){
  const adv = document.querySelector('.jc-room-advanced');
  const joinInput = document.getElementById('joinRoomInput');
  const joinBtn = document.getElementById('joinRoomBtn');
  const joinPass = document.getElementById('jcJoinRoomPassword');
  const createBtn = document.getElementById('createRoomBtn');
  const inviteQuick = document.getElementById('jcQuickInviteBtn');

  if(inviteQuick){
    inviteQuick.classList.add('jc-room-invite-quick');
    inviteQuick.textContent = 'Invite';
  }

  if(adv && createBtn && adv.nextElementSibling !== createBtn){
    adv.insertAdjacentElement('afterend', createBtn);
  }

  if(joinInput && joinBtn && joinPass){
    const row = joinInput.parentElement;
    row.classList.add('jc-join-clean-row');
    if(joinPass.parentElement !== row){
      row.insertBefore(joinPass, joinBtn);
    }
    joinInput.placeholder = 'Код комнаты или invite-ссылка';
    joinPass.placeholder = 'Пароль, если есть';
  }
}

const jc186OldRenderRooms = renderRooms;
renderRooms = function(rooms){
  jc186OldRenderRooms(rooms);
  // Добавляем копирование кода, если карточки ещё старые.
  document.querySelectorAll('#publicRoomsList .room-card').forEach(card => {
    if(card.querySelector('[data-copy-room-code]')) return;
    const badge = card.querySelector('.jc-room-code-badge');
    const code = badge?.textContent?.trim();
    const joinButton = card.querySelector('button');
    if(!code || !joinButton) return;

    const copy = document.createElement('button');
    copy.type = 'button';
    copy.className = 'btn soft';
    copy.dataset.copyRoomCode = '1';
    copy.textContent = 'Код';
    copy.onclick = async (e) => {
      e.stopPropagation();
      await navigator.clipboard?.writeText(code).catch(()=>{});
      jc186Toast('Код комнаты скопирован');
    };
    joinButton.insertAdjacentElement('beforebegin', copy);
  });
};

function jc186Patch(){
  jc186HideOldLobbyButtons();
  jc186RearrangeLobby();
  jc186SyncStrip();

  if(!document.querySelector('.jc-lobby-version-dot')){
    const d = document.createElement('div');
    d.className = 'jc-lobby-version-dot';
    document.body.appendChild(d);
  }

  setInterval(() => {
    jc186HideOldLobbyButtons();
    jc186RearrangeLobby();
    jc186SyncStrip();
  }, 700);

  console.log('JustClover Stage 18.6 HARD lobby cleanup active: stage18-6-lobby-hardcleanup-20260501-1');
}

setTimeout(jc186Patch, 700);
