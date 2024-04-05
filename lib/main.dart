import 'package:flutter/material.dart';
import 'package:islami_app_v1/home/Home_Screen.dart';
import 'package:islami_app_v1/splash_screen/splash_screen.dart';
import 'package:islami_app_v1/My_Theme.dart';
import 'package:islami_app_v1/ui/Hades/HadethDetaillsScreen.dart';
import 'package:islami_app_v1/ui/Quran/SuraDetaillsScreen.dart';

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
      initialRoute:HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetaillsScreen.routeName:(context) => SuraDetaillsScreen(),
        HadethScreen.routeName:(context) =>  HadethScreen(),
        SplashScreen.routeName :(context) => SplashScreen(),
      },
    );
  }
}
