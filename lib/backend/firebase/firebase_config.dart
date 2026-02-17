import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC_CqEBO6guPpSkoIjELk6OkL0FvH0eXSM",
            authDomain: "packagebreakfast.firebaseapp.com",
            projectId: "packagebreakfast",
            storageBucket: "packagebreakfast.firebasestorage.app",
            messagingSenderId: "445967960597",
            appId: "1:445967960597:web:0f62cf08e5336353d51c1c",
            measurementId: "G-4KPM2BYNDH"));
  } else {
    await Firebase.initializeApp();
  }
}
