import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';

part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial());

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is Increment) {
      yield Counter(value: state.value + 1);
    } else if (event is Decrement) {
      yield Counter(value: state.value - 1);
    }
    if (event is Reset) {
      yield CounterInitial();
    } else {
      addError(Exception('unsupported event'));
    }
  }
}
