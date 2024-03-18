import 'dart:js_interop';

import 'package:bloc_todo_app/add_todo.dart';
import 'package:bloc_todo_app/cubit/todo_cubit.dart';
import 'package:bloc_todo_app/models/todo_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Todo List"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BlocBuilder<TodoCubit, List<Todo>>(
          builder: (context, todos) => ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              final todo = todos[index];

              return ListTile(
                title: Text(todo.title),
                subtitle: Text(todo.createdAt),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => AddTodo(),
            ),
          );
        },
        tooltip: 'Navigate ',
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}
