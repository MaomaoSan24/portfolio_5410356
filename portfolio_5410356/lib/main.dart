import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:portfolio_5410356/main.dart';
import 'package:portfolio_5410356/profile_page.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColorDark: Colors.white,
        fontFamily: "GoogleSansRegular",
      ),
      home: const ProfilePage(),
    );
  }
}