import 'dart:core';
//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:prueba/src/routes/routes.dart';
/*import 'package:prueba/src/pages/billetera_page.dart';
import 'package:prueba/src/pages/fotos_page.dart';
import 'package:prueba/src/pages/home_page.dart';
import 'package:prueba/src/pages/lugares_page.dart';
import 'package:prueba/src/pages/mapa_page.dart';
import 'package:prueba/src/pages/podcast_page.dart';*/
//import 'package:prueba/src/pages/home_page.dart';

class MyApp extends StatelessWidget{
  /*final nombres = [
    'daniel',
    'jair'
  ];
  */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App',
      theme: ThemeData(primaryColor:
      Colors.blue,
      ),
     initialRoute: '/',
     routes: 
     obtenerRutas(),
     // home: HomePage(), 
      );
    }
 }
    
    
    /*Scaffold(
    appBar: AppBar( 
    title: Text('ListView'),
    ),
    body: ListView(children: _crearItems())));
  }

}

List<Widget> _crearItems(){
  List<Widget> lista= new List<Widget>();
  var nombres;
  for(var opt in nombres){
    final tempWidget = ListTile(
      title: Text(opt),
    );
    lista.add(tempWidget);
    lista.add(Divider());

  return lista;
  }
}
   */