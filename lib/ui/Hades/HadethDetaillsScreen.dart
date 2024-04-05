import 'package:flutter/material.dart';
import 'package:islami_app_v1/ui/Hades/hades_tab.dart';

class HadethScreen extends StatefulWidget {
  static const String routeName = 'HadethDetaillsScreen';

  @override
  State<HadethScreen> createState() => _HadethScreen();
}

class _HadethScreen extends State<HadethScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Had;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/back_ground_light.png'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(title: Text(args.title)),
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: MediaQuery.of(context).size.height * 0.06),
          decoration: BoxDecoration(
              color: Colors.white70, borderRadius: BorderRadius.circular(25)),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Text(
                args.content[index],
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              );
            },
            itemCount: args.content.length,
          ),
        ),
      ),
    );
  }
}
