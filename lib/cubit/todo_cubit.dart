import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_bloc/models/todo_model.dart';

class TodoCubit extends Cubit<List<ToDoModel>> {
  TodoCubit() : super([]);

  void addToDo({required String title}) {
    if (title.isEmpty) {
      addError("Title is empty now");
      return;
    }
    final newToDo = ToDoModel(title: title, createAt: DateTime.now());
    state.add(newToDo);
    emit([...state]);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print("ToDo Cubit - $error");
  }
}
