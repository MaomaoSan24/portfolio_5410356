
// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:flutter/material.dart';

const FirebaseOptions firebaseOptions = FirebaseOptions(
  apiKey: "AIzaSyDVT_O2K0TcMJmIA1-2tydjwTMXhChGyBE",
  authDomain: "praktikumsblatt3-9fa26.firebaseapp.com",
  projectId: "praktikumsblatt3-9fa26",
  storageBucket: "praktikumsblatt3-9fa26.appspot.com",
  messagingSenderId: "373499303449",
  appId: "1:373499303449:web:f916e0255bc996a7f4fc88",
);

Future<void> initializeDefault() async {
  await Firebase.initializeApp(
    options: firebaseOptions,
  );
}