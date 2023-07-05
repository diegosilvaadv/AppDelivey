import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDSSQ7Z7wKJCD8FYXJHeS-6ziKnzn8nvBM",
            authDomain: "apppizzaria-5d7b3.firebaseapp.com",
            projectId: "apppizzaria-5d7b3",
            storageBucket: "apppizzaria-5d7b3.appspot.com",
            messagingSenderId: "211548454195",
            appId: "1:211548454195:web:f743198cc6b98989311246"));
  } else {
    await Firebase.initializeApp();
  }
}
