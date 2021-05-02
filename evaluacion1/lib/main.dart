import 'package:evaluacion1/pages/about.dart';
import 'package:evaluacion1/pages/integrantes.dart';
import 'package:evaluacion1/pages/lista.dart';
import 'package:evaluacion1/pages/login.dart';
import 'package:evaluacion1/pages/producto.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App?',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => Login(),
        '/lista': (context) => Lista(),
        '/about': (context) => About(),
        '/integrantes': (context) => Integrantes(),
        '/producto': (context) => Producto()
      }
    );
  }
}