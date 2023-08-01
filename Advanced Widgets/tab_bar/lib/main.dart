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
      home: const Main(),
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

  Widget card(
    String text,
  ) {
    return Card(
      color: Colors.teal,
      child: Container(
        height: 200.0,
        width: 200.0,
        child: Center(
          child: Text(
            text,
          ),
        ),
      ),
    );
  }

  Tab tab(
    String text,
    Icon icon,
  ) {
    return Tab(
      icon: icon,
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
          controller: controller,
          children: [
            card("I am Card 1"),
            card("I am Card 2"),
            card("I am Card 3"),
            card("I am Card 4"),
            card("I am Card 5"),
            // card("I am Card 6"),
            //no of card and no of tabs should be equal
          ],
        ),
        bottomNavigationBar: TabBar(
          indicatorColor: Colors.red, //color of the line below the selected tab
          isScrollable: true, //to scroll the tabbar
          tabs: [
            tab("Home", const Icon(Icons.home)),
            tab("Favourites", const Icon(Icons.favorite)),
            tab("Add", const Icon(Icons.add)),
            tab("Downloads", const Icon(Icons.download)),
            tab("Profile", const Icon(Icons.person)),
            tab("Settings", const Icon(Icons.settings)),
            tab("Bookmarks", const Icon(Icons.bookmark)),
            tab("More", const Icon(Icons.more_vert)),
          ],
          controller: controller,
        ),
      ),
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
