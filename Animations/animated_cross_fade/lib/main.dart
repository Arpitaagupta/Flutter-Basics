import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();
    // Add any initialization code here if needed
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  bool first = true;
  @override
  void initState() {
    super.initState();
    first = false; //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Container(
                // Set the background color here
                color: Colors.blue,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      // Toggle the 'first' value when the button is pressed.
                      first = !first;
                    });
                  },
                  child: const Text(
                    "Animate",
                    style: TextStyle(
                      color: Colors.white, //  Set text color
                    ),
                  ),
                ),
              ),
            ),
            AnimatedCrossFade(
              firstChild: const FlutterLogo(
                style: FlutterLogoStyle.stacked,
                size: 100.0,
              ),
              secondChild: const FlutterLogo(
                style: FlutterLogoStyle.horizontal,
                size: 200.0,
              ),
              crossFadeState:
                  first ? CrossFadeState.showSecond : CrossFadeState.showFirst,
              duration: const Duration(
                seconds: 2, //to sped up the transition --> use miliseconds
              ),
            ),
          ],
        ),
      ),
    );
  }
}
