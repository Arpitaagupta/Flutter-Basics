import 'package:flutter/material.dart';

//
void main() {
  runApp(const MainPage());
}

//theming --> giving different types of colors and styles

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
        appBarTheme: const AppBarTheme(color: Colors.amber),
        //accentColor
        //primary color is the color which is used in most places in app,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              color: Colors
                  .black, //text color will always be black no matter what the theme is
              fontSize: 20.0,
              letterSpacing: 3.0,
              fontWeight: FontWeight.w300),
        ),
        brightness: Brightness.dark,
        canvasColor: Colors.blueGrey,
        // backgroundColor: Colors.red,
      ),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Theming",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      ),
      body: Container(
        child: Theme(
            //all the widgets under this theme will use themedata
            data: ThemeData(),
            child: const Text("Sample text over here")),
      ),
    ); // Use the same theme as in MainPage
  }
}
