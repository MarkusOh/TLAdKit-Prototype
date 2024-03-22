import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainContents extends StatelessWidget {
  const MainContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 50), child: TabBarView(children: [
      AdContentsView(),
      Text("Love comes and stays"),
    ]),);
  }
}

class AdContentsView extends StatelessWidget {
  const AdContentsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Text("Good boy 1"),
        const Text("Good boy 2"),
        SizedBox(child: UiKitView(viewType: "TLAdKit-Type", creationParams: "Area-1", creationParamsCodec: StandardMessageCodec(),), height: 100,),
        SizedBox(child: UiKitView(viewType: "TLAdKit-Type", creationParams: "Area-2", creationParamsCodec: StandardMessageCodec(),), height: 100,),
        SizedBox(child: UiKitView(viewType: "TLAdKit-Type", creationParams: "Area-3", creationParamsCodec: StandardMessageCodec(),), height: 100,),
        SizedBox(child: UiKitView(viewType: "TLAdKit-Type", creationParams: "Area-4", creationParamsCodec: StandardMessageCodec(),), height: 100,),
        SizedBox(child: UiKitView(viewType: "TLAdKit-Type", creationParams: "Area-5", creationParamsCodec: StandardMessageCodec(),), height: 100,),
        SizedBox(child: UiKitView(viewType: "TLAdKit-Type", creationParams: "Area-6", creationParamsCodec: StandardMessageCodec(),), height: 100,),
        SizedBox(child: UiKitView(viewType: "TLAdKit-Type", creationParams: "Area-7", creationParamsCodec: StandardMessageCodec(),), height: 100,),
        SizedBox(child: UiKitView(viewType: "TLAdKit-Type", creationParams: "Area-8", creationParamsCodec: StandardMessageCodec(),), height: 100,),
      ],
    );
  }
}