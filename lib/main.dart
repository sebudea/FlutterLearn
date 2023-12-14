import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Esto es un Appbar"),
          actions: <Widget>[
            IconButton(
              onPressed: _add,
              icon: Icon(Icons.add),
            ),
            IconButton(
              onPressed: _add,
              icon: Icon(Icons.remove),
            ),
          ],
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          leading: IconButton(
            onPressed: _add,
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Center(),
      ),
    );
  }

  void _add() {
    print("hola");
  }
}
