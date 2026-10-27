# Skeet — исправления окон настроек и World, Legacy 8802

Эта сборка заменяет Skeet_CS2_Interface_8802 (b14d60b). DLL и инжектор находятся в bin/, полный проект — в source/.

1. Распакуйте архив целиком. Замените старую skeet.dll; для применения нужен новый запуск игры с этой DLL.
2. Запустите bin/injector.exe. Он запускает установленную CS:GO Legacy x86 и загружает соседнюю skeet.dll. При нестандартном пути: injector.exe --game "D:\SteamLibrary\steamapps\common\Counter-Strike Global Offensive\csgo.exe".
3. Шестерёнки Ragebot открывают маленькие окна поверх основных панелей. Бинды и дополнительные параметры находятся внутри них.
4. Visuals → Enemy: Bounding box, Name, Health bar, Ammo, Skeleton, Weapon icon/text, Distance, Flags и Money перенесены в шестерёнку Enemy ESP preview. Там же редактируются доступные цвета RGBA. Расположение флагов перетаскивается в превью и применяется в игре.
5. Visuals → категория с глобусом → World effects: Night mode с интенсивностью и цветами мира/объектов, Override sky, Sky color, Override lighting, Override fog. Для Custom укажите имя установленного Source 1 skybox без расширения.
6. Skins → Model customization → Stickers: выберите оружие в штатном Weapon skin, затем слот и наклейку. Четыре слота Legacy, поиск, wear/scale/rotation. None удаляет наклейку. Предмет синхронизируется с локальным инвентарём автоматически; отдельная страница Local inventory не нужна.
7. MISC → Miscellaneous → CS2 watermark / CS2 logs. В watermark доступны CPU usage, частота CPU, RAM и память игры.

Исправлено имя внутреннего Lua-модуля: прежняя ошибка module 'clover_cs2_ui_8802.lua' not found мешала появлению наклеек, World и Misc. Теперь физический файл записывается с .lua, а загрузчику передаётся имя без расширения. Ручная загрузка Lua не требуется. При ошибке инициализации World/наклеек в соответствующей вкладке появляется надпись с указанием проверить консоль.

Сборка Windows x86 и закрытые проверки пройдены. Проверены настоящий поиск require в LuaJIT, порядок отправки окон, перенос ESP с сохранением исходных моделей и callbacks, ограниченное обновление материалов Night mode. Живой игровой запуск и GPU-совпадение 1:1 в этой среде не проверялись. Подробности — OVERLAY_WORLD_FIX_RU.md и reports/.

Стрельба, resolver, hitscan, DT, предикт, синхронизация предметов и код инжектора сохранены из b14d60b. Extropolate остаётся удалённым и выключенным. Инвентарь клиентский локальный; Steam-предметы не выдаются. Новых skybox-текстур в архиве нет: Custom использует установленные шесть материалов Source 1. Исторические документы описывают предыдущие версии.
