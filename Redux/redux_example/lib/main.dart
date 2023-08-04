import 'package:flutter/material.dart';
import 'package:redux/redux.dart'; // Import the Store class from redux package
import 'package:flutter_redux/flutter_redux.dart';
import 'counterState.dart';
import 'reducer.dart';

void main() {
  runApp(MainApp());
}

//
enum Action {
  Inc, // Increment action
  Dec, // Decrement action
  Double, //Value will be doubled
  Half, //Value will be halved
}

//we will not use stateful widget, we will use redux package
class MainApp extends StatelessWidget {
  //store is something that will be storing our data

  //const
  MainApp({super.key});
  final Store<CounterState> store =
      Store<CounterState>(reducers, initialState: CounterState(0));

  @override
  Widget build(BuildContext context) {
    return StoreProvider<CounterState>(
      store: store,
      child: MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Redux Example"),
            ),
            body: ColumnData()),
      ),
    );
  }
}

/*
We need to wrap whole in a widget StoreProvider, but where we want to use that values we need to wrap
that widget in StoreConnector
 */

class ColumnData extends StatelessWidget {
  const ColumnData({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<CounterState, CounterState>(
      converter: (store) => store.state,
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("The value of counter is " + state.counter.toString()),
            StoreConnector<CounterState, Function>(
              converter: (store) {
                return (action) {
                  // Dispatch the Inc action when the callback is called
                  store.dispatch(action);
                };
              },
              builder: (context, callback) {
                return Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        callback(Action
                            .Inc); //it will dispatch a function with action increment
                      },
                      child: const Text("Add"),
                    ),
                    TextButton(
                      onPressed: () {
                        callback(Action
                            .Dec); //it will dispatch a function with action increment
                      },
                      child: const Text("Dec"),
                    ),
                    TextButton(
                      onPressed: () {
                        callback(Action
                            .Double); //it will dispatch a function with action increment
                      },
                      child: const Text("Double"),
                    ),
                    TextButton(
                      onPressed: () {
                        callback(Action
                            .Half); //it will dispatch a function with action increment
                      },
                      child: const Text("Half"),
                    ),
                  ],
                );
              },
            )
          ],
        );
      },
    );
  }
}
