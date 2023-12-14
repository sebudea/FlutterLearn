import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<String> names = [
    "Juan",
    "Wiliam",
    "Samanta",
    "Juan",
    "Wiliam",
    "Samanta",
    "Juan",
    "Guille",
    "Samanta",
    "Juan",
    "Wiliam",
    "Samanta",
    "Juan",
    "Wiliam",
    "Samanta"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Esto es un Appbar"),
        ),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            final name = names[index];
            return ListTile(
              title: Text(name),
              leading: Icon(Icons.person),
              onTap: () {
                print(name);
              },
            );
          },
        ),
      ),
    );
  }
}
