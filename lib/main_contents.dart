import 'package:flutter/material.dart';

class MainContents extends StatelessWidget {
  const MainContents({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Text("Good boy 1"),
        Text("Good boy 2"),
      ],
    );
  }
}