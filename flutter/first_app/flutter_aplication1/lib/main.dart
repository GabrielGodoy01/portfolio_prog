import "package:flutter/material.dart";
import 'package:flutter_aplication1/resultado.dart';

import "./quiz.dart";
import './resultado.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _perguntas = [
    //lista que contem os maps que estes por sua vez contem os textos das respostas, as perguntas e as pontuações
    {
      "textoPerguntas": "Qual sua cor preferida?",
      "respostas": [
        {"texto": "Preto", "pontuacao": 8},
        {"texto": "Azul", "pontuacao": 7},
        {"texto": "Roxo", "pontuacao": 10},
        {"texto": "Branco", "pontuacao": 5},
        {"texto": "Vermelho", "pontuacao": 0}
      ],
    },
    {
      "textoPerguntas": "Qual sua comida preferida?",
      "respostas": [
        {"texto": "Macarrao", "pontuacao": 8},
        {"texto": "Hamburguer", "pontuacao": 9},
        {"texto": "Pizza", "pontuacao": 10},
        {"texto": "Feijoada", "pontuacao": 0},
        {"texto": "Lasanha", "pontuacao": 8}
      ],
    },
    {
      "textoPerguntas": "Qual seu animal preferido?",
      "respostas": [
        {"texto": "Cachorro", "pontuacao": 8},
        {"texto": "Leão", "pontuacao": 0},
        {"texto": "Tigre", "pontuacao": 9},
        {"texto": "Gato", "pontuacao": 6},
        {"texto": "Águia", "pontuacao": 10}
      ],
    },
  ];

  var _indiceQuestao = 0;
  var _pontuacaoTotal = 0;

  void _reiniciarQuiz() {
    setState(() {
      _indiceQuestao = 0;
      _pontuacaoTotal = 0;
    });
  }

  void _respostaPergunta(int pontuacao) {
    _pontuacaoTotal +=
        pontuacao; //calcula a pontuação total para exibir no final
    setState(() {
      _indiceQuestao = _indiceQuestao +
          1; //incrementa o contador para ir atualizando as questões
    });
    print(_indiceQuestao);
    if (_indiceQuestao < _perguntas.length) {
      print("Ainda restam perguntas");
    } else {
      print("Não restam mais perguntas!");
    }
  }

  @override
  Widget build(BuildContext context) {
    // perguntas = []; não funciona caso perguntas seja const ou final

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple[800],
          title: Text("Primeiro app dos cria"),
        ),
        body: _indiceQuestao < _perguntas.length //ternário (serve como um if)
            ? Quiz(
                indiceQuestao: _indiceQuestao,
                respostaPergunta: _respostaPergunta,
                perguntas: _perguntas,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuiz),
      ),
    );
  }
}
