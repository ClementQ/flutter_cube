import 'package:flutter/material.dart';
import 'package:flutter_cube/Pages/Acount.dart';
import 'package:flutter_cube/Pages/Forum.dart';
import 'package:flutter_cube/Pages/Quiz.dart';
import 'package:flutter_cube/Pages/home_page.dart';

class Quiz extends StatefulWidget {
  Quiz({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Quiz_State createState() => _Quiz_State();
}

class _Quiz_State extends State<Quiz> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(255,39,78,168),
        centerTitle: true,

      ),
      body: Center(
          child:
          Text("Quiz")
      ),

    );
  }
}