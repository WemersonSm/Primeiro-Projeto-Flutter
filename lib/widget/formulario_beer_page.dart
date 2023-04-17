// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  const Formulario({Key? key}) : super(key: key);

  @override
  FormularioState createState() => FormularioState();
}

class FormularioState extends State<Formulario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Adicione sua Bebida"),
          backgroundColor: Colors.orange,
          iconTheme: IconThemeData(color: Colors.cyan)),
      body: Center(
        child: Text("Estou na Pagina Formulário"),
      ),
      //  bottomNavigationBar: BottomNavigationBar(
      // ignore: prefer_const_literals_to_create_immutables
      // items: <BottomNavigationBarItem>[
      //  BottomNavigationBarItem(
      //      icon: Icon(Icons.add_circle), label: "Adicionar"),
      //  BottomNavigationBarItem(icon: Icon(Icons.list), label: "Listar"),
      //  BottomNavigationBarItem(
      //      icon: Icon(Icons.bookmark_add), label: "Favoritos")
      //  ]),
    );
  }
}
