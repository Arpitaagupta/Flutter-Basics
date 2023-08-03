import 'package:redux_example1/counterState.dart';
import 'package:redux_example1/main.dart';

// The redux package uses reducers to perform actions on data
CounterState counterReducer(CounterState state, dynamic action) {
  if (action == Action.Inc) {
    return CounterState(state.counter + 1);
  }
  return state;
}
