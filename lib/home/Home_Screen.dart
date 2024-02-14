import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app_v1/ui/quran_tab/quran_tab.dart';
import 'package:islami_app_v1/ui/radio_tab/radio_tab.dart';
import 'package:islami_app_v1/ui/sebha_tab/sebha_tab.dart';

import '../ui/hades_tab/hades_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home-screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> screenTab = [QuranTab(), HadesTab(), RadioTab(), SebhaTab()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/back_ground_light.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        body: screenTab[selectedIndex],
        appBar: AppBar(
            title: const Text(
          'Islami',
        )),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                selectedIndex = index;
              });
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(AssetImage('assets/images/quran.png')),
                  label: 'Quran'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(AssetImage('assets/images/hades.png')),
                  label: 'Hades'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(
                      AssetImage('assets/images/sebha_blue.png')),
                  label: 'Sebha'),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: const ImageIcon(AssetImage('assets/images/radio.png')),
                  label: 'Radio'),
            ]),
      ),
    );
  }
}
