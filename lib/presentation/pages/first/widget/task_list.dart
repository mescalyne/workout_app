import 'package:flutter/material.dart';
import 'package:workout_app/data/models/task.dart';
import 'package:workout_app/presentation/pages/first/widget/task_internal_list.dart';


class TaskList extends StatelessWidget {
  final List<GroupTaskDto> groupTasks;

  const TaskList({required this.groupTasks, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      child: ReorderableListView.builder(
        itemCount: groupTasks.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            ),
            margin: EdgeInsets.only(bottom: 20),
            key: ValueKey(groupTasks[index]),
            child: Container(
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(208, 248, 206, 0.8),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: Column(
                children: [
                  Text(
                    groupTasks[index].order.toString() + '  group',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  InternalTaskList(
                    tasks: groupTasks[index].tasks,
                  )
                ],
              ),
            ),
          );
        },
        onReorder: (int oldIndex, int newIndex) {
          if(newIndex>oldIndex) newIndex--;
          var tmp = groupTasks.removeAt(oldIndex);
          groupTasks.insert(newIndex, tmp);
         
        },
      ),
    );
  }
}
