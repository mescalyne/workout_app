import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:workout_app/presentation/pages/first/bloc/bloc.dart';
import 'package:workout_app/presentation/pages/first/bloc/event.dart';
import 'package:workout_app/presentation/pages/first/bloc/state.dart';
import 'package:workout_app/presentation/pages/first/widget/task_list.dart';

class FirstPage extends StatelessWidget {
  static const id = 'first';

  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FirstBloc, FirstState>(builder: (context, state) {
      if (state.screenStatus == ScreenStatus.loading) {
        return Center(child: CircularProgressIndicator());
      } else {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              actions: [
                InkWell(
                  onTap: (() => BlocProvider.of<FirstBloc>(context)
                      .add(FirstEvent.onSave(state.groupTasks!))),
                  child: Container(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.save_outlined,
                        color: Colors.black,
                      )),
                ),
              ],
              title: Text(
                'Workout plan',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(22, 21, 21, 1),
                ),
              )),
          body: Container(
            padding: const EdgeInsets.only(top: 10.0, left: 50.0),
            child: TaskList(
              groupTasks: state.groupTasks!,
            ),
          ),
        );
      }
    });
  }
}
