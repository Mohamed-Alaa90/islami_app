import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //double width = MediaQuery.of(context).size.width*;
    double height = MediaQuery.of(context).size.height*.2;
    return   Center(
        child: Stack(children: [
          Column(
            children: [
              SizedBox(
                height: height,
              ),
               const Image(
                image: AssetImage('assets/images/radio_image.png'),
              ),
               Text('اذاعه القران الكريم',
                  style: Theme.of(context).textTheme.titleMedium),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.1,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      child: Image(
                          image:
                              AssetImage('assets/images/Icon-radio-lift.png'))),
                  SizedBox(
                    width: 35,
                  ),
                  InkWell(
                      child: Image(
                          image:
                              AssetImage('assets/images/Icon-center-play.png'))),
                  SizedBox(
                    width: 30,
                  ),
                  InkWell(
                      child: Image(
                          image:
                              AssetImage('assets/images/Icon-radio-next.png'))),
                ],
              ),
            ],
          ),
        ]));
  }
}
