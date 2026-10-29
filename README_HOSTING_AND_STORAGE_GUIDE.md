# Riverston Group Trip Planner & Firebase Cloud Tracker (Jan 15–17, 2027)
**Pre-Configured for Firebase Project `trip-temp-1676a` · Full Source Code & Hosting Guide**

---

## 1. Your Firebase Configuration Is Already Built Into `index.html`

Your exact Firebase project credentials (`projectId: "trip-temp-1676a"`, `appId: "1:543758011138:web:80d71a64bab4af27df101b"`) are embedded directly inside `index.html` using the official Firebase JS SDK (`v10.14.1`):

```javascript
const firebaseConfig = {
  apiKey: "AIzaSyDdy_NlMp4vm2NNkg2WQBqyDUqdSE2FvmA",
  authDomain: "trip-temp-1676a.firebaseapp.com",
  databaseURL: "https://trip-temp-1676a-default-rtdb.firebaseio.com",
  projectId: "trip-temp-1676a",
  storageBucket: "trip-temp-1676a.firebasestorage.app",
  messagingSenderId: "543758011138",
  appId: "1:543758011138:web:80d71a64bab4af27df101b",
  measurementId: "G-HCX30F0867"
};
```

### One-Time Step in Your Firebase Console (`trip-temp-1676a`):
To allow all 5 friends' phones (**Sahan, Muthumala, Hasanka, Senal, and Sameera**) to read and write to your `trip-temp-1676a` cloud database:
1. Open your project `trip-temp-1676a` in the [Firebase Console](https://console.firebase.google.com/).
2. In the left sidebar, click **Build → Firestore Database** (or **Build → Realtime Database**).
3. Click **Create Database**, choose **Start in test mode**, and click **Create / Enable**.
   - **If you enabled Firestore Database:** Your app automatically syncs in real time with the `riverston_trip/state_2027` document (`onSnapshot` live listener included!).
   - **If you enabled Realtime Database:** Your app automatically syncs with `/riverston_trip_2027.json`. (If your Realtime Database URL is in a regional domain like `https://trip-temp-1676a-default-rtdb.asia-southeast1.firebasedatabase.app`, paste that URL into the **Cloud & Backup** box in the app and click **Save URL & Push to Cloud ↑**).

---

## 2. How to Host Your Full Website for Free

### Option A: Firebase Hosting (Using Your `trip-temp-1676a` Project)
Since you already created `trip-temp-1676a`, you can host the site directly on `https://trip-temp-1676a.web.app`:
```bash
npm install -g firebase-tools
firebase login
firebase init hosting   # Select existing project: trip-temp-1676a, public directory: .
firebase deploy --only hosting
```

### Option B: Netlify Drag-and-Drop (Zero Commands — 60 Seconds)
1. Go to [Netlify](https://www.netlify.com/) and sign in for free.
2. Drag and drop this unzipped folder onto the **Sites** page.
3. Share the generated HTTPS link in your friends' WhatsApp group!

### Option C: GitHub Pages (100% Free)
1. Create a public repository on [GitHub](https://pages.github.com/) and upload `index.html`.
2. Go to **Settings → Pages**, select `main` branch, and click **Save**.
