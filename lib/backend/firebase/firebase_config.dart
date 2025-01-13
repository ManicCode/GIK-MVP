import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCbtNS8S0ijEayRIYrWrvLlp9p1ggKzwdc",
            authDomain: "gikmvp.firebaseapp.com",
            projectId: "gikmvp",
            storageBucket: "gikmvp.appspot.com",
            messagingSenderId: "371924098824",
            appId: "1:371924098824:web:38f5c38af46a3bdf6896bd"));
  } else {
    await Firebase.initializeApp();
  }
}
