import 'package:flutter/material.dart';
import 'package:tl_adkit_prototype/main_contents.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MainContents(),
        ),
      ),
    );
  }
}