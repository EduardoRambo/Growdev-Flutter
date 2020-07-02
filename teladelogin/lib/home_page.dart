import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height/2.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue, 
                      Colors.blueAccent
                      ],
                    ),
                borderRadius:BorderRadius.only(
                  bottomLeft: Radius.circular(90)
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(Icons.person,
                      size: 90,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),

                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 32,
                        bottom: 32
                        ),
                      child: Text('Login',
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 18 
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            Container(
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 62),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 50,
                    padding: EdgeInsets.only(
                      top: 4, left: 16, right: 16, bottom: 4
                      ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12, 
                            blurRadius: 5
                            ),
                        ]
                    
                      ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.email,
                          color: Colors.grey,
                        ),
                        hintText: 'Email',
                      ),
                    ),
                  ),
                   
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 50,
                    margin: EdgeInsets.only(top: 32),
                    padding:
                        EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12, 
                            blurRadius: 5),
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.vpn_key,
                          color: Colors.grey,
                        ),
                        hintText: 'Password',
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                       padding: const EdgeInsets.only(
                        top: 16, right: 32
                      ),
                      child: Text('Forgot Password ?',
                        style: TextStyle(
                          color: Colors.grey
                     ),
                    ),
                   ), 
                  ),
                  Spacer(),
                    
                  Container( 
                    height: 50,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                     gradient: LinearGradient(
                       colors: [ 
                       Colors.blue, 
                       Colors.blue
                       ],  
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(50)
                      ),
                    ),
                   child: Center(
                    child: Text('Login'.toUpperCase(),
                     style:TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold
                       ),
                     ),
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
