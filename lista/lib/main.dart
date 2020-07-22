import 'package:flutter/material.dart';
import 'package:lista/screens/cadastro.dart';
import 'package:lista/screens/lista_de_produtos.dart';
import 'package:lista/screens/home.dart';
import 'package:lista/utils/app_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List',
      routes: {
        AppRoutes.HOME: (ctx) => Home(),
        AppRoutes.LISTADEPRODUTOS: (ctx) => ListaDeProdutos(),
        AppRoutes.CADASTRO: (ctx) => Cadastro(),
      },
    );
  }
}
