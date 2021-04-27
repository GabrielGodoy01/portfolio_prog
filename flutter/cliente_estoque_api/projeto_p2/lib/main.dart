import 'package:flutter/material.dart';
import 'package:projeto_p2/screens/pagina_de_cadastro.dart';
import 'package:projeto_p2/screens/pagina_estoque.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'P2 Vendas Flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PaginaDeCadastro(),
    );
  }
}