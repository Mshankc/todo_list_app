import 'package:flutter/material.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CheckboxListTile(
          onChanged: (value) {},
          value: false,
          title: const Text('Buy Milk'),
        ),
        CheckboxListTile(
          onChanged: (value) {},
          value: false,
          title: const Text('Do Shopping'),
        ),
      ],
    );
  }
}
