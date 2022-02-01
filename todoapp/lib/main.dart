import 'package:flutter/material.dart';
import 'AddTodoPage.dart';
import 'HomePage.dart';

void main() => runApp(const MyMainPage());

// routes are here
class MyMainPage extends StatelessWidget {
  const MyMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const HomePage(),
        '/inputtask': (cntext) => const MaterialInputTask(),
      },
    );
  }
}
