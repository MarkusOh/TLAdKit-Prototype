import 'package:flutter/material.dart';

class MainContents extends StatelessWidget {
  const MainContents({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text("Good boy 1"),
        const Text("Good boy 2"),
        SizedBox(child: UiKitView(viewType: "TLAdKit-Type"), height: 100,),
        SizedBox(child: UiKitView(viewType: "TLAdKit-Type"), height: 100,),
        SizedBox(child: UiKitView(viewType: "TLAdKit-Type"), height: 100,),
        SizedBox(child: UiKitView(viewType: "TLAdKit-Type"), height: 100,),
        SizedBox(child: UiKitView(viewType: "TLAdKit-Type"), height: 100,),
        SizedBox(child: UiKitView(viewType: "TLAdKit-Type"), height: 100,),
        SizedBox(child: UiKitView(viewType: "TLAdKit-Type"), height: 100,),
        SizedBox(child: UiKitView(viewType: "TLAdKit-Type"), height: 100,),
      ],
    );
  }
}