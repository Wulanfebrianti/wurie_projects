import 'dart:async';
<<<<<<< HEAD
import 'package:chata/screen/login_signup.dart';
import 'package:flutter/material.dart';

=======
import 'package:flutter/material.dart';

import 'home_page.dart';
>>>>>>> 54cec9e91987500f6a3fbceb1993ef331a990bfd

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    timerSS();
  }

  //timer
  timerSS() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return LoginSignupScreen();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/Logo/chata.png',
                width: 300,
                height: 300,
              ),
            ],
          )),
    );
  }
}
