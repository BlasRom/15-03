   import 'package:flutter/material.dart';
import 'package:prueba/src/pages/api2_page.dart';
//import 'package:prueba/src/pages/api_page.dart';
import 'package:prueba/src/pages/billetera_page.dart';
//import 'package:prueba/src/pages/formulario_page.dart';
import 'package:prueba/src/pages/fotos_page.dart';
import 'package:prueba/src/pages/lugares_page.dart';
import 'package:prueba/src/pages/mapa_page.dart';
import 'package:prueba/src/pages/podcast_page.dart';
import 'package:prueba/src/pages/secondform_page.dart';

   
   
   
   
   Map<String, WidgetBuilder> obtenerRutas(){
     return <String, WidgetBuilder> {
       '/': (BuildContext context) => Api2_page(),
       'mapa': (BuildContext context) => MapaPage(),
       'Billetera': (BuildContext context) => BilleteraPage(),
       'fotos': (BuildContext context) => FotosPage(),
       'Podcast': (BuildContext context) => PodcastPage(),
       'lugares':(BuildContext context) => LugaresPage(),
       'formulario dos':(BuildContext context) => SecondFormPage(),


     };
  }