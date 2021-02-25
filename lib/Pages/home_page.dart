import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_cube/Components/Body.dart';
import 'package:flutter_cube/Models/getPopularArticle.dart';
import 'package:flutter_cube/Pages/Acount.dart';
import 'package:flutter_cube/Pages/Forum.dart';
import 'package:flutter_cube/Pages/Quiz.dart';
import 'package:flutter_cube/Models/Article.dart';

class home_page extends StatefulWidget {
  home_page({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _home_page_State createState() => _home_page_State();
}

class _home_page_State extends State<home_page> {
  String _choix = "Aucun choix";

  bool isLoading = false;
  List<Article> article;

  getPopularArticle popularArticle = getPopularArticle();


  @override
  void initState() {
    super.initState();
    //getPopularArticle().then((value){
    //  print('Async done');
    //});
    asyncMethod();

  }

  void asyncMethod() async {
    await popularArticle.getFromApi();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 39, 78, 168),
        title: Text(widget.title),
        centerTitle: true,

      ),

      body:
      Center(
        child:
          Body(),
      ),

      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu', style: TextStyle(color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 39, 78, 168),
              ),
            ),
            ListTile(
              title: Text('Mon Compte'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return Acount(title: "Acount",);
                    })
                );
              },
            ),
            ListTile(
              title: Text('Forums'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return Forum(title: "Forum",);
                    })
                );
              },
            ),
            ListTile(
              title: Text('Quiz'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return Quiz(title: "Quiz",);
                    })
                );
              },
            ),
          ],
        ),
      ),
    );
  }


}