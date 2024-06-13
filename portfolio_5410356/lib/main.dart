import 'package:flutter/material.dart';
import 'package:portfolio_5410356/profile_page.dart';

main() async{
// ignore: prefer_const_constructors
runApp(MyApp());
}

class MyApp extends StatelessWidget{

 const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColorDark: Colors.black,
        fontFamily: "GoogleSansRegular",
      ),
      // ignore: prefer_const_constructors
      home:  ProfilePage(),
    );
  }
}