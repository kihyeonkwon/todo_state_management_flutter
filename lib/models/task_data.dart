import 'package:flutter/foundation.dart';
import 'package:state_management_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(content: "Finish Flutter"),
    Task(content: "Workout"),
    Task(content: "Shower")
  ];

  List<Task> get tasks {
    return _tasks;
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTask) {
    _tasks.add(Task(content: newTask));
    notifyListeners();
  }

  void checkTask(Task task) {
    task.checkDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
