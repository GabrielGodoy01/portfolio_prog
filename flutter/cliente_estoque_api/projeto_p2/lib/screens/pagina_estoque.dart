import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_p2/screens/pagina_localizacao.dart';

class PaginaEstoque extends StatefulWidget {
  var nome;
  var valor;
  var quantidade;
  var urlImage;
  var cep;

  PaginaEstoque({Key key, this.nome, this.valor, this.quantidade, this.urlImage, this.cep}) : super(key: key);

  @override
  _PaginaEstoqueState createState() => _PaginaEstoqueState();
}

class _PaginaEstoqueState extends State<PaginaEstoque> {
  @override
  Widget build(BuildContext context) {
    var _logoempresa = "assets/logo_empresa.jpg";
    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          title: Text("Sobre o produto", style: GoogleFonts.arimo(),),
          backgroundColor: Colors.redAccent.shade200, ),

        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.send),
          backgroundColor: Colors.redAccent.shade200,
          onPressed: () async{
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return PaginaLocalizacao(cep: widget.cep);
            }));
          },
          label: Text("Checar CEP", style: GoogleFonts.arimo(),),
        ),
        
        backgroundColor: Colors.white,

        body: Column(
          children: [

            Container(
              alignment: Alignment.topCenter,
                child: SizedBox(width:350, height: 150,child: Image.asset(_logoempresa),)),
            Text("-------------------------------------------------------------------------------------"),
            SizedBox(width:350, height: 150,child: Image.network(widget.urlImage)),
            Text(" "),
            Text("Dados do produto: ", style: new TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.black.withOpacity(0.9),)),
            Text("Nome: " + widget.nome, style: TextStyle(fontSize: 20.0,),),
            Text("Valor: R\$ " + widget.valor, style: TextStyle(fontSize: 20.0,)),
            Text("Quantidade: " + widget.quantidade, style: TextStyle(fontSize: 20.0,)),
            Text("CEP: " + widget.cep, style: TextStyle(fontSize: 20.0,)),
            Text(" "),
            Text("-------------------------------------------------------------------------------------"),
            Text(" "),
            Text(" "),
            Text(" "),
          ]
        ),
      ),
    );
  }
}