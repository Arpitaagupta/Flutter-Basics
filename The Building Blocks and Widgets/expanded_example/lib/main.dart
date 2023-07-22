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
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          //Row(
          //
          //same goes for row too
          children: [
            Expanded(
              flex: 1, //to add space
              child: Card(
                child: Center(child: Text("Hey I am Card No 1")),
              ),
            ),
            Expanded(
              flex: 2,
              child: Card(
                child: Center(child: Text("Hey I am Card No 2")),
              ),
            ),
            Expanded(
              flex: 3,
              child: Card(
                child: Center(child: Text("Hey I am Card No 3")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
