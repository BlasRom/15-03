import 'package:flutter/material.dart';
class BotonesPage extends StatefulWidget {
  BotonesPage({Key key}) : super(key: key);

  @override
  _BotonesPageState createState() => _BotonesPageState();
}

class _BotonesPageState extends State<BotonesPage> {
  String _buttontext=('');
  void _actionButton(String tipoBoton){
    setState(() {
          _buttontext=tipoBoton;
        });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
       appBar: AppBar(
         title: Text('Tipo de botones')),
         body: Center(
           child: Column(
             children:<Widget> [
               SizedBox(height: 50.0,),

               Container(
                 width: 250.0 ,
                 height: 100.0,
                 decoration: BoxDecoration(border: Border.all(color: Colors.blue, style: BorderStyle.solid),
                 ),
               child: RaisedButton(
                 color: Colors.blue,
                 textColor: Colors.white,
                 onPressed: () { 
                   String tipoBoton=('RaisedButton');
                  _actionButton(tipoBoton);
                  },
                 child: Text('RaisedButton'),
               ),
               ),
               SizedBox(height: 50.0,),

               Container(width: 250.0 ,
                 height: 100.0,
                 decoration: BoxDecoration(border: Border.all(color: Colors.blue, style: BorderStyle.solid),
                 ),
               child: FlatButton(
                 
                 onPressed: () {  
                   String tipoBoton=('FlatButton');
                   _actionButton(tipoBoton);
                 },
                 child: Text('FlatButton'),
               ),),
               SizedBox(height: 50.0,),

               Container(width: 250.0 ,
                 height: 100.0,
                 decoration: BoxDecoration(border: Border.all(color: Colors.blue, style: BorderStyle.solid),
                 ),
               child: IconButton(
                 icon: Icon(Icons.delete), onPressed: () { 
                   String tipoBoton=('IconButton');
                   _actionButton(tipoBoton);
                  },
                 color: Colors.blue,
                 iconSize: 50.0,
               ),),

              SizedBox(height: 50.0,),
              Container(
                 width: 250.0 ,
                 height: 50.0,
                child: OutlineButton(
                  textColor: Colors.blue,
                  color: Colors.blue, onPressed: () { 
                    String tipoBoton=('OutlineButton');
                   _actionButton(tipoBoton);
                   },
                  child: Text('OutlineButton'),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                  ), 
               ),
            SizedBox(height: 50.0,),
            Container(child: Text('Presionaste el boton: $_buttontext '),)


             ],) ,),
    );
  }
}