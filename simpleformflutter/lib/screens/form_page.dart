import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:cnpj_cpf_helper/cnpj_cpf_helper.dart';
import 'package:simpleformflutter/entities/address.dart';
import 'package:simpleformflutter/entities/user.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();
  final _user = User(address: Address());

  TextEditingController nameField = TextEditingController();
  TextEditingController emailField = TextEditingController();
  TextEditingController cpfField = TextEditingController();
  TextEditingController zipCodeField = TextEditingController();
  TextEditingController publicPlaceField = TextEditingController();
  TextEditingController numberField = TextEditingController();
  TextEditingController neighborhoodField = TextEditingController();
  TextEditingController streetField = TextEditingController();
  TextEditingController cityField = TextEditingController();
  TextEditingController stateField = TextEditingController();
  TextEditingController countryField = TextEditingController();

  void _alertDialog(User user) {
    showDialog(
        context: context,
        builder: (ctx) {
          return AlertDialog(
            title: Text('Dados: ${user.name}'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('Nome:'),
                  Text('${user.name}'),
                  Text('Email:'),
                  Text('${user.email}'),
                  Text('CPF:'),
                  Text('${user.cpf}'),
                  Text('Endereço:'),
                  Text('${user.address.toString()}'),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de cadastro'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        cursorColor: Colors.red,
                        decoration: InputDecoration(
                          labelText: 'Seu nome',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                        controller: nameField,
                        validator: (value) {
                          if (value.length < 3) {
                            return 'Nome muito curto.';
                          }
                          if (value.length > 30) {
                            return 'Nome muito longo.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _user.name = value;
                        },
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Colors.red),
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                        controller: emailField,
                        validator: (value) {
                          if (!EmailValidator.validate(value)) {
                            return 'Digite um e-mail válido.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _user.email = value;
                        },
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'CPF',
                          border: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                          ),
                        ),
                        controller: cpfField,
                        validator: (value) {
                          if (!CnpjCpfBase.isCpfValid(value)) {
                            return 'Digite um CPF válido.';
                          }
                          return null;
                        },
                        onChanged: (value) {
                          return CnpjCpfBase.maskCpf(value);
                        },
                        onSaved: (value) {
                          _user.cpf = value;
                        },
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'CEP',
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                ),
                              ),
                              controller: zipCodeField,
                              validator: (value) {
                                if (value.length < 3) {
                                  return 'CEP muito curto.';
                                }
                                if (value.length > 30) {
                                  return 'CEP muito longo.';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _user.address.zipCode = value;
                              },
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            flex: 1,
                            child: RaisedButton(
                              onPressed: () {
                                print('Buscando');
                              },
                              child: Text('Buscar CEP'),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Rua',
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                ),
                              ),
                              controller: publicPlaceField,
                              validator: (value) {
                                if (value.length < 3) {
                                  return 'Nome da rua muito curto.';
                                }
                                if (value.length > 30) {
                                  return 'Nome da rua muito longo.';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _user.address.publicPlace = value;
                              },
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Número',
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                ),
                              ),
                              controller: numberField,
                              onSaved: (value) {
                                _user.address.number = value;
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Bairro',
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                ),
                              ),
                              controller: neighborhoodField,
                              validator: (value) {
                                if (value.length < 3) {
                                  return 'Muito curto.';
                                }
                                if (value.length > 30) {
                                  return 'Muito longo.';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _user.address.neighborhood = value;
                              },
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Cidade',
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                ),
                              ),
                              controller: cityField,
                              validator: (value) {
                                if (value.length < 3) {
                                  return 'Muito Curto.';
                                }
                                if (value.length > 30) {
                                  return 'Muito Longo.';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _user.address.city = value;
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'UF',
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                ),
                              ),
                              controller: stateField,
                              validator: (value) {
                                if (!(value.length == 2)) {
                                  return 'UF inválido.';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _user.address.state = value;
                              },
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'País',
                                border: OutlineInputBorder(),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                ),
                              ),
                              controller: countryField,
                              validator: (value) {
                                if (value.length < 3) {
                                  return 'Muito Curto';
                                }
                                if (value.length > 30) {
                                  return 'Muito Longo.';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _user.address.country = value;
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: RaisedButton(
                      onPressed: () {
                        nameField.clear();
                        emailField.clear();
                        cpfField.clear();
                        zipCodeField.clear();
                        publicPlaceField.clear();
                        numberField.clear();
                        neighborhoodField.clear();
                        cityField.clear();
                        stateField.clear();
                        countryField.clear();
                      },
                      child: Text('Limpar'),
                    ),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    flex: 3,
                    child: RaisedButton(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          setState(() {
                            _formKey.currentState.save();
                          });
                          _alertDialog(_user);
                        }
                      },
                      child: Text('Cadastrar'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
