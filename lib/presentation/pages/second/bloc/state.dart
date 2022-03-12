
class SecondState {
  ScreenStatus screenStatus;

  SecondState({
    required this.screenStatus,
  });

  SecondState copyWith({
    ScreenStatus? screenStatus,
  }) =>
      SecondState(
        screenStatus: screenStatus ?? this.screenStatus,
      );
}

enum ScreenStatus { loading, error, screen }
