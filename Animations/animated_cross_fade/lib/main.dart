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

class _MainState extends State<Main> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AnimatedCrossFade(
          firstChild: FlutterLogo(
            style: FlutterLogoStyle.stacked,
            size: 100.0,
          ),
          secondChild: FlutterLogo(
            style: FlutterLogoStyle.horizontal,
            size: 200.0,
          ),
          crossFadeState: CrossFadeState.showFirst,
          duration: Duration(
            seconds: 2,
          ),
        ),
      ),
    );
  }
}
