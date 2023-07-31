import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAsTKpxj7Qk6qEor8cXdX9-xyLJcA-xNrc",
            authDomain: "glotek-20d1d.firebaseapp.com",
            projectId: "glotek-20d1d",
            storageBucket: "glotek-20d1d.appspot.com",
            messagingSenderId: "514880446663",
            appId: "1:514880446663:web:74ecde89d490a636b89ee2",
            measurementId: "G-D1EN9YJE6N"));
  } else {
    await Firebase.initializeApp();
  }
}
