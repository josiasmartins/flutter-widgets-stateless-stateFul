import 'package:flutter/material.dart';
import 'package:nosso_primeiro_projeto/components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: const Text('tasks'),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: const Duration(milliseconds: 1000),
          child: ListView(
            children: const [
              Task(
                  'Learn to unit test',
                  'assets/images/dash.png',
                  3),
              Task(
                  'Learn java',
                  'assets/images/bike.webp',
                  4),
              Task(
                  'Learn angular',
                  'assets/images/dash.png',
                  3),
              Task(
                  'Learn to flutter',
                  'assets/images/livro.jpg',
                  2),
              Task(
                  'Learn node',
                  'assets/images/meditar.jpeg',
                  5),
              SizedBox(
                height: 80,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: const Icon(Icons.remove_red_eye),
        ));
  }
}
