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
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int count = 0;

  void _increase_counter() {
    setState(() {
      count++;
    });
  }

  void _resetCounter() {
    setState(() {
      count = 0;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful app!")),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("You pressed the button $count times!"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () {
                      _increase_counter();
                    },
                    backgroundColor: Colors.green[600],
                    child: Icon(Icons.plus_one),
                  ),
                  FloatingActionButton(
                      onPressed: () {
                        _resetCounter();
                      },
                      backgroundColor: Colors.green[600],
                      child: Icon(Icons.refresh)),
                ],
              )
            ]),
      ),
    );
  }
}
