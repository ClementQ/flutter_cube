import 'package:flutter/material.dart';
import 'package:flutter_cube/Components/InfoAcount.dart';
import 'package:flutter_cube/Components/Message.dart';
import 'package:flutter_cube/Models/Login.dart';
import 'package:flutter_cube/Pages/Acount.dart';
import 'package:flutter_cube/Pages/Forum.dart';
import 'package:flutter_cube/Pages/Quiz.dart';
import 'package:flutter_cube/Pages/home_page.dart';
import 'package:flutter_cube/Components/Connexion.dart';

class Conversation extends StatefulWidget {
  Conversation({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Conversation_State createState() => _Conversation_State();
}

class _Conversation_State extends State<Conversation> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(255, 39, 78, 168),
        centerTitle: true,

      ),
      body:Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Message(sender: "Romain Allard",content: "Salut !",isSender: true),
                      Message(sender: "Albertto DeNiños",content: "Bonjours, comment allez-vous ?",isSender: false),
                      Message(sender: "Romain Allard",content: "Bien et vous ?",isSender: true),
                      Message(sender: "Albertto DeNiños",content: "Je vais bien je vous remercie",isSender: false),
                      Message(sender: "Romain Allard",content: "J'aurais un question par rapport a votre post de la semaine dernière.",isSender: true),
                      Message(sender: "Albertto DeNiños",content: "Je vous en pris, posez votre question.",isSender: false),
                      Message(sender: "Romain Allard",content: "Je voulais savoir si le XXXXXX serais present pour XXXXX dans la XXXX de XXXXXX...",isSender: true),
                      Message(sender: "Albertto DeNiños",content: "Et bien je vous répondrais que XXXXX..",isSender: false),
                    ],
                  )

              ),
          ),
          Row(
            children: [
              Expanded(
                  child: Container(
                    child: TextFormField(
                      autocorrect: false,
                      decoration: new InputDecoration(
                        // labelText: "Some Text",
                        hintText: "Message",
                        labelStyle: TextStyle(fontSize: 16.0, color: Colors.black),
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)),
                      ),
                    ),
                  )),
              // Second child is button
              IconButton(
                icon: Icon(Icons.send),
                iconSize: 30.0,
                onPressed: () {},
              )
            ],
          )
        ],
      )

      );

  }
}