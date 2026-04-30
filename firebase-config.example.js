// 1) Создай Firebase project.
// 2) Project settings → Your apps → Web app → скопируй firebaseConfig.
// 3) Замени значения ниже.
// Этот config публичный по задумке Firebase; безопасность задаётся rules в Realtime Database.

export const firebaseConfig = {
  apiKey: "PASTE_API_KEY",
  authDomain: "PASTE_PROJECT.firebaseapp.com",
  databaseURL: "https://PASTE_PROJECT-default-rtdb.europe-west1.firebasedatabase.app",
  projectId: "PASTE_PROJECT",
  storageBucket: "PASTE_PROJECT.appspot.com",
  messagingSenderId: "PASTE_SENDER_ID",
  appId: "PASTE_APP_ID"
};
