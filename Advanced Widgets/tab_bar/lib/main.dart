import 'package:flutter/material.dart';

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
      home: Main(),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
  }

  Widget card(String text) {
    return Card(
      color: Colors.amber,
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Text(text),
      ),
    );
  }

  Tab tab(Icon icons, String text) {
    return tab(
      icon: icons;
      text: text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "TabBars",
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context)
              .canvasColor, //same as app background color, no lining
          elevation: 0.0,
        ),
        body: TabBarView(
          children: [
            card("I am Card 1"),
            card("I am Card 2"),
            card("I am Card 3"),
            card("I am Card 4"),
            card("I am Card 5")
          ],
          controller: controller,
        ),
        bottomNavigationBar: TabBar(
          tabs: [Tab()],
          controller: controller,
        ),
      ),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
