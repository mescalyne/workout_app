// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/network/task.dart' as _i5;
import '../../data/repository/task.dart' as _i6;
import '../../domain/usecase/user.dart' as _i7;
import '../../presentation/pages/first/bloc/bloc.dart' as _i8;
import '../../presentation/pages/second/bloc/bloc.dart' as _i4;
import '../../presentation/router/bloc/bloc.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.RouterEventSink>(_i3.RouterBloc());
  gh.factory<_i4.SecondBloc>(() => _i4.SecondBloc());
  gh.factory<_i5.TaskService>(() => _i5.TaskServiceImpl());
  gh.factory<_i6.TaskRepository>(
      () => _i6.TaskRepositoryImpl(get<_i5.TaskService>()));
  gh.factory<_i7.GetTaskUseCase>(
      () => _i7.GetTaskImpl(get<_i6.TaskRepository>()));
  gh.factory<_i7.SetTaskUseCase>(
      () => _i7.SetTaskImpl(get<_i6.TaskRepository>()));
  gh.factory<_i8.FirstBloc>(() =>
      _i8.FirstBloc(get<_i7.GetTaskUseCase>(), get<_i7.SetTaskUseCase>()));
  return get;
}
