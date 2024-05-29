import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_bloc/cubit/todo_cubit.dart';

class AddToDo extends StatelessWidget {
  const AddToDo({super.key});

  @override
  Widget build(BuildContext context) {
    final addToDoController = TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back)),
          title: const Text("Add todo"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 500,
                  child: TextField(
                    controller: addToDoController,
                    decoration: const InputDecoration(
                        hintText: "Enter new to-do",
                        border: OutlineInputBorder()),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      context
                          .read<TodoCubit>()
                          .addToDo(title: addToDoController.text.trim());
                      addToDoController.text = "";
                    },
                    child: const Text("Add"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
