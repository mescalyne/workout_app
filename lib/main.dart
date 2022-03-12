import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workout_app/presentation/router/bloc/bloc.dart';
import 'package:workout_app/presentation/router/router.dart';
import 'package:workout_app/resources/injection/injection.dart';

void main() async {
  await setupApp();
  runApp(MyApp());
}

Future<void> setupApp() async {
  
  await configureInjection(Env.dev);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        child: BlocProvider<RouterBloc>(
          create: (_) => getIt<RouterEventSink>() as RouterBloc,
          child: Router(
            routerDelegate: AppRouterDelegate(),
            backButtonDispatcher: RootBackButtonDispatcher(),
          ),
        ),
      ),
      theme: ThemeData(
        fontFamily: 'Dosis',
        backgroundColor: Colors.white,
      ),
    );
  }
}
