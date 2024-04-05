import 'package:flutter/material.dart';
import 'package:islami_app_v1/ui/Quran/SuraDetaillsScreen.dart';

class ItemSuraName extends StatelessWidget {
  String name;
  int index;

  ItemSuraName({super.key, required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetaillsScreen.routeName,
            arguments: SuraArgs(name: name, index: index));
      },
      child: Text(
        name,
        style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}

class SuraArgs {
  String name;
  int index;

  SuraArgs({required this.name, required this.index});
}
