import 'package:flutter/material.dart';
import 'package:to_do_bloc/add_to_do.dart';
import 'package:to_do_bloc/todo_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyToDoApp();
  }
}

class MyToDoApp extends StatelessWidget {
  const MyToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/addtodo': (context) => const AddToDo(),
      },
      home: const TodoList(),
    );
  }
}
