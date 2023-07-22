import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        /* body: ListView(
          itemExtent: 100.0, //it provides equal height to each of its children
          //scrollDirection: Axis.horizontal,
          //by default scroll direction is vertical
          children: const [
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
            ListTile(
              //it is a scollable list
              title: Text("Hello"),
            ),
          ],
        ), */

        /*  body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("List Count no" + (index + 1).toString()),
            );
          },
          itemCount: 20,
        ), */

        /* body: ListView.custom(
            childrenDelegate: SliverChildListDelegate([
          const ListTile(
            title: Text("First Tile"),
          )
        ])), */

        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("List Tile No" + (index + 1).toString()),
                /* onTap: () {
                  print(index);
                }, */
                onLongPress: () {
                  print("You long pressed on the tile");
                },
                dense: true, //to consume less space,
                leading:
                    const Icon(Icons.add), // add icon to every line before text
                trailing: const Icon(
                    Icons.pin_drop), //add icon at end of every line after text
              );
            },
            separatorBuilder: (context, index) {
              if ((index + 1) % 5 == 0) {
                return ListTile(
                  title: Text((index + 1).toString()),
                  selected: true,
                );
              } else {
                return Container();
              }
            },
            itemCount: 30),
      ),
    );
  }
}
