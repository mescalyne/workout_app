import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/presentation/pages/first/bloc/bloc.dart';
import 'package:workout_app/presentation/pages/first/first.dart';
import 'package:workout_app/presentation/pages/second/bloc/bloc.dart';
import 'package:workout_app/presentation/pages/second/second.dart';
import 'package:workout_app/presentation/router/router.dart';
import 'package:workout_app/resources/injection/injection.dart';

class ScreenProvider {
  static RouteInfo first() => RouteInfo(
        id: FirstPage.id,
        builder: (_) => BlocProvider<FirstBloc>(
          create: (_) => getIt<FirstBloc>(),
          child: FirstPage(),
        ),
      );
      static RouteInfo second() => RouteInfo(
        id: SecondPage.id,
        builder: (_) => BlocProvider<SecondBloc>(
          create: (_) => getIt<SecondBloc>(),
          child: SecondPage(),
        ),
      );
      
}

class RouteInfo {
  RouteInfo({
    required this.id,
    this.type = PageType.screen,
    required this.builder,
  });

  final String id;
  final WidgetBuilder builder;
  PageType type;

  @override
  String toString() {
    return 'Route: {id: $id, builder: $builder}';
  }
}
