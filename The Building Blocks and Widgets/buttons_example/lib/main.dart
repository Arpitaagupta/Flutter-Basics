import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.teal,
              //unable to add highlightColor : Colors.yellow
            ),
            child: const Text("Press Me"),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
//