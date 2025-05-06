import 'package:flutter/material.dart';
import 'package:examen_botones_con_rutas/inicial.dart';
import 'package:examen_botones_con_rutas/pag1drawer.dart';
import 'package:examen_botones_con_rutas/pag2_textfield.dart';
import 'package:examen_botones_con_rutas/pag3_navigator.dart';
import 'package:examen_botones_con_rutas/pag5_stepper.dart';
import 'package:examen_botones_con_rutas/pag6_flexible.dart';
import 'package:examen_botones_con_rutas/pag7_physical_model.dart';
import 'package:examen_botones_con_rutas/pag8_indexed_stack.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre páginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const inicial(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const MyDrawer(),
        '/pantalla3': (context) => const MyTextField(),
        '/pantalla4': (context) => const MyNavigator(),
        '/pantalla5': (context) => const MyStepper(),
        '/pantalla6': (context) => const MyFlexible(),
        '/pantalla7': (context) => const MyPhysicalModel(),
        '/pantalla8': (context) => const MyIndexedStack(),
      },
    );
  }
}
