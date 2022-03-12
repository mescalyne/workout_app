import 'package:workout_app/data/models/task.dart';

class FirstState {
  List<GroupTaskDto>? groupTasks;
  ScreenStatus screenStatus;

  FirstState({
    this.groupTasks,
    required this.screenStatus,
  });

  FirstState copyWith({
    List<GroupTaskDto>? groupTasks,
    ScreenStatus? screenStatus,
  }) =>
      FirstState(
        groupTasks: groupTasks ?? this.groupTasks,
        screenStatus: screenStatus ?? this.screenStatus,
      );
}

enum ScreenStatus { loading, error, screen }
