import 'package:flutter/material.dart';
import 'cadastro.dart';
import 'lista_de_produtos.dart';

class Home extends StatefulWidget {
  static String routeName = '/';
  @override
  _HomeState createState() => _HomeState();
}

//lista cadastro home
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text('Home'),
      ),
      drawer: Drawer(
       
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.purple),
          ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.of(context).pushNamed(Home.routeName);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Lista de produtos'),
              onTap: () {
                Navigator.of(context).pushNamed(ListaDeProdutos.routeName);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.view_list),
              title: Text('Cadastrar produto'),
              onTap: () {
                Navigator.of(context).pushNamed(Cadastro.routeName);
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Text('Bem-Vindo!'),
        ),
      ),
    );
  }
}
