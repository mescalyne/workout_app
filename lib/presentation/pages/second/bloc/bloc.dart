import 'dart:async';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:workout_app/presentation/pages/second/bloc/event.dart';
import 'package:workout_app/presentation/pages/second/bloc/state.dart';
import 'package:workout_app/resources/logger.dart';

typedef SecondEventHandler = Stream<SecondState>;

@Injectable()
class SecondBloc extends Bloc<SecondEvent, SecondState> {
  SecondBloc()
      : super(SecondState(
          screenStatus: ScreenStatus.screen,
        )) {
    add(OnLoad());
  }

  @override
  SecondEventHandler mapEventToState(SecondEvent event) => event.when(
        onLoad: _onLoad,
      );

  SecondEventHandler _onLoad() async* {
    try {} catch (ex) {
      Log.error('SecondBloc - onLoad error: ${ex.toString()}');
    }
  }

}
