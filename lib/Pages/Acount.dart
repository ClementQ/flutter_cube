import 'package:flutter/material.dart';
import 'package:flutter_cube/Pages/Acount.dart';
import 'package:flutter_cube/Pages/Forum.dart';
import 'package:flutter_cube/Pages/Quiz.dart';
import 'package:flutter_cube/Pages/home_page.dart';
import 'package:flutter_cube/Components/Connexion.dart';

class Acount extends StatefulWidget {
  Acount({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Acount_State createState() => _Acount_State();
}

class _Acount_State extends State<Acount> {

  bool isConnected = true;


  @override
  Widget build(BuildContext context) {
    if (isConnected == true) {
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Color.fromARGB(255, 39, 78, 168),
          centerTitle: true,

        ),
        body: Center(
            child:
                Connexion()

          // Text("${isConnected}")
        ),
      );
    } else if(isConnected == false){
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Color.fromARGB(255, 39, 78, 168),
          centerTitle: true,

        ),
        body: Center(
            child:

            Text("${isConnected}")
        ),
      );
    }

  }
}