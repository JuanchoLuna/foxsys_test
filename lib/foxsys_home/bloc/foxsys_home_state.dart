part of 'foxsys_home_bloc.dart';

enum FoxsysHomeStatus {
  initial,
  loading,
  loaded,
  error,
}

class FoxsysHomeState extends Equatable {
  const FoxsysHomeState({
    required this.status,
    required this.optionSelected,
    required this.appDisplayed,
  });

  const FoxsysHomeState.initial()
      : this(
          status: FoxsysHomeStatus.initial,
          optionSelected: 0,
          appDisplayed: false,
        );

  final FoxsysHomeStatus status;
  final int optionSelected;
  final bool appDisplayed;

  FoxsysHomeState copyWith({
    FoxsysHomeStatus? status,
    int? optionSelected,
    bool? appDisplayed,
  }) {
    return FoxsysHomeState(
      status: status ?? this.status,
      optionSelected: optionSelected ?? this.optionSelected,
      appDisplayed: appDisplayed ?? this.appDisplayed,
    );
  }

  @override
  List<Object> get props => [
        status,
        optionSelected,
        appDisplayed,
      ];
}
