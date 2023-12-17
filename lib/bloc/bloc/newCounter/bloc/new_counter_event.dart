part of 'new_counter_bloc.dart';

sealed class NewCounterEvent extends Equatable {
  const NewCounterEvent();

  @override
  List<Object> get props => [];
}

class DecreseCounterEvent extends NewCounterEvent {}
