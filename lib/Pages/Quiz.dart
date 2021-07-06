import 'package:flutter/material.dart';
import 'package:flutter_cube/Components/QuizList.dart';

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
        backgroundColor: Color.fromARGB(255, 39, 78, 168),
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
                    child: Container(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "Assets/Images/ministere-energie_fiche.jpg"),
                              fit: BoxFit.cover,
                            )
                        ),
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
            QuizList(),
            QuizList(),
            QuizList(),
            QuizList(),
            QuizList()
          ],
        ),
      ),
    );
  }
}
