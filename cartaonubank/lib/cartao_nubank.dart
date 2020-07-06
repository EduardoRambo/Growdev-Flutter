import 'dart:ui';
import 'package:flutter/material.dart';

class CartaoNubank extends StatefulWidget {
  @override
  _CartaoNubankState createState() => _CartaoNubankState();
}

class _CartaoNubankState extends State<CartaoNubank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cartão nubank'),
        backgroundColor: Color.fromRGBO(109, 33, 119, 1),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(150, 33, 119, 1),
        child: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height / 3.6,
                    width: MediaQuery.of(context).size.width / 1.1,
                    margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(109, 33, 119, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          height: 64,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                        ),
                        Container(
                          width: 100,
                          height: 75,
                          margin: EdgeInsets.only(top: 150, left: 270),
                          child: Image.asset(
                            'assets/cirrus.png',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 180, left: 30),
                          child: Text('9999 9999 9999 9999',
                              style: TextStyle(color: Colors.white),
                              textScaleFactor: 1.5),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 200),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 260, left: 20),
                          height: MediaQuery.of(context).size.height / 3.6,
                          width: MediaQuery.of(context).size.width / 1.1,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(109, 33, 119, 1),
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 327,
                            left: 34,
                          ),
                          width: 100,
                          height: 50,
                          child: Image.asset(
                            'assets/chip.png',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 335,
                            left: 127,
                          ),
                          width: 20,
                          height: 30,
                          child: Image.asset(
                            'assets/nfc.png',
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 380, left: 30),
                          width: 130,
                          height: 120,
                          child: Image.asset(
                            'assets/nu_logo.png',
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 250, left: 290),
                          width: 100,
                          height: 100,
                          child: Image.asset(
                            'assets/mastercard.png',
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 433, left: 150),
                          child: Text(
                            'Eduardo Rambo Lima',
                            textScaleFactor: 1.5,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
