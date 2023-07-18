import 'package:flutter/material.dart';

void main() {
  runApp(const StatefulWidgetExample());
}

class StatefulWidgetExample extends StatefulWidget {
  const StatefulWidgetExample({super.key});

  @override
  State<StatefulWidgetExample> createState() => _StatefulWidgetExampleState();
}

class _StatefulWidgetExampleState extends State<StatefulWidgetExample> {
  //inside this there is a init function --> this function is automatically called when the app is started first.
  //but when we call setState function that init function is not called.
  //It is a predefined function which can be override when the widget starts.
  String str = "Hello";
  @override
  void initState() {
    super.initState();
    print("I was started.");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(str),
            ),
            TextButton(
              child: const Text("Change Text"),
              onPressed: () {
                str = "Hi";
                print(str);
                /* if we have made some changes in order to display that on screen we
                need to inform app, so for that we use setState() function. */
                setState(() {
                  //now on pressing the button Hello will change to Hi
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

//Stateful widgets are dynamic, once set can be changed.
//Stateful widget --> used when we want user to interact with the app
 

