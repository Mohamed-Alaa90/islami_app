import 'package:flutter/material.dart';

class SettingTab extends StatefulWidget {
  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.expand_circle_down_outlined,
                opticalSize: 25,
                color: Colors.black,
              ),
            )
          ],
        )
      ],
    );
  }
}
