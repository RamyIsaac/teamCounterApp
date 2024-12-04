import 'package:basketball_counter_app/cubits/counter_cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterIncrement());

  int teamAPoints = 0;

  int teamBPoints = 0;

  teamPointsIncrement(String team, int buttonNumber) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterIncrement());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterIncrement());
    }
  }

  teamPointsReset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterReset());
  }
}
