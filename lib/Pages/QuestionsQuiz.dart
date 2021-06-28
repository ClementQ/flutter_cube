import 'package:flutter/material.dart';
import 'package:flutter_cube/Components/QuizList.dart';

class QuestionsQuiz extends StatefulWidget {
  QuestionsQuiz({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _QuestionsQuizState createState() => _QuestionsQuizState();
}

class _QuestionsQuizState extends State<QuestionsQuiz> {

  @override
  Widget build(BuildContext context) {

      return SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                        child: Center(
                          child:
                          Text("Sont disponibles ici les différents Quiz",
                            style: TextStyle(color: Colors.greenAccent,
                                fontWeight: FontWeight.bold),),
                        )
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}