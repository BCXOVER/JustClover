JustClover auth/cache fix
Версия: authcachefix-20260501-4

Проблема:
index.html уже новый, но браузер мог закэшировать старый/пустой app.js, потому что ссылка на скрипт не поменялась.

Что делать:
1. Загрузи ВСЁ содержимое этого архива в корень GitHub-репозитория с заменой:
   index.html
   style.css
   app.js
   service-worker.js
   themes/
2. Commit changes.
3. Открой сайт так:
   https://bcxover.github.io/JustClover/?v=authcachefix-20260501-4
4. Нажми Ctrl + F5.
5. Если всё равно не входит через Google:
   - открой DevTools → Application → Storage → Clear site data;
   - затем снова Ctrl + F5.

Проверка:
Открой DevTools → Console. Там должно быть:
JustClover auth/cache fix loaded: authcachefix-20260501-4
Если этой строки нет — браузер всё ещё грузит старый app.js.
