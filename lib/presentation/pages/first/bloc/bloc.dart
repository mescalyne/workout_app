import 'dart:async';
import 'package:collection/collection.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_app/data/models/task.dart';
import 'package:workout_app/domain/usecase/user.dart';
import 'package:workout_app/presentation/pages/first/bloc/event.dart';
import 'package:workout_app/presentation/pages/first/bloc/state.dart';
import 'package:workout_app/resources/logger.dart';

typedef FirstEventHandler = Stream<FirstState>;

@Injectable()
class FirstBloc extends Bloc<FirstEvent, FirstState> {
  final GetTaskUseCase _getUserUseCase;
  final SetTaskUseCase _setUserUseCase;

  FirstBloc(
    this._getUserUseCase,
    this._setUserUseCase,
  ) : super(FirstState(screenStatus: ScreenStatus.loading)) {
    add(OnLoad());
  }

  @override
  FirstEventHandler mapEventToState(FirstEvent event) => event.when(
        onLoad: _onLoad,
        onSave: _onSave,
        onRouteToSecond: _onRouteToSecond,
      );

  FirstEventHandler _onLoad() async* {
    try {
      List<GroupTaskDto> tasks = [];
      var result = await _getUserUseCase();
      result?.forEach((element) {
        GroupTaskDto? tmp =
            tasks.firstWhereOrNull((task) => task.order == element.order);
        if (tmp != null) {
          tmp.tasks.add(element);
        } else {
          tasks.add(GroupTaskDto(order: element.order!, tasks: [element]));
        }
      });
      yield state.copyWith(
        screenStatus: ScreenStatus.screen,
        groupTasks: tasks,
      );
    } catch (ex) {
      Log.error('FirstBloc - onLoad error: ${ex.toString()}');
    }
  }

  FirstEventHandler _onSave(List<GroupTaskDto> groupTasks) async* {
    try {
      List<TaskDto> tasks = [];
      for (var group in groupTasks) {
        for (var element in group.tasks) {
          tasks.add(TaskDto(
              id: element.id,
              order: element.order,
              orderPrefix: element.orderPrefix));
        }
      }
      await _setUserUseCase(tasks);
    } catch (ex) {
      Log.error('FirstBloc - onSave error: ${ex.toString()}');
    }
  }

  FirstEventHandler _onRouteToSecond() async* {
    //_routerEventSink.add(RouterEvent.toSecond(user));
  }
}
