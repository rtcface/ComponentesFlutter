import 'package:flutter/material.dart';

  class CardPage extends StatelessWidget {
  //const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Card Page')),
      body: ListView(        
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox( height : 30.0),
          _cardTipo2(),
          SizedBox( height : 30.0),
          _cardTipo2(),
          SizedBox( height : 30.0),
          _cardTipo2(),
          SizedBox( height : 30.0),
          _cardTipo2(),
          SizedBox( height : 30.0),
          _cardTipo2(),
          SizedBox( height : 30.0),
          _cardTipo2(),
          SizedBox( height : 30.0),
          _cardTipo2(),
          SizedBox( height : 30.0),
          _cardTipo2(),
          SizedBox( height : 30.0),
          _cardTipo2(),
          
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0) ),
      elevation: 4.0,
      child: Column(
        children: <Widget> [
        ListTile(
          title:Text('Titulo 1'),
          subtitle: Text('Esto es una prueba de mucho texto para ver que pasa con demaciado texto para tener una idea de como funciona la aplicacion de las tarjetas con mucho texto y mas informacion ademas mas mas tetxto'),
          leading: Icon( Icons.photo_album_rounded, color: Colors.blue, ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children:<Widget>[
            TextButton(onPressed: (){},
             child: Text('Cancelar')),
              TextButton(onPressed: (){},
             child: Text('Ok'))
          ],
          
        )
      ],
      )
      );   
  }

  _cardTipo2() {
    final card= Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('https://i.pinimg.com/originals/ea/00/0c/ea000cc6fb9375b14a7b21d55dcf9745.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 750),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          //Image(
          //image: NetworkImage('https://mymodernmet.com/wp/wp-content/uploads/2020/02/Landscape-Photographer-of-the-Year-Sander-Grefte.jpg'),
          //),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text('Esto es una prueba del texto')
            ),
        ],
      ),
    );

  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.white,
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0,10.0)  

        ),
      ]
    ),
    child: ClipRRect(
      child: card,
      borderRadius: BorderRadius.circular(30.0),),
  );

  }
}