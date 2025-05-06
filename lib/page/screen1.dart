import 'package:flutter/material.dart';
import 'screen2.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Screen 1',
        ),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Go Forwards To Screen 2',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const Screen2();
                    },
                  ),
                );
              },
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: const Text(
                'Pantalla inicial',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
