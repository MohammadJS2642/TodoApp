import 'package:flutter/material.dart';

// this is main page actuly
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TODO APP"),
      ),
      body: const CustomAddButton(),
    );
  }
}

// Add button navigate to add task
class CustomAddButton extends StatelessWidget {
  const CustomAddButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: FloatingActionButton(
          onPressed: () => {
            Navigator.pushNamed(context, '/inputtask'),
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
          elevation: 10.0,
          shape: const CircleBorder(),
        ),
      ),
    );
  }
}
