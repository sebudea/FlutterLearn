import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GestureDetector"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: _onTap,
              onLongPress: _onLongPress,
              child: Text(
                "Hola",
                style: TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onTap() {
    print("Hola");
  }

  void _onLongPress() {
    print("Se ha mantenido el click");
  }
}
