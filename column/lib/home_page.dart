import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row e Column'),
      ),
      body: Row(
        children: <Widget>[
          FlutterLogo(
            size: 100,
          ),
          FlutterLogo(
            size: 100,
            colors: Colors.red,
          ),
          Text(
            'Teste',
            style: TextStyle(fontSize: 24),
          )
        ],
      ),
    );
  }
}

Widget coluna() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    verticalDirection: VerticalDirection.down,
    children: <Widget>[
      GestureDetector(
        child: FlutterLogo(
          size: 200,
          style: FlutterLogoStyle.horizontal,
        ),
        onTap: () => print('logo azul'),
      ),
      GestureDetector(
        child: FlutterLogo(
          size: 100,
          colors: Colors.red,
          style: FlutterLogoStyle.horizontal,
        ),
        onTap: () => print('logo vermelho'),
      ),
      GestureDetector(
        child: FlutterLogo(
          size: 100,
          colors: Colors.green,
        ),
        onTap: () => print('logo verde'),
      ),
      Text(
        'Texto',
        style: TextStyle(fontSize: 24),
      )
    ],
  );
}

Widget linha() {
  return Row(
    children: <Widget>[
      FlutterLogo(
        size: 100,
      ),
      FlutterLogo(
        size: 100,
        colors: Colors.red,
      ),
      Text(
        'Teste',
        style: TextStyle(fontSize: 24),
      )
    ],
  );
}
