import 'package:flutter/material.dart';

import './perguntas.dart';
import './resposta.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int indiceQuestao;
  final Function respostaPergunta;

  Quiz(
      {@required this.perguntas,
      @required this.respostaPergunta,
      @required this.indiceQuestao});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Pergunta(
          perguntas[indiceQuestao]["textoPerguntas"],
        ),
        ...(perguntas[indiceQuestao]["respostas"] as List<Map<String, Object>>)
            .map((resposta) {
          //esse map é uma função que faz com que todos os elementos a função seja aplicada em todos os elementos da lista
          return Resposta(
              () => respostaPergunta(resposta["pontuacao"]), resposta["texto"]);
        }).toList()
      ],
    );
  }
}
