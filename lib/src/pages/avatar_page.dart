import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(2.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://www.cinemascomics.com/wp-content/uploads/2020/12/tony-stark-iron-man-vengadores-endgame-960x720.jpg'),
              radius: 27.0
               ,),
          ),
          Container(
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.blueGrey,
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: FadeInImage(
            image: NetworkImage('https://www.xtrafondos.com/wallpapers/cyberpunk-tony-stark-fanart-3235.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif') ,
            fadeInDuration: Duration( milliseconds:250,
          ),
      ),
        ),
      )
    );
  }
}