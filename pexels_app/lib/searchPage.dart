import 'package:flutter/material.dart';
import 'DartObject.dart';

class SearchPage extends StatefulWidget {
  //const SearchPage({super.key});
  final DartObject obj;
  SearchPage(this.obj);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return const Material();
  }
}
