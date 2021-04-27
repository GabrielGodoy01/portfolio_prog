import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projeto_p2/models/produtos.dart';
import 'package:projeto_p2/screens/pagina_estoque.dart';


class PaginaDeCadastro extends StatefulWidget {
  @override
  _PaginaDeCadastroState createState() => _PaginaDeCadastroState();
}

class _PaginaDeCadastroState extends State<PaginaDeCadastro> {
  final _myProdutosList = [MyProdutos("Corsair Memória RAM 2600MHZ", "240", "3", "https://im.promobit.com.br/295197101915980249344523131878.png", "09580400"),
    MyProdutos("NVIDIA Placa de Video RTX3080", "11999", "3", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRcOoiLFo_Wo0Inh0VJOCRGhgNvW5O2G-IlA&usqp=CAU", "09895400"),
    MyProdutos("Thermaltake Gabinete Commander G41", "1099", "12", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRisKDYoykPk_jm3B9HFVoYCcVuSo99Z3b_zQ&usqp=CAU", "04166001"),
  ];

  final controladorNome = TextEditingController();

  final controladorValor = TextEditingController();

  final controladorQuantidade = TextEditingController();

  final controladorUrlImage = TextEditingController();

  final controladorCep = TextEditingController();

  var _logoempresa = "assets/logo_empresa.jpg";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
        drawer: new Drawer(
          child: ListView.builder(
            itemBuilder: (context, index){
              return ListTile(
                title: Text(_myProdutosList[index].nome),
                subtitle: Text("R\$ " + _myProdutosList[index].valor),
                trailing: Icon(Icons.keyboard_arrow_right),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaginaEstoque(nome: _myProdutosList[index].nome, valor: _myProdutosList[index].valor , quantidade: _myProdutosList[index].quantidade, urlImage: _myProdutosList[index].image, cep: _myProdutosList[index].cep),
                    ),
                  );
                },
                leading: Image.network(_myProdutosList[index].image),
              );
            },
            itemCount: _myProdutosList.length,
          ),
        ),

          appBar: new AppBar(
            title: Text("Cadastro de vendas", style: GoogleFonts.arimo(),),
            backgroundColor: Colors.redAccent.shade200,
            leading: Builder(
              builder: (context) => IconButton(
                icon: new Icon(IconData(60098, fontFamily: 'MaterialIcons', matchTextDirection: true)),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
          ),

          
        backgroundColor: Colors.white,
          body: ListView(
            children: [Column(
              children: [
                SizedBox(width:350, height: 150,child: Image.asset(_logoempresa)),
                meuTextField(controladorNome, "Informe o nome do produto: ", "Nome:", Icon(IconData(57602, fontFamily: 'MaterialIcons'))),
                meuTextField(controladorValor, "Informe o valor do produto: ", "Valor:", Icon(IconData(58005, fontFamily: 'MaterialIcons'))),
                meuTextField(controladorQuantidade, "Informe a quantidade deste produto: ", "Quantidade:", Icon(IconData(57378, fontFamily: 'MaterialIcons'))),
                meuTextField(controladorUrlImage, "Informe a URL da imagem do produto: ", "URL Imagem:", Icon(Icons.image)),
                meuTextField(controladorCep, "Informe o CEP do destino do produto: ", "CEP:", Icon(IconData(60419, fontFamily: 'MaterialIcons'))),
                Text(" "),
                FlatButton(
                    color: Colors.redAccent.shade200,
                    splashColor: Colors.blueAccent,
                    onPressed: (){
                      adicionar_novo_registro();
                    },
                    child: Text("Cadastrar", style: GoogleFonts.arimo(),), textColor: Colors.white,
                ),
              ],

            ),]
          )

      ),
    );
  }

  Widget meuTextField(TextEditingController controlador, String hint, String label, Icon icone) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(controller: controlador, decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          icon: icone,
      ),),
    );
  }

  void adicionar_novo_registro() {
    setState(() {
      _myProdutosList.add(MyProdutos(controladorNome.text, controladorValor.text,controladorQuantidade.text, controladorUrlImage.text, controladorCep.text));
    });
  }}