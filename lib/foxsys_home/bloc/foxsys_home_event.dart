part of 'foxsys_home_bloc.dart';

abstract class FoxsysHomeEvent extends Equatable {
  const FoxsysHomeEvent();
}

class FoxsysHomeOptionSelected extends FoxsysHomeEvent {
  const FoxsysHomeOptionSelected(this.optionSelected);

  final int optionSelected;

  @override
  List<Object> get props => [optionSelected];
}

class FoxsysHomeAppDisplayed extends FoxsysHomeEvent {
  const FoxsysHomeAppDisplayed();

  @override
  List<Object> get props => [];
}
