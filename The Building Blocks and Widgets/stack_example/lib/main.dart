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
        body: Stack(
          //stack is a widget when you want to use widget on one another
          alignment: AlignmentDirectional.center,
          fit: StackFit.expand,
          children: [
            // FlutterLogo(), //if I place FlutterLogo() before container then it is behind the card
            Container(
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Card(
                  //  color: Colors.transparent,
                  elevation: 5.0,
                  child: Text(
                    "Learn Flutter",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.teal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const FlutterLogo()
          ],
        ),
      ),
    );
  }
}
