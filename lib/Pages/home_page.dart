import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cube/Models/Article.dart';
import 'package:flutter_cube/Models/GetApi.dart';
import 'package:flutter_cube/Pages/Acount.dart';
import 'package:flutter_cube/Pages/Forum.dart';
import 'package:flutter_cube/Pages/Quiz.dart';
import 'package:flutter_cube/Pages/home_page.dart';

class home_page extends StatefulWidget {
  home_page({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _home_page_State createState() => _home_page_State();
}

class _home_page_State extends State<home_page> {
  String _choix = "Aucun choix";

  List<Article> article;


  @override
  void initState() {
    getPopularArticle().then((value){

      print('Async done');
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255,39,78,168),
        title: Text(widget.title),
        centerTitle: true,

      ),
      body: Center(
          child:
          ListView(
            children: [
              Column(
                children: [
                  Card(
                    elevation: 5,
                    color: Color.fromARGB(255,245,245,252),
                    margin: EdgeInsets.only(bottom: 20),
                    child: Padding(
                      padding: EdgeInsets.only(top: 10,bottom: 10, left: 20,right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Accueil",style: TextStyle(fontSize: 35,color: Color.fromARGB(255, 56, 113, 245)),)
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child:Text("Bienvenue sur l'application du ministère.\n\nLe ministère des Solidarités et de la Santé est chargé de la mise en œuvre de la politique du Gouvernement dans les domaines des affaires sociales, de la solidarité et de la cohésion sociale, de la santé publique et de la protection sociale.",style: TextStyle(fontSize: 15),)
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text("Post récent",style: TextStyle(fontSize: 20,decoration: TextDecoration.underline,color: Color.fromARGB(255, 56, 113, 245)),),

                  //ListView.builder(
                  //    itemBuilder: (context, index){
                  //      return Row(
                  //        children: [
                  //          Container(margin: EdgeInsets.only(top:5,bottom: 5,right: 20,left: 20),child: Text("coucou"),),
                  //        ],
                  //      );
                  //    }
                  //),


                  //container qui sera l'actu des posts
                  Container(
                    margin: EdgeInsets.only(top:5,bottom: 5,right: 20,left: 20),
                    child: Card(
                      elevation: 10,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child:  Row(
                              children: [
                                Expanded(
                                  child: Text("${article[0].Title}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Expanded(
                                  child:
                                  Card(
                                    elevation: 5.0,
                                    child: Container(
                                      //width: 350,
                                      height: 150,
                                      child: Image.network(
                                        "https://image.tmdb.org/t/p/original/${article[0].ImageUrl}",
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Text("${article[0].Overview}")
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (BuildContext context) {
                                    return Forum(title: "Forum",);
                                  })
                              );
                            },
                            child: new Padding(
                              padding: new EdgeInsets.all(10.0),
                              child:Text("Accéder au post",style: TextStyle(color: Colors.blue,fontSize: 13,decoration: TextDecoration.underline)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:5,bottom: 5,right: 20,left: 20),
                    child: Card(
                      elevation: 10,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child:  Row(
                              children: [
                                Expanded(
                                  child: Text("${article[1].Title}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Expanded(
                                  child:
                                  Card(
                                    elevation: 5.0,
                                    child: Container(
                                      //width: 350,
                                      height: 150,
                                      child: Image.network(
                                        "https://image.tmdb.org/t/p/original/${article[1].ImageUrl}",
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Text("${article[1].Overview}")
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (BuildContext context) {
                                    return Forum(title: "Forum",);
                                  })
                              );
                            },
                            child: new Padding(
                              padding: new EdgeInsets.all(10.0),
                              child:Text("Accéder au post",style: TextStyle(color: Colors.blue,fontSize: 13,decoration: TextDecoration.underline)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),Container(
                    margin: EdgeInsets.only(top:5,bottom: 5,right: 20,left: 20),
                    child: Card(
                      elevation: 10,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child:  Row(
                              children: [
                                Expanded(
                                  child: Text("${article[2].Title}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Expanded(
                                  child:
                                  Card(
                                    elevation: 5.0,
                                    child: Container(
                                      //width: 350,
                                      height: 150,
                                      child: Image.network(
                                        "https://image.tmdb.org/t/p/original/${article[2].ImageUrl}",
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Text("${article[2].Overview}")
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (BuildContext context) {
                                    return Forum(title: "Forum",);
                                  })
                              );
                            },
                            child: new Padding(
                              padding: new EdgeInsets.all(10.0),
                              child:Text("Accéder au post",style: TextStyle(color: Colors.blue,fontSize: 13,decoration: TextDecoration.underline)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),Container(
                    margin: EdgeInsets.only(top:5,bottom: 5,right: 20,left: 20),
                    child: Card(
                      elevation: 10,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child:  Row(
                              children: [
                                Expanded(
                                  child: Text("${article[3].Title}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Expanded(
                                  child:
                                  Card(
                                    elevation: 5.0,
                                    child: Container(
                                      //width: 350,
                                      height: 150,
                                      child: Image.network(
                                        "https://image.tmdb.org/t/p/original/${article[3].ImageUrl}",
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Text("${article[3].Overview}")
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (BuildContext context) {
                                    return Forum(title: "Forum",);
                                  })
                              );
                            },
                            child: new Padding(
                              padding: new EdgeInsets.all(10.0),
                              child:Text("Accéder au post",style: TextStyle(color: Colors.blue,fontSize: 13,decoration: TextDecoration.underline)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),Container(
                    margin: EdgeInsets.only(top:5,bottom: 5,right: 20,left: 20),
                    child: Card(
                      elevation: 10,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child:  Row(
                              children: [
                                Expanded(
                                  child: Text("${article[4].Title}",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Expanded(
                                  child:
                                  Card(
                                    elevation: 5.0,
                                    child: Container(
                                      //width: 350,
                                      height: 150,
                                      child: Image.network(
                                        "https://image.tmdb.org/t/p/original/${article[4].ImageUrl}",
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Text("${article[4].Overview}")
                                )
                              ],
                            ),
                          ),
                          //Text("Accéder au post",style: TextStyle(color: Colors.blue,fontSize: 13,decoration: TextDecoration.underline)),
                          InkWell(
                            onTap: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (BuildContext context) {
                                    return Forum(title: "Forum",);
                                  })
                              );
                            },
                            child: new Padding(
                              padding: new EdgeInsets.all(10.0),
                              child:Text("Accéder au post",style: TextStyle(color: Colors.blue,fontSize: 13,decoration: TextDecoration.underline)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  RaisedButton(onPressed: getPopularArticle,child:Text("API"))
                ],
              )
            ],
          )

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
              child: Text('Menu',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              decoration: BoxDecoration(
                color: Color.fromARGB(255,39,78,168),
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

  Future<void> getPopularArticle() async{
    GetApi api = GetApi();
    Map<String,dynamic>mapArticles = await api.getArticle();
    if(mapArticles["code"] == 0){

      article = Article.articleFromApi(mapArticles["body"]);
      article.forEach((Article article) {
         print(article.Title);
      });
    }else{
      //todo
    }
  }

}