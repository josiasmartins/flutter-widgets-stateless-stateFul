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
            leading: Container(),
            title: Text('tasks'),
          ),
          body: ListView(
            children: [
              Task('Learn to flutter no café da manhâ com d sdsdsdiswddsd', 'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large'),
              Task('Learn java', ''),
              Task('Learn angular', ''),
              Task('Learn to flutter', ''),
              Task('Learn java', ''),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print('ibag');
            },
          )),
    );
  }
}

/*
*  Stateless Widget
* Estrutura pré-preparada para criarmos nosso Widget customizado.
* Widget de tela estática, ou seja, que não muda com o tempo ou ações.
* */

/*
*   ListView:
* O Widget que permite mostrar uma lista de elementos na tela,
* com a possibilidade de arrastar a tela. Com esse Widget começamos a
* descobrir como explorar telas maiores do que o limite de espaço do
* nosso dispositivo
* */

/*
*   Padding
* O Widget que nos permite criar uma camada externa de espaço
* em cada um dos 4 lados de seu Widget filho (child) usando o
* EdgeInsets no parâmetro padding.
* */

/*
*   Stateful Widget
* Estrutura pré-preparada para criarmos nosso Widget customizado,
* um Widget de tela dinâmica, ou seja, que pode mudar com o tempo ou ações.
* */

/*
*   LinearProgressIndicator
*   O primeiro Widget do catálogo que usamos já é um Stateful por
* natureza! Ele possui a capacidade de mudar de tamanho de acordo com seu
* valor (value) em double. Temos também a opção de alterar sua
* cor de fundo (backgroundColor) e cor principal (color), além de outros
*  parâmetros que podemos verificar no catálogo de Widgets da documentação
* */

// StatelesWidget: permite criar seu próprio widget
// StatefulWidget: cria um estado
class Task extends StatefulWidget {
  final String nome;
  final String foto;

  const Task(this.nome, this.foto, {Key? key}) : super(key: key);

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
            Container(
              color: Colors.blue,
              height: 140,
            ),
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
                        child: Image.network(
                            widget.foto,
                            fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                          width: 200,
                          child: Text(
                            widget.nome,
                            style: TextStyle(
                              fontSize: 24,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )),
                      Container(
                        height: 52,
                        width: 52,
                        child: ElevatedButton(
                          onPressed: () {
                            // setState: dz para o widget quem está mudando
                            setState(() {
                              nivel++;
                            });
                            print(nivel);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                              ),
                              Text(
                                'UP',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ),
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
                          value: nivel / 10,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Level $nivel',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
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
