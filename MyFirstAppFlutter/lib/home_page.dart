import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _calc = 1;

  void _clicarLongPress() {
    setState(() {
      _calc = 1;
    });
  }

  void _clicarOnTap() {
    setState(() {
      _calc = _calc * 2; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My first app")),
      body: GestureDetector(
        child: Center(
          child: Text(
            'calc $_calc',
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        onTap: _clicarOnTap,
        onLongPress: _clicarLongPress,
      ),
    );
  }
}
