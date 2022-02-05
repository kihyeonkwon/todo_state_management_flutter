import 'package:flutter/material.dart';
import 'package:state_management_flutter/widgets/task_tile.dart';
import 'package:state_management_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:state_management_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Task> tasks = Provider.of<TaskData>(context).tasks;

    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            content: tasks[index].content,
            isDone: tasks[index].isDone,
            checkCallback: (bool? newValue) {
              Provider.of<TaskData>(context, listen: false)
                  .checkTask(tasks[index]);
            },
            longPressCallback: () {
              Provider.of<TaskData>(context, listen: false)
                  .deleteTask(tasks[index]);
            });
      },
      itemCount: tasks.length,
    );
  }
}
