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
      home: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(color: Colors.red, width: 100, height: 100,),
                Container(color: Colors.blue, width: 50, height: 50,),
              ],
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(color: Colors.blue, width: 100, height: 100,),
                Container(color: Colors.red, width: 50, height: 50,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(color: Colors.cyan, height: 50, width: 50,),
                Container(color: Colors.pinkAccent, height: 50, width: 50,),
                Container(color: Colors.purple, height: 50, width: 50 ,),
              ],
            ),
            Container(
              color: Colors.amber,
              height: 30,
              width: 300,
              child: Text(
                'Diamante amarelo',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  print('Voce apertou o botão');
                },
                child: Text('Aperte o botão!'))

          ],
        ),
      )
    );
  }
}

