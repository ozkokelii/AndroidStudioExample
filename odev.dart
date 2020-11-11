import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class odev extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.red.shade100,
              child: Text(
                "D",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.red.shade200,
              child: Text(
                "A",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.red.shade300,
              child: Text(
                "R",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(2),
              color: Colors.red.shade400,
              child: Text(
                "T",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(2),
          color: Colors.red.shade200,
          child: Text(
            "E",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(2),
          color: Colors.red.shade300,
          child: Text(
            "R",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(2),
          color: Colors.red.shade400,
          child: Text(
            "S",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(2),
          color: Colors.red.shade500,
          child: Text(
            "L",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(2),
          color: Colors.red.shade600,
          child: Text(
            "E",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(2),
          color: Colors.red.shade700,
          child: Text(
            "R",
            style: TextStyle(fontSize: 30),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(22, 20, 27, 20),
          margin: EdgeInsets.all(2),
          color: Colors.red.shade800,
          child: Text(
            "I",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ],
    );
  }

}
