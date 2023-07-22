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
        /* body: ListView(
          itemExtent: 100.0, //it provides equal height to each of its children
          //scrollDirection: Axis.horizontal,
          //by default scroll direction is vertical
          children: const [
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
          ],
        ), */

        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                //3:54
                );
          },
        ),
      ),
    );
  }
}
