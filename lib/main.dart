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
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.orange,
                height: 100,
                width: 100,
              ),
              Text("Hola, estoy en un container"),
              Text("Hola, estoy en un container"),
              Text("Hola, estoy en un container"),
            ],
          ),
        ),
      ),
    );
  }
}
