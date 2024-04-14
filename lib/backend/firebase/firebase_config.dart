import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC8MJailW3WFcEFy2Yq9TEqgHfGDsSs5lg",
            authDomain: "pluggedin24-1cb3f.firebaseapp.com",
            projectId: "pluggedin24-1cb3f",
            storageBucket: "pluggedin24-1cb3f.appspot.com",
            messagingSenderId: "634488757300",
            appId: "1:634488757300:web:0ca70eb3ac61f0f59a3e61"));
  } else {
    await Firebase.initializeApp();
  }
}
