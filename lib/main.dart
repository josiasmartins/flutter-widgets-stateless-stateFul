import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /*
  *  Row: é a Linha, onde os objetos estão dispostos
  * lado a lado na horizontal. O MainAxis indica o eixo principal desse Widget,
  * que no caso é : horizontal. O CrossAxis é o eixo perpendicular ao principal,
  * portanto vertical.
  * Já o 'Column' é a Coluna, onde os objetos
  * estão dispostos na vertical. O MainAxis
  * indica o eixo principal, que dessa vez
  * é o vertical. Logo o CrossAxis é o eixo horizontal.
  * */

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('tasks'),
        ),
        body: ListView(
          children: [
            Task('Learn to flutter no café da manhâ com d sdsdsdiswddsd'),
            Task('Learn java'),
            Task('Learn angular'),
            Task('Learn to flutter'),
            Task('Learn java'),
            Task('Learn angular'),
            Task('Learn to flutter'),
            Task('Learn java'),
            Task('Learn angular'),
            Task('Learn to flutter'),
            Task('Learn java'),
            Task('Learn angular'),
            Task('Learn to flutter'),
            Task('Learn java'),
            Task('Learn angular'),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){print('ibag');},)
      ),
    );
  }
}

// StatelesWidget: permite criar seu próprio widget
// StatefulWidget: cria um estado
class Task extends StatefulWidget {
  final String nome;
  const Task(this.nome, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(color: Colors.blue, height: 140,),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                      ),
                      Container(
                        width: 200,
                          child: Text(
                            widget.nome,
                            style: TextStyle(
                                fontSize: 24,
                                overflow: TextOverflow.ellipsis,
                            ),
                          )
                      ),
                      ElevatedButton(
                          onPressed: (){
                            // setState: dz para o widget quem está mudando
                            setState(() {
                              nivel++;
                            });
                            print(nivel);
                          },
                          child: Icon(
                              Icons.arrow_drop_up)
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                          child: LinearProgressIndicator(
                            color: Colors.white,
                            value: nivel/10,
                          ),
                          width: 200,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child:  Text(
                      'Level $nivel',
                      style: TextStyle(
                          color: Colors.white
                      ),
                    ),)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
