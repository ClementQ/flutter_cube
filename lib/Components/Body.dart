
import 'package:flutter/material.dart';

import 'Post.dart';

class Body extends StatefulWidget {
  Body({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _BodyState createState() => _BodyState();
}



class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return
        Center(
          child: SingleChildScrollView(
            // padding: EdgeInsets.only(bottom: 10),

            child: Column(
              children: [

                // children: [
                  Card(
                    elevation: 5,
                    color: Color.fromARGB(255, 245, 245, 252),
                    margin: EdgeInsets.only(bottom: 20),
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 10, bottom: 10, left: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("Accueil", style: TextStyle(fontSize: 35,
                                  color: Color.fromARGB(255, 56, 113, 245)),)
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                  child: Text(
                                    "Bienvenue sur l'application du ministère.\n\nLe ministère des Solidarités et de la Santé est chargé de la mise en œuvre de la politique du Gouvernement dans les domaines des affaires sociales, de la solidarité et de la cohésion sociale, de la santé publique et de la protection sociale.",
                                    style: TextStyle(fontSize: 15),)
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child:
                    Text("Post récent", style: TextStyle(fontSize: 20,
                        decoration: TextDecoration.underline,
                        color: Color.fromARGB(255, 56, 113, 245)),
                    ),
                  ),

                  //container qui sera l'actu des posts
                  // ListView.builder(
                  //     itemCount: 5,
                  //     itemBuilder: (BuildContext context, int index){
                  //       return Post(index: index);
                  //     }
                  // )

                  Post(index: 0),
                  Post(index: 1),
                  Post(index: 2),
                  Post(index: 3),
                  Post(index: 4)
                  // Expanded(
                  //   child:
                  //   ListView.builder(
                  //       shrinkWrap: false,
                  //       itemCount: 5,
                  //       itemBuilder: (context, index) {
                  //         return Post(index: index);
                  //       }),
                  //     )
                ],
            ),

          )
        );
      // Column(
      //   children: [
      //     Card(
      //       elevation: 5,
      //       color: Color.fromARGB(255, 245, 245, 252),
      //       margin: EdgeInsets.only(bottom: 20),
      //       child: Padding(
      //         padding: EdgeInsets.only(
      //             top: 10, bottom: 10, left: 20, right: 20),
      //         child: Column(
      //           children: [
      //             Row(
      //               children: [
      //                 Text("Accueil", style: TextStyle(fontSize: 35,
      //                     color: Color.fromARGB(255, 56, 113, 245)),)
      //               ],
      //             ),
      //             Row(
      //               children: [
      //                 Expanded(
      //                     child: Text(
      //                       "Bienvenue sur l'application du ministère.\n\nLe ministère des Solidarités et de la Santé est chargé de la mise en œuvre de la politique du Gouvernement dans les domaines des affaires sociales, de la solidarité et de la cohésion sociale, de la santé publique et de la protection sociale.",
      //                       style: TextStyle(fontSize: 15),)
      //                 )
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //     Text("Post récent", style: TextStyle(fontSize: 20,
      //         decoration: TextDecoration.underline,
      //         color: Color.fromARGB(255, 56, 113, 245)),),
      //     //container qui sera l'actu des posts
      //     Expanded(
      //       child:
      //       ListView.builder(
      //           shrinkWrap: false,
      //           itemCount: 5,
      //           itemBuilder: (context, index) {
      //             return Post(index: index);
      //           }),
      //     )
      //
      //   ],
      // );

  }

}