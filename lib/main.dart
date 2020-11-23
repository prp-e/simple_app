import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialApp(
        title: 'Simple App',
        theme: ThemeData(primaryColor: Colors.green[500]),
        home: Scaffold(
            appBar: AppBar(title: Text("A simple app!")),
            body: Center(
              child: Text("This is my app!"),
            )));
  }
}
