import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Screen 2'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text(
                'Go Back To Screen 1',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          const SizedBox(height: 100),
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
