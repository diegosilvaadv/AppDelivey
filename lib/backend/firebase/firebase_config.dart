import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDrZxih5jqmBztTI2oW8fJ6weOq_dcgYPg",
            authDomain: "shareeatapp-ad1b2.firebaseapp.com",
            projectId: "shareeatapp-ad1b2",
            storageBucket: "shareeatapp-ad1b2.appspot.com",
            messagingSenderId: "635822721339",
            appId: "1:635822721339:web:538ae77a32239da3460f1e"));
  } else {
    await Firebase.initializeApp();
  }
}
