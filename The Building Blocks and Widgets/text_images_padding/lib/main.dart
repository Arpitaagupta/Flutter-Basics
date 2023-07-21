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
  String str = "Hey! My name is Arpita!";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                  "https://e0.pxfuel.com/wallpapers/91/471/desktop-wallpaper-18-nature-with-bird.jpg"),
              //Image.asset("When image is stored in assets folder"),
              // Image.memory("When image icon is stored in bytes")
              Chip(
                //adding chip
                label: Text(
                  str, //simply passing Text as a widget
                  //adding style to text
                  style: const TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold, //bold text
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: OutlinedButton(
                  child: const Text("Press Me"),
                  onPressed: () {
                    str = "You just pressed the button";
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
