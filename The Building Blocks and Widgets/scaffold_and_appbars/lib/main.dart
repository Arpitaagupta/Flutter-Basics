import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("The title of the appbar"),
          centerTitle: true,
          backgroundColor: Colors.teal,
          // brightness: Brightness.light,
          leading: Icon(Icons.person),
          /* actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.mic,
                  color: Colors.teal,
                ),
              ),
            ),
          ], */

          //elevation: 0.0,
          //elevation when set to 0.0 removes the shadow from appbar,
          //input of elevation is double
        ),
        backgroundColor: Colors.amber,
        body: const Text(
          "Hello",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        bottomSheet: BottomSheet(
            onClosing: () {},
            builder: (BuildContext context) {
              return Container(
                child: const Text("Hello"),
              );
            }),
        bottomNavigationBar: BottomNavigationBar(
            fixedColor: Colors.teal,
            unselectedItemColor: Colors.teal, // Set the unselected item color
            currentIndex: 0,
            /*  selectedLabelStyle:
                TextStyle(color: Colors.teal), // Set selected label color
            unselectedLabelStyle:
                TextStyle(color: Colors.teal),  */ // Set unselected label color
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: "Home", //label is used instead of title
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                ),

                label: "Favourites", //label is used instead of title,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.download,
                ),
                label: "Downloads", //label is used instead of title
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.more_vert,
                ),
                label: "More", //label is used instead of title
              )
            ]),
        drawer: const Drawer(
          //by default left drawer
          child: Text("I am the drawer"),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text("John Doe"),
                accountEmail: Text("john.doe@example.com"),
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  // Add your action here for the Home item
                },
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("Favorites"),
                onTap: () {
                  // Add your action here for the Favorites item
                },
              ),
              ListTile(
                leading: Icon(Icons.download),
                title: Text("Downloads"),
                onTap: () {
                  // Add your action here for the Downloads item
                },
              ),
              ListTile(
                leading: Icon(Icons.more_vert),
                title: Text("More"),
                onTap: () {
                  // Add your action here for the More item
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
      //the top of UI is appbar and rest is scaffold
    );
  }
}
