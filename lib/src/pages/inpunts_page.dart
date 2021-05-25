
import 'package:flutter/material.dart';

class InputsPages extends StatefulWidget {
  InputsPages({Key key}) : super(key: key);

  @override
  _InputsPagesState createState() => _InputsPagesState();
}

class _InputsPagesState extends State<InputsPages> {
  @override

  String _nombre='';
  String _correo='';
  String _fecha ='';
  String _opcionSeleccionada='Volar';
  List<String> _poderes= ['Volar','Rayos X','Vista Laser','Fuerza'];
  
  
  TextEditingController _inController=new TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Inputs page') ,        
        ),
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
          children: <Widget>[
            _creaInput(),
            Divider(),
            _creaInputMail(),
             Divider(),
            _creaInputPwd(),           
            Divider(),
            _creaInputFecha(context),
            Divider(),
            _creaInputDropdown(),
             Divider(),
            _crearUsuario(),
          ],
        ),
    );
  }

  Widget _creaInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Nombre del usuario',
        labelText: 'Nombre',
        helperText: 'Solo primer nombre',
        suffixIcon: Icon(Icons.accessibility_new_outlined),
        icon: Icon(Icons.account_circle_rounded),
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
        )
      ),
      onChanged: (dato)=>setState((){_nombre=dato;}),
    );
  }


  _creaInputMail() {
    return TextField(     
       keyboardType: TextInputType.emailAddress,   
      decoration: InputDecoration(       
        hintText: 'Correo del usuario',
        labelText: 'Correo',
        helperText: 'Correo personal',
        suffixIcon: Icon(Icons.alternate_email_rounded),
        icon: Icon(Icons.email_rounded),
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
        )
      ),
      onChanged: (dato)=> setState((){ _correo=dato;}),
    );
  }

  _creaInputPwd() {
     return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Contraseña',       
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock_open),
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
        )
      ),
      onChanged: (dato)=> setState((){ }),
    );
  }


  _creaInputFecha(BuildContext context) {
    return TextField(    
        controller: _inController, 
        enableInteractiveSelection: false,
        decoration: InputDecoration(       
        hintText: 'Fecha de nacimiento',
        labelText: 'Fecha de nacimiento',       
        suffixIcon: Icon(Icons.calendar_today_sharp),
        icon: Icon(Icons.calendar_view_day),
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
        )
      ),
     onTap: (){
       FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);

     },
    );
  }

 _selectDate(BuildContext context) async {

DateTime picked = await showDatePicker(
  context     : context,
  initialDate : new DateTime.now() ,
  firstDate   : new DateTime(2015),
  lastDate    : new DateTime(2030),
  locale      : Locale('es','ES')
     );

    if( picked != null ){
      setState((){
        _fecha=picked.toString();
        _inController.text=_fecha;

      });
    }
 


}


  List<DropdownMenuItem<String>> getOpcionesDropdown(){
    List<DropdownMenuItem<String>> lista= [];

    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));

     });
  return lista;
  }
  Widget _crearUsuario() {
    return ListTile(
      title: Text('Nombre del usuario es: $_nombre'),
      subtitle: Text('Correo personal: $_correo'),
      trailing: Text(_opcionSeleccionada),
    );
  }

  Widget _creaInputDropdown() {
    return 
    Row(
      children: <Widget>[
        Icon(Icons.select_all_outlined),
        SizedBox(
          width: 30.0
          ),
        Expanded(
            child: DropdownButton(
            value: _opcionSeleccionada,
            items: getOpcionesDropdown(),
            onChanged: (opt){
              setState(() {
                _opcionSeleccionada=opt;
              });             
            },
            ),
        ),
      ],
    );


  }
}







  