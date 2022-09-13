import 'package:flutter/material.dart';

import 'screens/initial_screen.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const InitialScreen(),
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




