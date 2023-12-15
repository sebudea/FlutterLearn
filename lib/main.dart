import 'package:curso_flutter/pages/second_page.dart';
import 'package:flutter/material.dart';

import 'pages/my_home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: MyHomePage(),
      initialRoute: "/",
      routes: {
        "/": ((context) => MyHomePage()),
        "/second": ((context) => Secondpage()),
      },
    );
  }
}
