import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Assignment",
            style: TextStyle(
              fontFamily: "Nunito",
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        backgroundColor: Colors.amber,
        body: const Center(
          child: Icon(
            //FontAwesomeIcons.bolt,
            //FontAwesomeIcons.bone,
            //FontAwesomeIcons.grunt,
            FontAwesomeIcons.apple,
            size: 70.0,
          ),
        ),
      ),
      //the top of UI is appbar and rest is scaffold
    );
  }
}
