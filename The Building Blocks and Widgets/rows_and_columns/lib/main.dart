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
          /* child: Column(
            // In column widgets are arranged in vertical fashion
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text("Hello"),
              TextButton(
                child: const Text(
                  "Press Me",
                ),
                onPressed: () {},
              ),
              Image.network(
                  "https://e0.pxfuel.com/wallpapers/196/612/desktop-wallpaper-full-beautiful-birds-background.jpg")
            ],
          ), */
          child: Container(
            color: Colors.teal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // mainAxisSize: MainAxisSize.min,
              textDirection: TextDirection.rtl,
              children: [
                const Text("Hello"),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Press Me",
                    style: TextStyle(color: Colors.black),
                  ),
                ), //arranged in horizontal
              ],
            ),
          ),
        ),
      ),
    );
  }
}
