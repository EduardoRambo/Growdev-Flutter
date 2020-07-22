import 'package:flutter/material.dart';
import 'package:lista/data/produto.dart';

class ListaDeProdutos extends StatefulWidget {
  static String routeName = '/lista';
  @override
  _ListaDeProdutosState createState() => _ListaDeProdutosState();
}

class _ListaDeProdutosState extends State<ListaDeProdutos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text('Lista de produtos'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        //carregar a imagem do produto pelo  file image = path FileImage(File(path))Image.file(File(path))
        itemCount: Produto.produtos.length,
        itemBuilder: (context, index) => Column(
          children: <Widget>[
            Image(
              image: FileImage(Produto.produtos.elementAt(index).foto),
            ),
            Text(Produto.produtos.elementAt(index).nome),
            SizedBox(height: 8),
            Text(Produto.produtos.elementAt(index).descricao),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
