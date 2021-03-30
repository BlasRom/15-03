


import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:prueba/models/gif_models.dart';

class ApiPage extends StatefulWidget {
  const ApiPage({Key key}) : super(key: key);

  @override
  _ApiPageState createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  
  Future<List<Gif>> _listaGifs;

  Future<List<Gif>> _obtenerGifs() async {
    List<Gif> gifs=[];
    final response = await http.get(Uri.parse('https://api.giphy.com/v1/gifs/trending?api_key=kepkTUz91laT8gzo7rwBxs80bjwSFMsi&limit=20&rating=pg-13'));
    if(response.statusCode==200){
     String body = utf8.decode(response.bodyBytes);
     final jsonData = jsonDecode(body);
     for(var item in jsonData['data']){
       gifs.add(
         Gif(name: item['title'], url: item['images']['downsized']['url'])
       );
     }
     // print(response.body);
    }
    else{
      throw Exception ('fallo la llamada API');
    }
    return gifs;
  }
  @override
  void initState(){
    super.initState();
    _listaGifs = _obtenerGifs();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Llamada a Api'),
        ) ,
        body: Center(
          child: FutureBuilder(
          future: _listaGifs,
          initialData: List<Gif>.empty(),
          builder: (context, snapshot){
          if(snapshot.hasData){

            return
            GridView.count(crossAxisCount:2, children: _listadoGifs(snapshot.data),
            );
              //print(snapshot.data);
              //return Text('Datos recibidos');
          }
          else if(snapshot.hasError){
              print(snapshot.error);
              return Text('Error al conectar a la API');
          }
          return Center(child: CircularProgressIndicator());
          },
           ),
        ),
    );
  }
  List<Widget> _listadoGifs(List<Gif> data){
    List<Widget> gifList=[];
    for(var gif in data){
      gifList.add(
      Card(child: Column(
        children: [
          //Padding: padding: const EdgeInsets.all(8.0), 
          Expanded(child: Image.network(gif.url, fit: BoxFit.fill,),
         // Text(gif.name)
          ),
        ],),)
      );
    }
    return gifList;
  }
}

