import 'package:flutter/material.dart';
import 'package:pexels_app/DartObject.dart';
import 'main.dart';

class WallpapersPage extends StatefulWidget {
  //const WallpapersPage({super.key});
  final DartObject obj;
  WallpapersPage(this.obj);

  @override
  State<WallpapersPage> createState() => _WallpapersPageState();
}

class _WallpapersPageState extends State<WallpapersPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Image.network(widget.obj.photos[index].src.landscape);
        },
        itemCount: widget.obj.photos?.length ?? 0,
      ),
    );
  }
}
