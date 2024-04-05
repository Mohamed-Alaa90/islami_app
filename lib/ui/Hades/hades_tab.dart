import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_v1/ui/Hades/HadethName.dart';

class HadesTab extends StatefulWidget {

  @override
  State<HadesTab> createState() => _HadesTabState();
}

class _HadesTabState extends State<HadesTab> {
  List<Had> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    if (ahadethList.isEmpty) {
      loadFile();
    }
    return Column(
      children: [
        Image.asset(
          'assets/images/hadeth_logo.png',
          height: height * 0.3,
        ),
        const Divider(
          thickness: 2,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: const Color(0xffB7935F),
          ),
          child: Text('Hadeth Name',
              style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const Divider(
          thickness: 2,
        ),
        ahadethList.isEmpty
            ? const Center(child: CircularProgressIndicator())
            : Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const Divider(),
                  itemBuilder: (context, index) {
                    return ItemHadethName(hadeth: ahadethList[index]);
                  },
                  itemCount: ahadethList.length,
                ),
        ),
      ],
    );
  }

  void loadFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethList = content.split('#\r\n');
    for (int i = 0; i < hadethList.length; i++) {
      List<String> hadethLiens = hadethList[i].split('\n');
      String title = hadethLiens[0];
      hadethLiens.removeAt(0);
      Had hadeth = Had(title: title, content: hadethLiens);
      ahadethList.add(hadeth);
      setState(() {});
    }
  }
}

class Had {
  String title;
  List<String> content;

  Had({required this.title, required this.content});
}
