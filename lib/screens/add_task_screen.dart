import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text("& click here"),
              style: ElevatedButton.styleFrom(primary: Colors.lightBlueAccent))
        ],
      ),
    );
  }
}
