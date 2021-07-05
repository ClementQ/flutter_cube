import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/Components/Post.dart';
import 'package:flutter_cube/Models/Article.dart';
import 'package:flutter_cube/Models/getPopularArticle.dart';

class NewPost extends StatefulWidget {
  NewPost({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NewPost_State createState() => _NewPost_State();
}

class _NewPost_State extends State<NewPost> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(255, 39, 78, 168),
        centerTitle: true,

      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child : Row(
                children :[
                  Padding(
                      padding: EdgeInsets.only(left: 25,top: 25),
                      child: Text("Title of post",style: TextStyle(fontSize: 25)),
                  )

                ]
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(25),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Title'
                  ),
                ),
              ),
            ),
            Center(
              child : Row(
                  children :[
                    Padding(
                      padding: EdgeInsets.only(left: 25,top: 25),
                      child: Text("Content of post",style: TextStyle(fontSize: 25)),
                    )

                  ]
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(25),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Content of post',
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(25),
                child: FloatingActionButton.extended(
                  label: Text("Upload the post"),
                  icon: Icon(Icons.upload),
                  onPressed: ()=>{}

                )
              ),
            ),
          ],
        ),
      ),
    );

  }
}