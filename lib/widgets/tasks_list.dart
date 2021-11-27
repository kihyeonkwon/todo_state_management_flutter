import 'package:flutter/material.dart';
import 'package:state_management_flutter/widgets/task_tile.dart';
import 'package:state_management_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(content: "Finish Flutter"),
    Task(content: "Workout"),
    Task(content: "Shower")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            content: tasks[index].content,
            isDone: tasks[index].isDone,
            checkCallback: (bool? newValue) {
              setState(() {
                tasks[index].checkDone();
              });
            });
      },
      itemCount: tasks.length,
    );
  }
}
