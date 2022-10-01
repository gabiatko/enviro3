import 'package:flutter/material.dart';


class RowWidget extends StatelessWidget {

  final String cislo1;
  final String cislo2;

  RowWidget({required this.cislo1,required this.cislo2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: Image.asset('assets/images/icons-cinnosti/auto.png')
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(40.0),
            color:Colors.cyan,
            child: Text(cislo1),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(40.0),
            color:Colors.pinkAccent,
            child: Text(cislo2),
          ),
        ),

        Container(),
      ],
    );
  }
}