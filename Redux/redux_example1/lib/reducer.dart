import 'package:redux_example1/counterState.dart';
import 'package:redux_example1/main.dart';

// The redux package uses reducers to perform actions on data
CounterState reducers(CounterState counterState, action) {
  if (action == Action.Inc) {
    return CounterState(counterState.counter + 1);
  }
  return counterState;
}
