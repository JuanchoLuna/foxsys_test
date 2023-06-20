import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'foxsys_home_event.dart';
part 'foxsys_home_state.dart';

class FoxsysHomeBloc extends Bloc<FoxsysHomeEvent, FoxsysHomeState> {
  FoxsysHomeBloc() : super(const FoxsysHomeState.initial()) {
    on<FoxsysHomeOptionSelected>(_onOptionSelected);
    on<FoxsysHomeAppDisplayed>(_onAppDisplayed);
  }

  void _onOptionSelected(
    FoxsysHomeOptionSelected event,
    Emitter<FoxsysHomeState> emit,
  ) {
    emit(state.copyWith(optionSelected: event.optionSelected));
  }

  void _onAppDisplayed(
    FoxsysHomeAppDisplayed event,
    Emitter<FoxsysHomeState> emit,
  ) {
    emit(state.copyWith(appDisplayed: !state.appDisplayed));
  }
}
