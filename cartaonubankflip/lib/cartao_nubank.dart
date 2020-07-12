import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class CartaoNubank extends StatefulWidget {
  @override
  _CartaoNubankState createState() => _CartaoNubankState();
}

class _CartaoNubankState extends State<CartaoNubank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartão Nubank'),
        backgroundColor: Color.fromRGBO(109, 33, 119, 1),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
         color: Color.fromRGBO(153, 51, 153, 0.5),
        child: FlipCard(front: FrenteCartao(), back: VersoCartao()),
      ),
    );
  }
}

class FrenteCartao extends StatefulWidget {
  @override
  _FrenteCartaoState createState() => _FrenteCartaoState();
}

class _FrenteCartaoState extends State<FrenteCartao> {
String _nome = 'Eduardo Rambo Lima';

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: Stack(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 8.5 / 5.4,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(109, 33, 119, 1),
                    ),
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 40,
                  child: Image.asset('assets/chip.png', width: 50, height: 50),
                ),
                Positioned(
                  top: 1,
                  left: 285,
                  child: Image.asset('assets/mastercard.png',
                      width: 100, height: 100),
                ),
                Positioned(
                  top: 120,
                  left: 7,
                  child: Image.asset('assets/nu_logo.png',
                      width: 150, height: 150, color: Colors.white),
                ),
                Positioned(
                  left: 106,
                  top: 92,
                  child: Image.asset(
                    'assets/nfc.png',
                    width: 25,
                    height: 25,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  left: 150,
                  top: 190,
                  child: Text(
                    'Eduardo Rambo Lima',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
  }
}

class VersoCartao extends StatefulWidget {
  @override
  _VersoCartaoState createState() => _VersoCartaoState();
}

class _VersoCartaoState extends State<VersoCartao> {
  @override
  Widget build(BuildContext context) {
    return Column(
      
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: Stack(
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 8.5 / 5.4,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromRGBO(109, 33, 119, 1),
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 20,
                  child: Text('9999 9999 9999 9999', style: TextStyle(fontSize: 25) ),
                ),
                Positioned(
                  top: 25,
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
    );
  }
}
