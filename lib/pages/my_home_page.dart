import 'package:curso_flutter/pages/second_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso basico del navigator"),
      ),
      body: Center(
        child: OutlinedButton(
            onPressed: () {
              _showSecondPage(context);
            },
            child: Text("Mostrar segunda pantalla")),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    Navigator.of(context).pushNamed("/second", arguments: SecondPageArguments(name: "Marvin", lastName: "Quevedo"));
  }
}

