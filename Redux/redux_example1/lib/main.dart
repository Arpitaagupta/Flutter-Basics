import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

enum Action { Inc } //Inc stands for increment

//we will not use stateful widget, we will use redux package
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Redux Example"),
        ),
        body: Column(
          children: [
            const Text("The value of counter is " + "0"),
            TextButton(onPressed: () {}, child: const Text("Add"))
          ],
        ),
      ),
    );
  }
}
