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

// TaskPosition
class TaskPosition extends StatelessWidget {
  const TaskPosition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        TaskSectionName(),
        AddTodoButton(),
      ],
    );
  }
}

// add name to todo list
class TaskSectionName extends StatefulWidget {
  const TaskSectionName({Key? key}) : super(key: key);

  @override
  _TaskSectionNameState createState() => _TaskSectionNameState();
}

class _TaskSectionNameState extends State<TaskSectionName> {
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

// AddTodoButton
class AddTodoButton extends StatefulWidget {
  const AddTodoButton({Key? key}) : super(key: key);

  @override
  AddTodoButtonState createState() => AddTodoButtonState();
}

class AddTodoButtonState extends State<AddTodoButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {const TodoItems()},
      child: Row(
        children: const <Widget>[
          Icon(Icons.add),
          Text("Add"),
        ],
      ),
    );
  }
}

// TodoList
class TodoList extends StatefulWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// TodoItems
class TodoItems extends StatefulWidget {
  const TodoItems({Key? key}) : super(key: key);

  @override
  _TodoItemsState createState() => _TodoItemsState();
}

class _TodoItemsState extends State<TodoItems> {
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
