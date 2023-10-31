import 'package:bloc/bloc.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(initialValue: 0));

  void increment() {
    emit(CounterState(initialValue: state.initialValue + 1));
  }

  void decrement() {
    emit(CounterState(initialValue: state.initialValue - 1));
  }
}
