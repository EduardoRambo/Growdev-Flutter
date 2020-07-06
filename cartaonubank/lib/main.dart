import 'package:flutter/material.dart';
import 'cartao_nubank.dart';

void main() {
runApp(MeuApp());

}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:CartaoNubank()
    );
  }
}