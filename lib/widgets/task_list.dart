import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    super.key,
  });

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  bool isChecked = false;

  void checkBoxCallBack(bool value) {
    setState(() {
      isChecked = !value;
    });
  }

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
        CheckboxListTile(
          activeColor: Colors.lightBlueAccent,
          onChanged: (value) => checkBoxCallBack(value!),
          value: isChecked,
          title: Text(
            'Drop Fruits',
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
