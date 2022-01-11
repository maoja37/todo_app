// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/model/todo.dart';
import 'package:todo_app/provider/todos.dart';
import 'package:todo_app/widgets/todo_widget.dart';

class TodoListWidget extends StatelessWidget {
  const TodoListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TodosProvider>(context);
    final todos = provider.todos;
    return todos.isEmpty
        ? Center(
          child: Text(
              'No todos',
              style: TextStyle(fontSize: 20),
            ),
        )
        : ListView.separated(
            itemBuilder: (context, index) {
              final todo = todos[index];
              return TodoWidget(todo: todo);
            },
            separatorBuilder: (context, index) => SizedBox(
              height: 8,
            ),
            itemCount: todos.length,
          );
  }
}
