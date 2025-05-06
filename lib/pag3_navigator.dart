import 'package:flutter/material.dart';
import 'package:examen_botones_con_rutas/page/screen0.dart';
import 'package:examen_botones_con_rutas/page/screen1.dart';
import 'package:examen_botones_con_rutas/page/screen2.dart';

class MyNavigator extends StatelessWidget {
  const MyNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Screen0(),
        '/first': (context) => const Screen1(),
        '/second': (context) => const Screen2(),
      },
    );
  }
}
