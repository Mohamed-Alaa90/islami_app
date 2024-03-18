import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:islami_app_v1/home/Home_Screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash-screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.popAndPushNamed(context, HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/splash_screen.png',
      fit: BoxFit.fill,
    );
  }
}
