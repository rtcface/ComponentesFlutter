import 'package:flutter/material.dart';



final _icons=<String,IconData> {

'add_alert'         :Icons.add_alert,
'accessibility'     :Icons.accessibility,
'folder_open'       :Icons.folder_open,
'tag_faces_rounded' :Icons.tag_faces_rounded,
'input'             :Icons.input_sharp,
'slider'            :Icons.slideshow,
'list'              :Icons.list_alt,
};


Icon getIcon(String nombreIcono)
{
  return Icon( _icons[nombreIcono], color: Colors.blue,);
}