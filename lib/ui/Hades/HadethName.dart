import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app_v1/ui/Hades/hades_tab.dart';
import 'package:islami_app_v1/ui/Quran/SuraDetaillsScreen.dart';

import 'HadethDetaillsScreen.dart';

class ItemHadethName extends StatelessWidget {
  Had hadeth ;
  ItemHadethName({super.key, required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethScreen.routeName,
            arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        style: Theme.of(context).textTheme.titleMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}