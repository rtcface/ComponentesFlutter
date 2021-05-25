import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//Mis imports
import 'package:componentes/src/pages/alert_page.dart';

//import 'package:componentes/src/pages/home_temp.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
       supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('es', ''), // Spanish, no country code
      ],
      title: 'Material App',
      //home: HomePage()
      initialRoute: '/',
      routes: getAppicationRouts(),
      onGenerateRoute: (RouteSettings settings)
      {
        print('LLamada a la ruta ${ settings.name }');


        return MaterialPageRoute(
          builder: ( BuildContext context) => AlertPage()
        );
      },
    );
  }
} 