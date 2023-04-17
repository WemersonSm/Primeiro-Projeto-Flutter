// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';

class ListBeer extends StatefulWidget {
  const ListBeer({Key? key}) : super(key: key);

  @override
  ListBeerState createState() => ListBeerState();
}

class ListBeerState extends State<ListBeer> {
  var pathArquivo = '/bebidas.json';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Lista de Bebidas"),
          backgroundColor: Colors.orange,
          iconTheme: IconThemeData(color: Colors.cyan)),
      body: Container(
        child: Center(
          //Recurso para consumir um dado de forma assincrona.
          //Teste recurso pode ser local ou remoto

          child: FutureBuilder(
            future: DefaultAssetBundle.of(context).loadString(pathArquivo),
            builder: (context, snapshot) {
              //Leu o arquivo e está atribuindo todos os dados para a variável bebidas;
              var bebidas = json.decode(snapshot.data.toString());

              return ListView.builder(
                itemBuilder: (context, index) {
                  var bebida = bebidas[index];
                  return Card(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text("Nome: " + bebida['name'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 23)),
                      Text("País: " + bebida['country'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Text("Teor Alcol.: " + bebida['abv'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Image.network(bebida['image'], height: 200)
                    ],
                  ));
                },
                itemCount: bebidas == null ? 0 : bebidas.length,
              );
            },
          ),
        ),
      ),
      //bottomNavigationBar: BottomNavigationBar(
      // ignore: prefer_const_literals_to_create_immutables
      /// items: <BottomNavigationBarItem>[
      //  BottomNavigationBarItem(
      //     icon: Icon(Icons.add_circle), label: "Adicionar"),
      //  BottomNavigationBarItem(icon: Icon(Icons.list), label: "Listar"),
      // BottomNavigationBarItem(
      //     icon: Icon(Icons.bookmark_add), label: "Favoritos")
      //  ]),
    );
  }
}
