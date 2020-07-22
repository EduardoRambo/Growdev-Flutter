import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lista/data/produto.dart';

class Cadastro extends StatefulWidget {
  static String routeName = '/cadastro';

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _imagePicker = ImagePicker();
  
  File _file;
  TextEditingController _nome = TextEditingController();
  TextEditingController _descricao = TextEditingController();
  
  Produto produto = Produto();


  void save() {
    produto.nome = _nome.text;
    produto.descricao = _descricao.text;
    produto.foto = _file;
    Produto.produtos.add(produto);
    Navigator.of(context).pop();
  }

  Future<void> _tirarFoto() async {
    var _pickedFile = await _imagePicker.getImage(source: ImageSource.camera);
    setState(() {
      _file = File(_pickedFile.path);
    });
  }

  @override
  void dispose() {
    _nome.dispose();
    _descricao.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: Text('Cadastro'),
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
        children: <Widget>[
          Form(
            child: Column(
              children: <Widget>[
                 _file == null
                    ? Text('Nenhuma foto encontrada')
                    : FadeInImage(
                      height: 200,
                        image: FileImage(_file),
                        placeholder: AssetImage('assets/loading.gif'),
                      ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nome'),
                  controller: _nome,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Descrição'),
                  controller: _descricao,
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: RaisedButton.icon(
                        onPressed: () {
                          save();
                        },
                        icon: Icon(Icons.save),
                        label: Text('Cadastrar'),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: RaisedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.cancel),
                        label: Text('Cancelar'),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: RaisedButton.icon(
                        onPressed: () {
                          save();
                        },
                        icon: Icon(Icons.file_download),
                        label: Text('Ir para galeria'),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      flex: 1,
                      child: RaisedButton.icon(
                        onPressed: _tirarFoto,
                        icon: Icon(Icons.camera),
                        label: Text('Tirar foto'),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
