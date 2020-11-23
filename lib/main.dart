import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Simple App',
        theme: ThemeData(primaryColor: Colors.green[500]),
        home: _HomePage();
  }
}

class HomePage extends StatefulWidget {
  @override 
  _HomePage createState() => _HomePage(); 
}

class _HomePage extends State<HomePage> {
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Center(child: Text("Text from a stateful widget!"),),
    );
  }
}