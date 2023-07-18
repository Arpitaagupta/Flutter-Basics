import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Hi"),
            Center(
              //child : Text ("Hello")
              child: TextButton(
                onPressed: () {
                  print("Hi Button pressed."); //this will print on terminal
                },
                child: const Text("Press Me"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
