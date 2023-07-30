import 'dart:ffi';

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
    return Main();
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
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          // Slivers is the child of CustomScrollView
          slivers: [
            SliverAppBar(
              //appbar with some extra features
              //speciality of sliverappbar : when we scroll down appbar also gets scrolled
              title: Text("Hey I am the app"),

              pinned:
                  true, //now it will act like normal appbar, it won't scroll,
              floating:
                  true, // on scroll down --> app bar will also be scrolled down along with list,
              centerTitle: true, //title will appear  at center,
              elevation: 10.0, //shadow,
              forceElevated: true,
              // forceElevated: shadow will always exist even if there is nothing below the appbar,
              expandedHeight: 200.0,
              //expanded height --> increases height of appbar on scrolling down and comes back to original size on scrolling up
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  "https://images.pexels.com/photos/5556562/pexels-photo-5556562.jpeg?auto=compress&cs=tinysrgb&w=600",
                  fit: BoxFit.cover,
                ),
              ),
            ),

            //just like normal list we have sliver list,

            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return ListTile(
                    title: Text("I am list tile no " + index.toString()),
                    leading: const Icon(Icons.face),
                  );
                },
                childCount: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
