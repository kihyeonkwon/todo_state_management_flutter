import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String content;
  final bool isDone;
  final Function(bool?) checkCallback;
  final Function() longPressCallback;

  TaskTile(
      {required this.content,
      required this.isDone,
      required this.checkCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Delete Task"),
              content: Text("Do you want to delete this task?"),
              actions: [
                FlatButton(
                  child: Text("No"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                FlatButton(
                    child: Text("Yes"),
                    onPressed: () {
                      longPressCallback();
                      Navigator.of(context).pop();
                    })
              ],
            );
          },
        );
      },
      title: Text(content,
          style: TextStyle(
              decoration: isDone ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        value: isDone,
        onChanged: checkCallback,
      ),
    );
  }
}
