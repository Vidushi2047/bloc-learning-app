part of 'new_counter_bloc.dart';

class NewCounterState extends Equatable {
  final int counter;

  const NewCounterState({required this.counter});
  factory NewCounterState.initial() {
    return const NewCounterState(counter: 0);
  }

  @override
  List<Object?> get props => [counter];
  @override
  String toString() => 'CounterState(counter: $counter)';

  NewCounterState copyWith({int? counter}) {
    return NewCounterState(counter: counter ?? this.counter);
  }
}
