import 'package:injectable/injectable.dart';
import 'package:workout_app/data/models/task.dart';
import 'package:workout_app/resources/logger.dart';

abstract class TaskService {
  Future<List<TaskDto>?> getTasks();
  Future<void> setTasks(List<TaskDto> tasks);
}

@Injectable(as: TaskService)
class TaskServiceImpl implements TaskService {
  TaskServiceImpl();

  @override
  Future<List<TaskDto>?> getTasks() async {
    final result = [
      {"id": 1, "order": 1, "order_prefix": "10 push ups"},
      {"id": 2, "order": 2, "order_prefix": "10 pull ups"},
      {"id": 3, "order": 2, "order_prefix": "15 lunges"},
      {"id": 4, "order": 2, "order_prefix": "20 body liftings"},
      {"id": 5, "order": 3, "order_prefix": "30 pull ups"},
      {"id": 6, "order": 3, "order_prefix": "30 push ups"},
      {"id": 7, "order": 4, "order_prefix": "10 body liftings"},
      {"id": 8, "order": 4, "order_prefix": "15 body liftings"}
    ];

    Log.info('TaskServiceImpl - getTasks: $result');
    return List<TaskDto>.from(result.map((e) => TaskDto.fromJson(e)));
  }

  @override
  Future<void> setTasks(List<TaskDto> tasks) async {
    await Future.delayed(Duration(seconds: 2));
    Log.info('TaskServiceImpl - setTasks: $tasks');
  }
}
