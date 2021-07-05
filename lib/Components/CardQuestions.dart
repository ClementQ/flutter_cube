
import 'package:flutter/material.dart';

class CardQuestions extends StatefulWidget {
  CardQuestions({Key key, this.tabValues, this.correctVal,this.question}) : super(key: key);
  final List<String> tabValues;
  final num correctVal;
  final String question;


  @override
  _CardQuestionsState createState() => _CardQuestionsState();
}



class _CardQuestionsState extends State<CardQuestions> {

  // String _values;

  // @override
  // void initState() {
  //   _values = widget.tabValues[1];
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "${widget.question}", style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [

              ],
            ),
          ),
        ],
      ),
    );
  }
}