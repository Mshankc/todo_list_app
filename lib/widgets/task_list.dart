import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

bool isChecked = false;

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CheckboxListTile(
          activeColor: Colors.lightBlueAccent,
          onChanged: (value) => setState(() {
            isChecked = value!;
            print(value);
          }),
          value: isChecked,
          title: Text(
            'Buy Milk',
            style: TextStyle(
                decoration: isChecked == true
                    ? TextDecoration.lineThrough
                    : TextDecoration.none),
          ),
        ),
      ],
    );
  }
}
