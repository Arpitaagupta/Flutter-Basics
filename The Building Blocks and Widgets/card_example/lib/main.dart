import 'package:flutter/material.dart';

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
        body: Center(
          child: Card(
            color: Colors.amber,
            elevation: 5.0, //shadow,
            //clipBehaviour is helpful when something is expanding beyond the card,
            //semantic container --> true or false,
            shape: Border.all(color: Colors.red, width: 3.0),
            child: const Padding(
              padding: EdgeInsets.all(50.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FlutterLogo(
                    size: 100.0,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text("Hello"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
