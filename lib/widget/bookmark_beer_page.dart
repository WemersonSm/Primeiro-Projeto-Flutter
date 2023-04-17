// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class BookmarkBeer extends StatefulWidget {
  const BookmarkBeer({Key? key}) : super(key: key);

  @override
  BookmarkBeerState createState() => BookmarkBeerState();
}

class BookmarkBeerState extends State<BookmarkBeer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Favoritos"),
          backgroundColor: Colors.orange,
          iconTheme: IconThemeData(color: Colors.cyan)),
      body: Center(
        child: Text("Estou na Pagina BookmarkBeer"),
      ),
      //  bottomNavigationBar: BottomNavigationBar(
      // ignore: prefer_const_literals_to_create_immutables
      //     items: <BottomNavigationBarItem>[
      //    BottomNavigationBarItem(
      //       icon: Icon(Icons.add_circle), label: "Adicionar"),
      //   BottomNavigationBarItem(icon: Icon(Icons.list), label: "Listar"),
      //   BottomNavigationBarItem(
      //       icon: Icon(Icons.bookmark_add), label: "Favoritos")
      //  ]),
    );
  }
}
