import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  String url = "https://txt2html.sourceforge.net/"; //sample source page
  var data;
  bool load = true;
  @override
  void initState() {
    super.initState();
    load = true;
    fetchData();
  }

  fetchData() async {
    Uri uri = Uri.parse(url); // Convert the String URL to Uri object
    data = await http.get(uri);
    load = false;
    setState(() {
      // Process the 'data' as needed
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: load
          ? const CircularProgressIndicator()
          : Container(
              child: Text(data.body.toString()),
            ),
    );
  }
}
