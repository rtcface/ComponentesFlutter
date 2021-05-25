import 'package:flutter/material.dart';
import 'dart:async';

class ListviewPage extends StatefulWidget {
  ListviewPage({Key key}) : super(key: key);
  @override
  _ListviewPageState createState() => _ListviewPageState();
}

class _ListviewPageState extends State<ListviewPage> { 

   ScrollController _scrollController=new ScrollController();
   List<int> _listaNumeros=[];
   int _ultimoNumero=0;
   bool _isLoading=false;

  @override
  void initState() {
        // TODO: implement initState
    super.initState();
    _agregarImagenes();

    _scrollController.addListener(() {  
      if( _scrollController.position.pixels==_scrollController.position.maxScrollExtent ) {           
        fetchData();
      }            
    });   
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
        @override  
        Widget build(BuildContext context) {
       
          return Scaffold(
            appBar:AppBar(
              title: Text('Ejemplo de Listas'),       
            ) ,
            body: Stack(
              children: <Widget>[
                 _crearLista(),
                 _clearLoading()
              ],
            ),
          );
        }
      
        Widget _crearLista() {
          return RefreshIndicator(
              onRefresh: _updateList,
                            child: ListView.builder(
                            controller: _scrollController,
                            itemBuilder: (BuildContext context, int index)
                            {
                              final imagen=_listaNumeros[index];
                              return FadeInImage(
                                placeholder: AssetImage('assets/jar-loading.gif'),
                                image: NetworkImage('https://picsum.photos/500/300?random=$imagen'),
                                  fit: BoxFit.cover,
                                );
                                
                            },
                            itemCount: _listaNumeros.length,
                            
                            ),
                        );
                      }
                    
                    
                      void _agregarImagenes()
                      {
                        for(int i=1;i<10;i++)
                          {  
                            _ultimoNumero++;
                            _listaNumeros.add(_ultimoNumero);
                    
                          }
                          setState(() {});
                      }
                    
                      Future <Null> fetchData() async
                      {
                        _isLoading=true;
                        setState(() { });
                        final duration=new Duration(seconds: 2);
                        return  new Timer( duration,respuestaHttp );
                      }
              
                void respuestaHttp() {
                  _isLoading=false;
              
                _scrollController.animateTo(
                  _scrollController.position.pixels+100, 
                  duration: Duration(milliseconds: 200), 
                  curve: Curves.fastOutSlowIn);
              
                  _agregarImagenes();
                }
              
                Widget _clearLoading() {
                  if( _isLoading )
                  {
                    return Column(
                      mainAxisAlignment:MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: <Widget>[
                            CircularProgressIndicator(),
                          ],
                        ),
                        SizedBox(height: 20.0,)
                      ],
                      );
                    
                    
                    
                  }else
                  {
                    return Container();
                  }
                }
              
                Future<void> _updateList() async {
                  final duration=new Duration( seconds: 2 );
                  new Timer(duration,(){

                    _listaNumeros.clear();
                    _ultimoNumero++;
                    _agregarImagenes();

                  });

                  return Future.delayed(duration);

                }
}

