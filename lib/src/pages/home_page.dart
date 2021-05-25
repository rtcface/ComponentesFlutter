import 'package:flutter/material.dart';
//my imports
import 'package:componentes/src/utils/icono_string_utils.dart';
import 'package:componentes/src/providers/menu_provider.dart';
//import 'package:componentes/src/pages/alert_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

 Widget _lista() {
   //print(menuProvider.opciones);
   /*menuProvider.cargarData().then((opciones) {
      print('_Lista');
      print(opciones);
   });
   return ListView(
     children: _listaElementos(),
   );*/

  return FutureBuilder(
    future: menuProvider.cargarData(),
    initialData: [],
    builder: ( context, AsyncSnapshot<List<dynamic>> snapshot  )
    {
      return ListView(
        children: _listaElementos(snapshot.data, context),
      );      
    },

  );




 }

  List<Widget> _listaElementos(List<dynamic> data,BuildContext context) {
    final List<Widget>  opciones =[];

    data.forEach((opt) {
      final widgetTemp=  ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {

          Navigator.pushNamed(context, opt['ruta']);
         // final route=MaterialPageRoute(
         //   builder: ( context ) => AlertPage() 
         // );
         // //Navigator.push(context, route);

        },
      );     
      opciones..add(widgetTemp)
              ..add(Divider());
    });
    return opciones;
    }
}