

import 'package:flutter/material.dart';
import 'package:workout_app/data/models/task.dart';

class InternalTaskList extends StatelessWidget {
  final List<TaskDto> tasks;

  const InternalTaskList({required this.tasks, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ReorderableListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return Container(
              margin: EdgeInsets.only(bottom: 10),
              key: ValueKey(tasks[index]),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(244, 242, 242, 1),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Text(
                  tasks[index].orderPrefix ?? '',
                  style: TextStyle(fontSize: 18.0),
                ),
              ));
        },
        onReorder: (int oldIndex, int newIndex) {
           if(newIndex>oldIndex) newIndex--;
          var tmp = tasks.removeAt(oldIndex);
          tasks.insert(newIndex, tmp);
        },
      ),
    );
  }
}
