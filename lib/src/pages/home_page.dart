
//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:prueba/src/menu_providers.dart';
//import 'package:prueba/src/pages/mapa_page.dart';
import 'package:prueba/src/utils/icon_string_util.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Prueba de ListView'),),
    body: _lista(),);
    }
    Widget _lista(){
      return FutureBuilder(
      future: menuProvider.cargarDatos(),
      initialData:[],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _listaItems(context, snapshot.data),
        );
      },
      );
    }
    List<Widget> _listaItems(BuildContext context, List<dynamic> data){
      final List<Widget> opciones = [];

    data.forEach((opt){
     final widgetTemp = ListTile(
        leading: obtenerIcono(opt['icon']) ,
        title: Text(opt['texto']),
        trailing: Icon(Icons.keyboard_arrow_right, size: 35),
        onTap: (){
          /*final route=MaterialPageRoute(
            builder: (context){
              return MapaPage();
          });
          Navigator.push(context, route);*/

          Navigator.pushNamed(context,opt['ruta'], arguments: opt['ruta']);
        });
     opciones.add(widgetTemp);
     opciones.add(Divider());
    });
      return opciones;
    }
}