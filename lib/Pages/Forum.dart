import 'package:flutter/material.dart';
import 'package:flutter_cube/Components/Post.dart';
import 'package:flutter_cube/Pages/Acount.dart';
import 'package:flutter_cube/Pages/Forum.dart';
import 'package:flutter_cube/Pages/Quiz.dart';
import 'package:flutter_cube/Pages/home_page.dart';

class Forum extends StatefulWidget {
  Forum({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Forum_State createState() => _Forum_State();
}

class _Forum_State extends State<Forum> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(255,39,78,168),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            Post(index: 1),
            Post(index: 2),
            Post(index: 3),
            Post(index: 4),
            Post(index: 5),
          ],
        )


      ),
    );
  }
}