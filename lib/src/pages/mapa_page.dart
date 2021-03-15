///import 'dart:js';

import 'package:flutter/material.dart';
class MapaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textoRuta = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Scaffold(appBar: AppBar(
        title: Text('Pagina de Mapa'),
        ),
        body: Center(
          child: Text('Esta es la pagina de $textoRuta'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_left)  ,
          onPressed: (){
             Navigator.pop(context);
          },
          ),
        ),
    );
  }
}