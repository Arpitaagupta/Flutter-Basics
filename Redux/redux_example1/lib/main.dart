import 'package:flutter/material.dart';
import 'package:redux/redux.dart'; // Import the Store class from redux package
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_example1/counterState.dart';
import 'package:redux_example1/reducer.dart';

void main() {
  runApp(MainApp());
}

//
enum Action { Inc } //Inc stands for increment

//we will not use stateful widget, we will use redux package
class MainApp extends StatelessWidget {
  //store is something that will be storing our data

  //const
  MainApp({super.key});
  final Store store =
      Store<CounterState>(reducers, initialState: CounterState(0));

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Redux Example"),
          ),
          body: Column(
            children: [
              const Text("The value of counter is " + "0"),
              TextButton(onPressed: () {}, child: const Text("Add"))
            ],
          ),
        ),
      ),
    );
  }
}
