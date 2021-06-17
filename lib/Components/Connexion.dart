// import 'dart:html';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_cube/Pages/NewAcount.dart';

class Connexion extends StatefulWidget {
  Connexion({Key key}) : super(key: key);


  @override
  _ConnexionState createState() => _ConnexionState();
}



class _ConnexionState extends State<Connexion> {
  @override


  Widget build(BuildContext context) {
    return
        Container(
          child:
            Column(
              children: [
                Text("Connexion",
                  style: TextStyle(fontSize: 45)
                ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Email'
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(25),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Password'
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50,right: 50,bottom: 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) {
                            return NewAcount(title: "New acount",);
                          })
                      );
                    },
                    child: new Padding(
                      padding: new EdgeInsets.all(10.0),
                      child: Text("Créer un compte maintenant.", style: TextStyle(
                          color: Colors.blue,
                          fontSize: 13,
                          decoration: TextDecoration.underline)),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 50,right:50,bottom: 50),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(textStyle:TextStyle(fontSize: 25),primary: Color.fromARGB(255, 39, 78, 168)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Text('Connexion'),
                            )
                          ),
                        )
                      ],
                    ),
                ),

              ],
            ),
        );
  }

}