import 'package:cartaonubankflip/cartao_nubank.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CartaoNubank(),
    );
  }
}
