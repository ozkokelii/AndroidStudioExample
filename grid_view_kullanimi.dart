import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 100,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.teal[100 * ((index+1) % 8)],
            child: Text("Merhaba flutter1 $index", textAlign: TextAlign.center,),
          );

        },
    );
  }
}

/**
 * GridView.extent(
    //reverse: true,
    maxCrossAxisExtent: 500,
    primary: false,
    scrollDirection: Axis.vertical,
    padding: EdgeInsets.all(10),
    crossAxisSpacing: 20,
    mainAxisSpacing: 40,
    children: <Widget>[

    Container(
    alignment: Alignment.center,
    color: Colors.teal.shade300,
    child: Text("Merhaba flutter1", textAlign: TextAlign.center,),
    ),

    Container(
    alignment: Alignment.center,
    color: Colors.teal.shade300,
    child: Text("Merhaba flutter2", textAlign: TextAlign.center,),
    ),

    Container(
    alignment: Alignment.center,
    color: Colors.teal.shade300,
    child: Text("Merhaba flutter3", textAlign: TextAlign.center,),
    ),

    Container(
    alignment: Alignment.center,
    color: Colors.teal.shade300,
    child: Text("Merhaba flutter4", textAlign: TextAlign.center,),
    ),

    Container(
    alignment: Alignment.center,
    color: Colors.teal.shade300,
    child: Text("Merhaba flutter5", textAlign: TextAlign.center,),
    ),

    Container(
    alignment: Alignment.center,
    color: Colors.teal.shade300,
    child: Text("Merhaba flutter6", textAlign: TextAlign.center,),
    ),

    ],

    );**/
/**
 * return GridView.count(
    crossAxisCount: 2,// BİR SÜTUNDA KAÇ TANE KONTEYNIR OLACAĞINI BELİRTİR
    reverse: true,
    primary: false,
    scrollDirection: Axis.vertical,// HORİZONTAL: YATAY VEYA VERTİCAL: DİKEY KARARLARI VERİLİR...
    padding: EdgeInsets.all(10),
    crossAxisSpacing: 20,
    mainAxisSpacing: 40,
    children: <Widget>[

    Container(
    alignment: Alignment.center,
    color: Colors.teal.shade300,
    child: Text("Merhaba flutter1", textAlign: TextAlign.center,),
    ),

    Container(
    alignment: Alignment.center,
    color: Colors.teal.shade300,
    child: Text("Merhaba flutter2", textAlign: TextAlign.center,),
    ),

    Container(
    alignment: Alignment.center,
    color: Colors.teal.shade300,
    child: Text("Merhaba flutter3", textAlign: TextAlign.center,),
    ),

    Container(
    alignment: Alignment.center,
    color: Colors.teal.shade300,
    child: Text("Merhaba flutter4", textAlign: TextAlign.center,),
    ),

    Container(
    alignment: Alignment.center,
    color: Colors.teal.shade300,
    child: Text("Merhaba flutter5", textAlign: TextAlign.center,),
    ),

    Container(
    alignment: Alignment.center,
    color: Colors.teal.shade300,
    child: Text("Merhaba flutter6", textAlign: TextAlign.center,),
    ),

    ],

    );**/
