import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alertas Page'),
      ),
      body: Center(
        child     : ElevatedButton(
          child: Text('Mostrar Alerta'),
          onPressed: () => _mostrarAlerta(context),
          style: ElevatedButton.styleFrom(
            primary : Colors.blue,
            shape: StadiumBorder()
          ),            
          ),
          ),
       floatingActionButton: FloatingActionButton(
        child:Icon(Icons.access_alarm),
        onPressed: (){
          Navigator.pop(context);
        }  

        ,),
    );
  }

  _mostrarAlerta(BuildContext context) 
  {
    showDialog(
      context: context,
      barrierDismissible: true,
       builder: (context) {
         return AlertDialog(
           shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(20.0)  
           ),
           title: Text('Esto es una alerta'),
           content:Column(
             mainAxisSize: MainAxisSize.min,
             children: <Widget>[
             Text('Soy la caja de la alerta'),
             FlutterLogo(size:100.0)
           ],
           ),
          actions: <Widget>[
            TextButton (
              child: Text('Ok'),
              onPressed: ()=> Navigator.of(context).pop()
              ),
            TextButton (
               child: Text('Cancelar'),
              onPressed: ()=> Navigator.of(context).pop() ,
              ),
            
          ],
         );
       }
       );
    
  }
}