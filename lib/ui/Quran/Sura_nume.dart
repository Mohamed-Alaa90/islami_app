import 'package:flutter/material.dart';
import 'package:islami_app_v1/ui/Quran/SuraScreen.dart';

class SuraName extends StatelessWidget {
  String suraTitle;

  SuraName({required this.suraTitle});

  @override
  Widget build(BuildContext context) {
    return
       InkWell(
         onTap: () {
           Navigator.pushNamed(context, SuraScreen.routeName);
         },
         child: Container(
            alignment: Alignment.center,
            child: Text(
                suraTitle,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),

             ),
       );
  }
}
