import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String content;
  final bool isDone;
  final Function(bool?) checkCallback;

  TaskTile(
      {required this.content,
      required this.isDone,
      required this.checkCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
