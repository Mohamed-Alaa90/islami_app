import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;
  double angle = 0;
  int index = 0;
  List<String> doaa = [
    'سبحان الله',
    'الحمدلله',
    'الله اكبر',
    'لا اله الا الله',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/head of seb7a.png',
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
              ),
            ),
            GestureDetector(
              onTap: counterMethod,
              child: Transform.rotate(
                angle: angle,
                child: Padding(
                  padding: const EdgeInsets.all(75.0),
                  child: Align(
                      alignment: Alignment.center,
                      child: Image.asset('assets/images/body of seb7a.png')),
                ),
              ),
            ),
          ],
        ),
        Text(
          'عدد التسبيحات',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xcbb7935f).withOpacity(.60)),
          child: Text(counter.toString(),
              style: Theme.of(context).textTheme.titleMedium),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xffB7935F)),
          child:
              Text(doaa[index], style: Theme.of(context).textTheme.titleMedium),
        ),
      ],
    );
  }

  void counterMethod() {
    angle += 1;
    if (counter == 33) {
      counter = 0;
      if (index < doaa.length - 1) {
        index++;
      } else {
        index = 0;
      }
    } else {
      counter++;
    }
    setState(() {});
  }
}
