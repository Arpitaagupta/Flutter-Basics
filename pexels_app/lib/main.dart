import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'DartObject.dart';
import 'wallpapersPage.dart';
import 'searchPage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent), //for transparent toolbar
  );
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  Map<String, String> header = {
    "Authorization": "56IQ6hCU7Nev53CHZLe1IgsvZaIRxUJMxNoc8lWnf0v7felvMDuBVsOz"
  };

  DartObject obj = DartObject();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2, vsync: this);
    fetchData();
  }

  String url(String query, int pageNo, int perPage) {
    return "https://www.pexels.com/api/documentation/#photos-search";
  }

  fetchData() async {
    var data = await http.get(Uri.parse("popular", 1, 20), headers: header);
    var decodedJson = jsonDecode(data.body);
    obj = DartObject.fromJson(decodedJson);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pexels App"),
        bottom: TabBar(
          controller: controller,
          tabs: const [
            Tab(
              icon: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.image),
                  Text("Wallpapers"),
                ],
              ),
            ),
            Tab(
              icon: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.search),
                  Text("Search"),
                ],
              ),
            ),
          ],
        ),
      ),
      body: (obj == null)
          ? const Center(child: const CircularProgressIndicator())
          : TabBarView(controller: controller, children: [
              WallpapersPage(obj),
              SearchPage(obj),
            ]),
    );
  }
}
