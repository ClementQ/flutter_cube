// import 'dart:html';

import 'dart:ui';

import 'package:flutter/material.dart';

class InfoAcount extends StatefulWidget {
  InfoAcount({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _InfoAcountState createState() => _InfoAcountState();
}



class _InfoAcountState extends State<InfoAcount> {
  @override


  Widget build(BuildContext context) {
    return
      SingleChildScrollView(
          child : Container(
            child:
            Column(
              children: [
                Text("Informations",
                    style: TextStyle(fontSize: 30)
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    readOnly: true,
                    initialValue: "email@domain.com",
                    decoration: InputDecoration(labelText: "Email",border: OutlineInputBorder(),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    readOnly: true,
                    initialValue: "Jean",
                    decoration: InputDecoration(labelText: "Firstname",border: OutlineInputBorder(),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    readOnly: true,
                    initialValue: "DeLaCrêpe",
                    decoration: InputDecoration(labelText: "Lastname",border: OutlineInputBorder(),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    readOnly: true,
                    initialValue: "75000",
                    decoration: InputDecoration(labelText: "Postal code",border: OutlineInputBorder()),
                  ),
                ),

              ],
            ),
          ),
      );

  }

}