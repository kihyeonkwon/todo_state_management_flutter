import 'package:provider/provider.dart';

class Task {
  final String content;
  bool isDone;

  Task({required this.content, this.isDone = false});

  void checkDone() {
    isDone = !isDone;
  }
}
