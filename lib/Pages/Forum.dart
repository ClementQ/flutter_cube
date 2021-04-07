import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/Components/Post.dart';
import 'package:flutter_cube/Models/Article.dart';
import 'package:flutter_cube/Models/getPopularArticle.dart';
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

  List<Article> article;
  int count;

  void initState(){
    super.initState();
    asyncMethod();
  }

  Future<void> asyncMethod() async {
    getPopularArticle().getFromApi().then((item){
      setState(() {
        article=item;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(255,39,78,168),
        centerTitle: true,

      ),
      body:
      SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Row(
                children: [
                  Expanded(
                    child:  Container(

                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("Assets/Images/ministere-energie_fiche.jpg"),
                                fit: BoxFit.cover,
                              )
                            ),
                      child: Center(
                        child:
                          Text("Sont disponibles ici les différent posts", style: TextStyle(color: Colors.greenAccent, fontWeight: FontWeight.bold),),
                      )
                    ),
                  ),
                ],
              ),
            ),


            for (var i = 0; i < article.length; i++) Post(index :i,redirect: false,),
          ],
        ),
      ),
            // Post(index: 1),
            // Post(index: 2),
            // Post(index: 3),
            // Post(index: 4),
            // Post(index: 5),

    );
  }
}