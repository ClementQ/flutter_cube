import 'package:flutter/material.dart';
import 'package:flutter_cube/Components/CardQuestions.dart';
import 'package:flutter_cube/Components/QuizList.dart';
import 'package:flutter_cube/Components/RadioButton.dart';

class QuestionsQuiz extends StatefulWidget {
  QuestionsQuiz({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _QuestionsQuizState createState() => _QuestionsQuizState();
}


enum SingingCharacter { lafayette, jefferson , Shrek}

class _QuestionsQuizState extends State<QuestionsQuiz> {

  SingingCharacter _character = SingingCharacter.lafayette;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
        title: Text(widget.title),
    backgroundColor: Color.fromARGB(255, 39, 78, 168),
    centerTitle: true,

    ),
    body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 5, bottom: 5, right: 20, left: 20),
          child: RadioButton(tabValues: ["1","2","3"],),
        ),
      ),
    );
  }
}

