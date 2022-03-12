import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:workout_app/data/models/task.dart';
part 'event.freezed.dart';

@freezed
class FirstEvent with _$FirstEvent {
  const factory FirstEvent.onLoad() = OnLoad;
  const factory FirstEvent.onSave(List<GroupTaskDto> groupTasks) = OnSave;
  const factory FirstEvent.onRouteToSecond() = OnRouteToSecond;
}
