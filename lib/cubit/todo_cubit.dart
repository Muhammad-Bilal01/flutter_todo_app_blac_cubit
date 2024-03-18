import 'package:bloc_todo_app/models/todo_models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  // to add todo in list
  void addTodo(String title) {
    final todo = Todo(
      title: title,
      createdAt: DateTime.now().toString(),
    );

    emit([...state, todo]);
  }
}
