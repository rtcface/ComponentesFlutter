import 'package:flutter/material.dart'; 

class HomePageTemp extends StatelessWidget {

  final _options= ['Uno','Dos','Tres','Cuatro','Cinco','Seis','Siete'];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _creaOtraLista(),
      ),
    );
  }

List<Widget> _creaLista()
{
  List<Widget> lista=[];

    for (String opt in _options) {
      final tempWidget=ListTile(
        title: Text(opt),

      );
      
      lista..add(tempWidget)
           ..add(Divider(
             color: Colors.blue,
             height:16 ,
           ));
      
    }

  return lista;
}

List<Widget> _creaOtraLista()
{
  return _options.map((item) {
    return Column(
      children: [
        ListTile(
          title: Text(item+' !!!'),
          subtitle: Text('Información detallada'),
          leading: Icon(Icons.account_balance_rounded),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {},
        ),
        Divider(
             color: Colors.blue,
             height:16 ,
           )

      ],
    );
  }
  ).toList();

 
}


}