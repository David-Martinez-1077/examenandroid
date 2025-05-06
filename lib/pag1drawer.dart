import 'package:flutter/material.dart';
import 'package:examen_botones_con_rutas/page/first_page.dart';
import 'package:examen_botones_con_rutas/page/second_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        elevation: 0,
        title: const Text("D R A W E R"),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple[100],
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: Text(
                    "L O G O",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Page 1"),
                onTap: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const FirstPage()),
                  ),
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Page 2"),
                onTap: () => {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  ),
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 100),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context, '/');
              },
              child: const Text(
                'Pantalla inicial',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
      endDrawer: const Drawer(),
    );
  }
}
