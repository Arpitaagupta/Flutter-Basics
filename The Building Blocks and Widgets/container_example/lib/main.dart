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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: AlignmentDirectional.center,
          // color: Colors.teal,
          //decoration and color can't be added at the same time
          //padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    //image will be set as background image of box
                    "https://w0.peakpx.com/wallpaper/81/169/HD-wallpaper-daisy-blossom-flowers-white-nature.jpg"),
              ),
              // color: Colors.teal,
              //
              //adding gradient as background
              gradient:
                  LinearGradient(colors: [Colors.teal, Colors.tealAccent])),
          //radial gradient can also be added
          /* constraints: BoxConstraints(
            maxHeight: height,
            maxWidth: width,
          ), */
          child: const Text("Hello"),
        ),
      ),
    );
  }
}
