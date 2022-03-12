import 'package:injectable/injectable.dart';
import 'package:workout_app/data/models/task.dart';
import 'package:workout_app/data/network/task.dart';

abstract class TaskRepository {
  Future<List<TaskDto>?> getTask();
  Future<void> setTask(List<TaskDto> tasks);
}

@Injectable(as: TaskRepository)
class TaskRepositoryImpl implements TaskRepository {
  final TaskService _getTaskService;

  TaskRepositoryImpl(this._getTaskService);

  @override
  Future<List<TaskDto>?> getTask() async {
    final result = await _getTaskService.getTasks();
    return result;
  }

  @override
  Future<void> setTask(List<TaskDto> tasks) async {
    await _getTaskService.setTasks(tasks);
  }
}
