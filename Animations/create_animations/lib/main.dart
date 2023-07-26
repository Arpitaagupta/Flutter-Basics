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
  // SingleTickerProviderStateMixin --> it informs every widget in a frame of flutter app
  late Animation animation;
  late AnimationController animationController;
  @override
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        curve: Curves.bounceIn,
        //Curves.linear | Curves.bounceIn | Curves.bounceInOut
        parent: animationController));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print(animation.value);
    return AnimatedBuilder(
        animation: animation,
        builder: (builder, child) {
          return Scaffold(
            body: Center(
              child: Card(
                child: Container(
                  width: width * animation.value,
                  height: height * animation.value,
                  color: Colors.teal,
                  child: Icon(
                    Icons.face,
                    size: animation.value * 100.0,
                  ),
                ),
              ),
            ),
          );
        });
  }
}
