import 'package:flutter/material.dart';

enum listValues { lafayette, jefferson , Shrek}
class RadioButton extends StatefulWidget {
  RadioButton({Key key, this.tabValues, this.correctVal}) : super(key: key);
  final List<String> tabValues;
  final num correctVal;


  @override
  _RadioButtonState createState() => _RadioButtonState();
}



class _RadioButtonState extends State<RadioButton> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {

    for (int i = 0 ; i <= widget.tabValues.length; i++){
      print(widget.tabValues[i]);
      return
        Row(
          children: [
              Radio(
                value: 1,
                groupValue: _value,
                onChanged: (value){
                    setState(() {
                      _value = value;
                    });
                  },
              ),
              SizedBox(width: 10.0,),
              Text("1"),
          ],
        );
      }
    }
}