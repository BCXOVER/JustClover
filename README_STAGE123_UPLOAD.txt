JustClover Stage123 upload-ready

Что внутри:
- index.html
- app.js
- style.css
- service-worker.js
- package.json
- playwright.config.js
- tests/smoke.spec.js
- .github/workflows/browser-tests.yml

Build: stage123-rave-anime-room-customizer-20260503-1

После upload в GitHub открывай:
https://bcxover.github.io/JustClover/?v=stage123-rave-anime-room-customizer-20260503-1&t=1

Команда для сброса кеша в консоли браузера:
(async()=>{try{if('serviceWorker'in navigator){const r=await navigator.serviceWorker.getRegistrations();await Promise.all(r.map(x=>x.unregister()));}if('caches'in window){const k=await caches.keys();await Promise.all(k.map(x=>caches.delete(x)));}localStorage.removeItem('jc-last-build');sessionStorage.clear();location.href=location.origin+location.pathname+'?v=stage123-rave-anime-room-customizer-20260503-1&t='+Date.now();}catch(e){console.error(e);location.reload(true);}})();
