import 'package:flutter/material.dart';
import 'package:flutter_form_bloc/flutter_form_bloc.dart';
import 'package:workout_app/presentation/pages/second/bloc/bloc.dart';
import 'package:workout_app/presentation/pages/second/bloc/state.dart';

class SecondPage extends StatelessWidget {
  static const id = 'second';

  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SecondBloc, SecondState>(builder: (context, state) {
      if (state.screenStatus == ScreenStatus.loading) {
        return Center(child: CircularProgressIndicator());
      } else {
        return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
                elevation: 0,
                iconTheme: IconThemeData(
                  color: Colors.black, //change your color here
                ),
                backgroundColor: Colors.white,
                title: Text(
                  '',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(22, 21, 21, 1),
                  ),
                )),
            body: Container());
      }
    });
  }
}
