import 'package:flutter/material.dart';

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
              children: [
                TextField(
                  controller: addToDoController,
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(onPressed: () {}, child: const Text("Add"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
