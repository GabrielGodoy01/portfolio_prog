import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int resultadoPontuacao;
  final Function resetar;

  Resultado(this.resultadoPontuacao, this.resetar);

  String get fraseResultado {
    var textoResultado = "Você chegou no final do teste!";
    if (resultadoPontuacao <= 10) {
      textoResultado = "Você é estranho...";
    } else if (resultadoPontuacao > 10 && resultadoPontuacao <= 20) {
      textoResultado = "Você é uma pessoa com bom gosto";
    } else {
      textoResultado = "Você é foda e eu te respeito!";
    }
    return textoResultado;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          fraseResultado,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        TextButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor:
                  MaterialStateProperty.all(Colors.purpleAccent[700])),
          child: Text("Reiniciar o quiz!"),
          onPressed: resetar,
        ),
      ]),
    );
  }
}
