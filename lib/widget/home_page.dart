// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'bookmark_beer_page.dart';
import 'formulario_beer_page.dart';
import 'list_beer_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int itemSelecionado = 0;

  final menuNavegacaoOpcoes = [
    Formulario(),
    ListBeer(),
    BookmarkBeer(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Bebidas"),
          backgroundColor: Colors.orange,
          iconTheme: IconThemeData(color: Colors.cyan)),
      body: Center(
        // child: Text("Meu Primeiro aplicativo em Flutter"),
        child: menuNavegacaoOpcoes.elementAt(itemSelecionado),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // ignore: prefer_const_literals_to_create_immutables
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle), label: "Adicionar"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Listar"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_add), label: "Favoritos")
        ],

        //indicar opção corrente (ou selecionada)
        currentIndex: itemSelecionado,
        fixedColor: Colors.deepPurple,
        onTap: nomeFuncaoOperacao,
      ),
    );
  }

  void nomeFuncaoOperacao(int index) {
    setState(() {
      itemSelecionado = index;
    });
  }
}
