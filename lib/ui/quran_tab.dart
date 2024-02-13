import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Image.asset('assets/images/quran_hedar_image.png'),
        const Divider(
          color: Color(0xffB7935F),
        ),
        Expanded(child:ListView(
          children: [],
        ) )
      ]),
    );
  }
}
