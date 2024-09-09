import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<App> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int numeroImagens = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Flutter"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Agora no arquivo app.dart');
            setState(() => numeroImagens++);
          },
          child: const Icon(Icons.add),
        ),
        body: Center(child: (Text("$numeroImagens", style: const TextStyle(fontSize: 50)))),
      ),
    );
  }
}
