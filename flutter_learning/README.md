# StudentHub – Hostel Issue Tracker (Flutter + Firebase)

## Problem Statement
College hostel residents face delays when reporting mess issues, maintenance requests, or facility complaints due to outdated manual systems. This app digitizes and streamlines issue reporting and resolution using Firebase.

---

## Features
- Student login/signup with email & password (Firebase Authentication)
- Submit complaints (mess, maintenance, facility)
- Track issue status: pending, in-progress, resolved (Cloud Firestore)
- Real-time updates: all students see changes instantly
- (Optional) Upload images of issues (Firebase Storage)

---

## Firebase Setup Steps
1. Go to [Firebase Console](https://console.firebase.google.com/), create a project.
2. Register your Android app, download `google-services.json`, and place it in `android/app/`.
3. In `pubspec.yaml`, add:
   - firebase_core
   - firebase_auth
   - cloud_firestore
   - firebase_storage (optional)
4. Run `flutter pub get`.
5. In `main.dart`, initialize Firebase:
   ```dart
   void main() async {
     WidgetsFlutterBinding.ensureInitialized();
     await Firebase.initializeApp();
     runApp(MyApp());
   }
   ```

---

## How It Works
- **Authentication:** Students sign up/log in with email & password.
- **Firestore:** Complaints are stored with status. All changes sync in real-time.
- **Storage:** (Optional) Images of issues are uploaded and linked to complaints.

---

## How Firebase Enhances the App
- **Scalability:** Handles many users and complaints without manual work.
- **Real-Time:** All students see updates instantly—no more waiting for notice boards or paper logs.
- **Reliability:** Data is safely stored in the cloud and always available.

---

## Case Study: “The Hostel Complaint That Wouldn’t Sync”
Before: Students wrote complaints on paper. Sometimes, issues were lost or not seen by staff, causing delays.

After: With Firebase, every complaint is instantly visible to all. If a mess issue is reported, staff and students see it in real-time, and status updates are immediate. No more lost complaints or waiting for updates!

---

## Video Script (3–5 min)
1. Show student login/signup.
2. Demonstrate submitting a complaint and seeing it update in real-time.
3. Explain: “Firebase Authentication keeps our accounts secure, Firestore stores and syncs all complaints, and Storage lets us upload images. This removes manual delays and makes issue tracking fast and reliable for all hostel residents.”

---

Happy learning! 🎓