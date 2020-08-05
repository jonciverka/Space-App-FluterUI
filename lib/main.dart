import 'package:espacio/src/pages/detalle_page.dart';
import 'package:espacio/src/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Espacio",
      initialRoute: '/',
      routes: {
        "/":(BuildContext context) => HomePage(),
        "detalle":(BuildContext context) => DetallePAge()
      },
    );
  }
}

