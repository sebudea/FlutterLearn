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
            title: const Text("Esto es un Appbar"),
          ),
          body: Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Text(
              "-----",
              style: TextStyle(backgroundColor: Colors.black, fontSize: 60),
            ),
          )),
    );
  }
}
