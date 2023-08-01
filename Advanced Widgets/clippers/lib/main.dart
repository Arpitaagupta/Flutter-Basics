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
    return const MaterialApp(
      home: Main(),
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
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          //child: ClipOval(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.network(
                "https://c4.wallpaperflare.com/wallpaper/494/739/656/anime-doraemon-nobita-nobi-shizuka-minamoto-hd-wallpaper-preview.jpg",
                // height: 200.0,
                //width: 200.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
