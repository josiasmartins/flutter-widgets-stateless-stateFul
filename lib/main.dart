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
        body: Container(
          color: Colors.black,
          child: Stack(
            children: [
              Container(color: Colors.blue, height: 140,),
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
                    Text('Learn to flutter'),
                    ElevatedButton(
                        onPressed: (){},
                        child: Icon(
                            Icons.arrow_drop_up)
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},)
      ),
    );
  }
}

