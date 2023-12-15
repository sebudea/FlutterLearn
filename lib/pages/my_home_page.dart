import 'package:curso_flutter/pages/second_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController nameTextController;

  late TextEditingController lastNameTextController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso basico del navigator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: "Nombre:"),
              controller: nameTextController,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Apellido:"),
              controller: lastNameTextController,
            ),
            OutlinedButton(
                onPressed: () {
                  _showSecondPage(context);
                },
                child: Text("Mostrar segunda pantalla")),
          ],
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    Navigator.of(context).pushNamed("/second",
        arguments: SecondPageArguments(
            name: nameTextController.text,
            lastName: lastNameTextController.text));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameTextController = TextEditingController();

    lastNameTextController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nameTextController.dispose();
    lastNameTextController.dispose();
  }
}
