import 'package:flutter/material.dart';


class NewAcount extends StatefulWidget {
  NewAcount({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NewAcountState createState() => _NewAcountState();
}

class _NewAcountState extends State<NewAcount> {

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
              child:
              Column(
                children: [
                  Text("Informations",
                      style: TextStyle(fontSize: 45)
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Email",border: OutlineInputBorder(),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: "Password",border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Firstname",border: OutlineInputBorder(),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Lastname",border: OutlineInputBorder(),),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextFormField(
                      decoration: InputDecoration(labelText: "Postal code",border: OutlineInputBorder()),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50,right:50,bottom: 50),
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(textStyle:TextStyle(fontSize: 25),primary: Color.fromARGB(255, 39, 78, 168)),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text('Create'),
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
        ),
    );
  }
}