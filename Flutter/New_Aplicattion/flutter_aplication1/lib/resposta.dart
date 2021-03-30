import "package:flutter/material.dart";

class Resposta extends StatelessWidget {
  final Function selecionarManipulador;
  final String respostaTexto;

  Resposta(this.selecionarManipulador, this.respostaTexto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.white),
            backgroundColor:
                MaterialStateProperty.all(Colors.purpleAccent[700])),
        child: Text(respostaTexto),
        onPressed: selecionarManipulador,
      ),
    );
  }
}
