import 'package:flutter/material.dart';
import 'package:islami_app_v1/home/Home_Screen.dart';
import 'package:islami_app_v1/splash_screen/splash_screen.dart';
import 'package:islami_app_v1/My_Theme.dart';
import 'package:islami_app_v1/ui/Quran/SuraScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute:SplashScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraScreen.routeName:(context) => SuraScreen(),
        SplashScreen.routeName :(context) => SplashScreen(),
      },
    );
  }
}
