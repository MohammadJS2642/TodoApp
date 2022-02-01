import 'dart:ffi';

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
        body: const TaskPosition(),
      ),
    );
  }
}

class TaskPosition extends StatelessWidget {
  const TaskPosition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        CustomTextFields(),
        AddTodoButton(),
      ],
    );
  }
}

// add name to todo list
class CustomTextFields extends StatefulWidget {
  const CustomTextFields({Key? key}) : super(key: key);

  @override
  _CustomTextFieldsState createState() => _CustomTextFieldsState();
}

class _CustomTextFieldsState extends State<CustomTextFields> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(hintText: "Todo List Name"),
      ),
    );
  }
}

class AddTodoButton extends StatefulWidget {
  const AddTodoButton({Key? key}) : super(key: key);

  @override
  AddTodoButtonState createState() => AddTodoButtonState();
}

class AddTodoButtonState extends State<AddTodoButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {const AddTodoItems()},
      child: Row(
        children: const <Widget>[
          Icon(Icons.add),
          Text("Add"),
        ],
      ),
    );
  }
}

class AddTodoItems extends StatefulWidget {
  const AddTodoItems({Key? key}) : super(key: key);

  @override
  _AddTodoItemsState createState() => _AddTodoItemsState();
}

class _AddTodoItemsState extends State<AddTodoItems> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(hintText: "Item"),
      ),
    );
  }
}
