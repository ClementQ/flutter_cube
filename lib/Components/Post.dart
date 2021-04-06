
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_cube/Models/Article.dart';
import 'package:flutter_cube/Models/getPopularArticle.dart';
import 'package:flutter_cube/Pages/Forum.dart';

class Post extends StatefulWidget {
  Post({Key key, this.title, this.index}) : super(key: key);
  final String title;
  final num index;

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {

  List<Article> article;
  bool isLoading = true;
  getPopularArticle popularArticle = getPopularArticle();

  @override
  void initState() {
    //test();
    super.initState();
    asyncMethod();



  }

  void asyncMethod() async {
    // setState(() async {
      //article = await getPopularArticle().getFromApi();
    // });
    getPopularArticle().getFromApi().then((item){
      setState(() {
        article=item;
      });
    });
  }
  @override
  Widget build(BuildContext context) {

    if(article == null){
      return Container(
        margin: EdgeInsets.only(top: 5, bottom: 5, right: 20, left: 20),
        child: Card(
          elevation: 10,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child:
                        CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 39, 78, 168),),),)

                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

    }
      return Container(
        margin: EdgeInsets.only(top: 5, bottom: 5, right: 20, left: 20),
        child: Card(
          elevation: 10,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Text("${article[widget.index].Title}", style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.bold),),
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
                            "https://image.tmdb.org/t/p/original/${article[widget.index].ImageUrl}",
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Text("${article[widget.index].Overview}")
                    )
                  ],
                ),
              ),
              //Text("Accéder au post",style: TextStyle(color: Colors.blue,fontSize: 13,decoration: TextDecoration.underline)),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) {
                        return Forum(title: "Forum",);
                      })
                  );
                },
                child: new Padding(
                  padding: new EdgeInsets.all(10.0),
                  child: Text("Accéder au post", style: TextStyle(
                      color: Colors.blue,
                      fontSize: 13,
                      decoration: TextDecoration.underline)),
                ),
              ),
            ],
          ),
        ),
      );
    }



    // return FutureBuilder(
    //     future: getPopularArticle().getFromApi(),
    //     builder: (context, snapshot){
    //       if (snapshot.hasData) {
    //         // return Text("1");
    //         return Container(
    //           margin: EdgeInsets.only(top: 5, bottom: 5, right: 20, left: 20),
    //           child: Card(
    //             elevation: 10,
    //             child: Column(
    //               children: [
    //                 Padding(
    //                   padding: EdgeInsets.all(10),
    //                   child: Row(
    //                     children: [
    //                       Expanded(
    //                         child: Text("${article[widget.index].Title}", style: TextStyle(
    //                             fontSize: 15, fontWeight: FontWeight.bold),),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 Padding(
    //                   padding: EdgeInsets.all(10),
    //                   child: Row(
    //                     children: [
    //                       Expanded(
    //                         child:
    //                         Card(
    //                           elevation: 5.0,
    //                           child: Container(
    //                             //width: 350,
    //                             height: 150,
    //                             child: Image.network(
    //                               "https://image.tmdb.org/t/p/original/${article[widget.index].ImageUrl}",
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                       Expanded(
    //                           child: Text("${article[widget.index].Overview}")
    //                       )
    //                     ],
    //                   ),
    //                 ),
    //                 //Text("Accéder au post",style: TextStyle(color: Colors.blue,fontSize: 13,decoration: TextDecoration.underline)),
    //                 InkWell(
    //                   onTap: () {
    //                     Navigator.push(
    //                         context,
    //                         MaterialPageRoute(builder: (BuildContext context) {
    //                           return Forum(title: "Forum",);
    //                         })
    //                     );
    //                   },
    //                   child: new Padding(
    //                     padding: new EdgeInsets.all(10.0),
    //                     child: Text("Accéder au post", style: TextStyle(
    //                         color: Colors.blue,
    //                         fontSize: 13,
    //                         decoration: TextDecoration.underline)),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         );
    //       } else if (snapshot.hasError) {
    //         return Text("${snapshot.error}");
    //       }
    //       return Center(child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Color.fromARGB(
    //           255, 39, 78, 168),),));
    //     }
    // );
    // return Container(
    //   margin: EdgeInsets.only(top: 5, bottom: 5, right: 20, left: 20),
    //   child: Card(
    //     elevation: 10,
    //     child: Column(
    //       children: [
    //         Padding(
    //           padding: EdgeInsets.all(10),
    //           child: Row(
    //             children: [
    //               Expanded(
    //                 child: Text("${article[widget.index].Title}", style: TextStyle(
    //                     fontSize: 15, fontWeight: FontWeight.bold),),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Padding(
    //           padding: EdgeInsets.all(10),
    //           child: Row(
    //             children: [
    //               Expanded(
    //                 child:
    //                 Card(
    //                   elevation: 5.0,
    //                   child: Container(
    //                     //width: 350,
    //                     height: 150,
    //                     child: Image.network(
    //                       "https://image.tmdb.org/t/p/original/${article[widget.index].ImageUrl}",
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //               Expanded(
    //                   child: Text("${article[widget.index].Overview}")
    //               )
    //             ],
    //           ),
    //         ),
    //         //Text("Accéder au post",style: TextStyle(color: Colors.blue,fontSize: 13,decoration: TextDecoration.underline)),
    //         InkWell(
    //           onTap: () {
    //             Navigator.push(
    //                 context,
    //                 MaterialPageRoute(builder: (BuildContext context) {
    //                   return Forum(title: "Forum",);
    //                 })
    //             );
    //           },
    //           child: new Padding(
    //             padding: new EdgeInsets.all(10.0),
    //             child: Text("Accéder au post", style: TextStyle(
    //                 color: Colors.blue,
    //                 fontSize: 13,
    //                 decoration: TextDecoration.underline)),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
    // return Center(child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 39, 78, 168),),));
  }
// ListView
// }
