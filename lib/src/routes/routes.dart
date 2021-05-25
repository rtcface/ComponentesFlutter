import 'package:flutter/material.dart';
//my imports
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/inpunts_page.dart';
import 'package:componentes/src/pages/slider_page.dart';
import 'package:componentes/src/pages/listview_page.dart';


Map<String,WidgetBuilder> getAppicationRouts()
{

return <String,WidgetBuilder>{
        'alert'     : (BuildContext context) => AlertPage(),
        '/'         : (BuildContext context) => HomePage(),
        'avatar'    : (BuildContext context) => AvatarPage(),
        'card'      : (BuildContext context) => CardPage(),
        'animated'  : (BuildContext context) => AnimadeContainerPage(),
        'inputs'    : (BuildContext context) => InputsPages(),
        'sliders'   : (BuildContext context) => SliderPage(),
        'listviews' : (BuildContext context) => ListviewPage()
      };
}
