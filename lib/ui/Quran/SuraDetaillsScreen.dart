import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_v1/ui/Quran/ItemSuraDetails.dart';
import 'package:islami_app_v1/ui/Quran/Sura_nume.dart';

class SuraDetaillsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetaillsScreen';

  @override
  State<SuraDetaillsScreen> createState() => _SuraDetaillsScreenState();
}

class _SuraDetaillsScreenState extends State<SuraDetaillsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (verses.isEmpty) {
      loadFileQuran(args.index);
    }
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/back_ground_light.png'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: const Text("بسم االله الرحمن الرحيم")),
        body: verses.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Container(
                margin: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.05,
                    vertical: MediaQuery.of(context).size.height * 0.06),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(25)),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ItemSuraDetails(content:verses[index],index: index,);
                  },
                  itemCount: verses.length,
                ),
              ),
      ),
    );
  }

  void loadFileQuran(int index) async {
    String content =
        await rootBundle.loadString('assets/files/Qran/${index + 1}.txt');
    List<String> suraLiens = content.split('\n');
    setState(() {
      verses = suraLiens;
    });
  }
}
