part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  final num value;

  CounterState(this.value);
}

class CounterInitial extends CounterState {
  CounterInitial() : super(0);
}

class Counter extends CounterState {
  Counter({num value}) : super(value);
}
