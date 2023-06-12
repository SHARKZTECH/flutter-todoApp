import 'package:flutter/material.dart';
import 'dart:math';

class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoItems(int count) {
    List<ToDo> todoList = [];
    Random random = Random();

    for (int i = 0; i < count; i++) {
      String id = 'Todo_$i';
      String todoText = 'Task $i';
      bool isDone = random.nextBool();

      ToDo todoItem = ToDo(
        id: id,
        todoText: todoText,
        isDone: isDone,
      );

      todoList.add(todoItem);
    }

    return todoList;
  }
}
