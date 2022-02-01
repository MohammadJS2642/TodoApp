import 'package:flutter/material.dart';

// create task page after navigate to it
class MaterialInputTask extends StatelessWidget {
  const MaterialInputTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Add Task"),
          elevation: 20.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => {
              Navigator.pop(context, '/'),
            },
          ),
        ),
        body: const InputTask(),
      ),
    );
  }
}

class InputTask extends StatelessWidget {
  const InputTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Second Page"),
    );
  }
}
