import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'new_counter_event.dart';
part 'new_counter_state.dart';

class NewCounterBloc extends Bloc<NewCounterEvent, NewCounterState> {
  NewCounterBloc() : super(NewCounterState.initial()) {
    on<DecreseCounterEvent>((event, emit) {
      emit(state.copyWith(counter: state.counter - 1));
    });
  }
}
