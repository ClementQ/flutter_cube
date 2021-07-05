
import 'package:flutter/material.dart';


class Message extends StatefulWidget {
  Message({Key key, this.sender,this.content,this.isSender = false}) : super(key: key);
  final String sender;
  final String content;
  final bool isSender;


  @override
  _MessageState createState() => _MessageState();
}



class _MessageState extends State<Message> {


  @override
  Widget build(BuildContext context) {
    if (widget.isSender == false) {
      return
        SafeArea(
          child: Row(
            children: [
              Expanded(
                child: Container(

                ),
              ),
              Expanded(
                  flex: 5,
                  child: Container(
                    // color: Colors.blue,
                    child: Card(
                      color: Colors.lightBlue,
                      elevation: 10,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  child:
                                  Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text("${widget.sender}",
                                      style: TextStyle(fontSize: 17,
                                          fontWeight: FontWeight.bold),),
                                  )
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text("${widget.content}",
                                    style: TextStyle(fontSize: 17),),
                                ),

                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
              ),
            ],
          ),
        );
    } else
      {
        return
          SafeArea(
            child: Row(
              children: [
                Expanded(
                    flex: 5,
                    child: Container(
                      // color: Colors.blue,
                      child: Card(
                        color: Colors.grey[350],
                        elevation: 10,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child:
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text("${widget.sender}",
                                        style: TextStyle(fontSize: 17,
                                            fontWeight: FontWeight.bold),),
                                    )
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text("${widget.content}",
                                      style: TextStyle(fontSize: 17),),
                                  ),

                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
      }

  }
}