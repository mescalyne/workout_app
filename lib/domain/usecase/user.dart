import 'package:injectable/injectable.dart';
import 'package:workout_app/data/models/task.dart';
import 'package:workout_app/data/repository/task.dart';

abstract class GetTaskUseCase {
  Future<List<TaskDto>?> call();
}

@Injectable(as: GetTaskUseCase)
class GetTaskImpl implements GetTaskUseCase {
  final TaskRepository _repository;

  GetTaskImpl(this._repository);

  @override
  Future<List<TaskDto>?> call() => _repository.getTask();
}


abstract class SetTaskUseCase {
  Future<void> call(List<TaskDto> tasks);
}

@Injectable(as: SetTaskUseCase)
class SetTaskImpl implements SetTaskUseCase {
  final TaskRepository _repository;

  SetTaskImpl(this._repository);

  @override
  Future<void> call(List<TaskDto> tasks) => _repository.setTask(tasks);
}
