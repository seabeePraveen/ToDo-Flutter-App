import 'package:flutter/material.dart';

import 'model.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  const ToDoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: ListTile(
        onTap: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        leading: const Icon(
          Icons.check_box,
          color: Colors.blue,
        ),
        title: Text("${todo.text}"),
        trailing: Container(
          height: 35,
          width: 35,
          color: Colors.red,
          child: IconButton(
            onPressed: () {},
            color: Colors.white,
            icon: const Icon(Icons.delete),
            iconSize: 18,
          ),
        ),
      ),
    );
  }
}
