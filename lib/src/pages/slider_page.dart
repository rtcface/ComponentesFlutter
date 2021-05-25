import 'dart:ffi';

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  
  double _valorSlider=100.0;
  bool   _bloquearCheck=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Slider Example'),
      ),
      body: Container(
        padding: EdgeInsets.only(
          top:50.0
          ),
        child: Column(
          children: <Widget>[
            _creaSlider(),
            Divider(),
            _crearCheckBox(),
            Divider(),
            _crearSwitch(),
            Divider(),
            Expanded(child: _crearImagen())
          ],
        ),
        ),
      );
  }

  _creaSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen',
      onChanged: (_bloquearCheck) ? null : (valor) {
           setState(() {
           print(valor);
        _valorSlider=valor;
        });
      },
      value: _valorSlider,
      min: 1.0,
      max: 400.0,
    ) ;
  }

  Widget _crearCheckBox() {
    return CheckboxListTile(
      title: Text('Bloquea el tamaño'),
      value: _bloquearCheck, 
      onChanged: (value){
        setState(() {
          _bloquearCheck=value;          
        });        
      } 
      );
    
    
    
    /*Checkbox(
      value: _bloquearCheck, 
      onChanged: (value){
        setState(() {
          _bloquearCheck=value;          
        });        
      } 
      );*/
  }
  Widget _crearSwitch() {
     return SwitchListTile(
      title: Text('Bloquea el tamaño'),
      value: _bloquearCheck, 
      onChanged: (value){
        setState(() {
          _bloquearCheck=value;          
        });        
      } 
      );
    

  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw4WoinsHsSabJ-FGweqHhWBllypszuIbWzg&usqp=CAU'),
      width: _valorSlider,
      fit: BoxFit.contain,
      );
  }


}