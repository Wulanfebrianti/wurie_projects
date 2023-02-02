
import 'package:chata/profile.dart';
import 'package:chata/screen/login_signup.dart';
import 'package:chata/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:chata/BotomNav/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chat UI',
      // home: LoginSignupScreen(),
      // home: SplashScreen(),
      // home: HomePage(),
      // home: MyNavBar(),
      home: ProfilePage(),
    );
  }
}


