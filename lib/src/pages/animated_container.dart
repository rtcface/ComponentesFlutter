import 'package:flutter/material.dart';
import 'dart:math';

class AnimadeContainerPage extends StatefulWidget {
  AnimadeContainerPage({Key key}) : super(key: key);

  @override
  _AnimadeContainerPageState createState() => _AnimadeContainerPageState();
}

class _AnimadeContainerPageState extends State<AnimadeContainerPage> {
  double _width=50.0;
  double _height=50.0;  
  Color _color=Colors.pink;  
  BorderRadiusGeometry _borderRadiusGeometry=BorderRadius.circular(0.5);  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
           title: Text('Animacion de contenedores'),
         ),
         body: Center(
           child: AnimatedContainer(
             duration: Duration( seconds: 1),
             curve: Curves.fastLinearToSlowEaseIn,
             width: _width,
             height: _height,
             decoration: BoxDecoration(
               borderRadius: _borderRadiusGeometry,
               color: _color,
             ),
           )
           ),
         floatingActionButton: FloatingActionButton(
           child: Icon(Icons.play_circle_fill),
           onPressed:_cambiarForma,
           ),
       );
       
  }

  void _cambiarForma() {  
      final random=Random();   
    setState((){    
    _width=random.nextInt(300).toDouble();
    _height=random.nextInt(300).toDouble();;
    _color=Color.fromRGBO(random.nextInt(255),random.nextInt(255),random.nextInt(255),1 );
    _borderRadiusGeometry=BorderRadius.circular(random.nextInt(100).toDouble()); 
    });
  } 
}