import 'package:flutter/material.dart';
import 'package:flutter_cube/Components/InfoAcount.dart';
import 'package:flutter_cube/Components/Message.dart';
import 'package:flutter_cube/Models/Login.dart';
import 'package:flutter_cube/Pages/Acount.dart';
import 'package:flutter_cube/Pages/Conversation.dart';
import 'package:flutter_cube/Pages/Forum.dart';
import 'package:flutter_cube/Pages/Quiz.dart';
import 'package:flutter_cube/Pages/home_page.dart';
import 'package:flutter_cube/Components/Connexion.dart';

class ListConversation extends StatefulWidget {
  ListConversation({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ListConversation_State createState() => _ListConversation_State();
}

class _ListConversation_State extends State<ListConversation> {

  List<String> list = ["Romain Allard","Jean-Eud Marochin","Christophe DuChar"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(255, 39, 78, 168),
        centerTitle: true,

      ),
      body:
        ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Row(
                  children: [
                    Expanded(
                        child: Container(
                            height: 50,
                            child: Card(
                              elevation: 2,
                              child: Row(
                                children: [
                                  Icon(Icons.verified_user),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (BuildContext context) {
                                            return Conversation(title: "${widget.title}",);
                                          })
                                      );
                                    },
                                    child: new Padding(
                                      padding: new EdgeInsets.all(10.0),
                                      child: Text("${list[index]}", style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 13,
                                          decoration: TextDecoration.none)),
                                    ),
                                  ),
                                ],
                              )
                            ),
                        ),
                    )
                ],
              );
            }
        )
      );
  }
}