import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Main(),
      theme: ThemeData(
        primaryColor: Colors.amber,
        appBarTheme: const AppBarTheme(
          color: Colors.amber,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
} //

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  void initState() {
    super.initState();
    // Add your initialization code here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "I am the AppBar",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        toolbarHeight: 60.0,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              color: Theme.of(context).primaryColor,
              height: 60.0,
            ),
          )
        ],
      ),
    );
  }
}
