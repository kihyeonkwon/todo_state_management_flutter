import 'package:flutter/material.dart';
import 'package:state_management_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:state_management_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 20,
              )),
          TextField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                      borderSide: BorderSide(
                    color: Colors.lightBlueAccent,
                  )),
                  hintText: 'Write here'),
              onChanged: (newText) {
                newTaskTitle = newText;
              }),
          ElevatedButton(
              onPressed: () {
                Provider.of<TaskData>(context, listen: false)
                    .addTask(newTaskTitle);
                Navigator.pop(context);
              },
              child: Text("Add"),
              style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent))
        ],
      ),
    );
  }
}
