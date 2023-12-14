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
        body: Center(
          child: Container(
            color: Color.fromRGBO(29, 209, 254, 1),
            height: 300,
            width: 300,
          ),
        ),
      ),
    );
  }
}
