import 'package:curso_flutter/pages/second_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late String nameValue;
  late String lastNameValue;

  late TextEditingController nameController;
  late TextEditingController lastNameController;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uso basico del navigator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(labelText: "Nombre:"),
                onSaved: (value) {
                  nameValue = value ?? "";
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Llene este campo";
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: lastNameController,
                decoration: InputDecoration(labelText: "Apellido:"),
                onSaved: (value) {
                  lastNameValue = value ?? "";
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Llene este campo";
                  }
                  return null;
                },
              ),
              OutlinedButton(
                  onPressed: () {
                    _showSecondPage(context);
                  },
                  child: Text("Mostrar segunda pantalla")),
              Container(
                height: 1000,
                width: 20,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      Navigator.of(context).pushNamed("/second",
          arguments:
              SecondPageArguments(name: nameValue, lastName: lastNameValue));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nameController = TextEditingController(text: "Marv");
    lastNameController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    lastNameController.dispose();
  }
}
