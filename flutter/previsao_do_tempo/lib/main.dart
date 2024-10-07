import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Previsão do tempo",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: LayoutResponsivo());
  }
}

class LayoutResponsivo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Previsão do tempo')),
        body: LayoutBuilder(builder: (context, constraints) {
          return constraints.maxWidth <= 768
              ? MobileLayout()
              : const Text("data");
        }));
  }
}

class MobileLayout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MobileLayoutState();
  }
}

class MobileLayoutState extends State<MobileLayout> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
            child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.5,
                color: Colors.red,
                children: [
                  TextField(),
                  ElevatedButton();
                ]
      ],
    );
  }
}
