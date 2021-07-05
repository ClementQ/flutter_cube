import 'package:flutter/material.dart';
import 'package:flutter_cube/Models/Article.dart';
import 'package:flutter_cube/Models/getPopularArticle.dart';
import 'package:flutter_cube/Pages/Forum.dart';
import 'package:flutter_cube/Pages/QuestionsQuiz.dart';

class QuizList extends StatefulWidget {
  QuizList({Key key}) : super(key: key);

  @override
  _QuizListState createState() => _QuizListState();
}

class _QuizListState extends State<QuizList> {


  @override
  void initState() {

  }

  @override
  Widget build(BuildContext context) {
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
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (BuildContext context) {
                                  return QuestionsQuiz(title: "Quiz",);
                                })
                            );
                          },
                          child: new Padding(
                            padding: new EdgeInsets.all(10.0),
                            child: Text("Civilité des citoyens de Paris", style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none
                            )),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (BuildContext context) {
                                  return QuestionsQuiz(title: "Quiz",);
                              })
                            );
                          },
                          child: new Padding(
                            padding: new EdgeInsets.all(10.0),
                            child: Text("Ce quiz comporte des questions sur la civilité des citoyens de Paris ainsi que leurs fonctions", style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                decoration: TextDecoration.none)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
  