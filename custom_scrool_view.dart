import 'package:flutter/material.dart';

class CollapsableToolbarOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.red,
          expandedHeight: 200,
          floating: false,
          //appbarın kalıp kalmaması durumudur
          pinned: true,
          //appbarda yazan yazının kaybolmasını sağlar
          snap: false,
          //appbarı aşşağı çektiğin andan appbar kayarak değil direk düşüyor ekrana
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Sliver AppBar"),
            centerTitle: true,
            background: Image.asset(
              "assets/images/Flutter.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            sabitListeElemanlari(),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.all(
            (4),
          ),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              sabitListeElemanlari(),
            ),
          ),
        ),
        SliverGrid(
          delegate: SliverChildListDelegate(
            sabitListeElemanlari(),
          ),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
        SliverGrid(
          delegate: SliverChildListDelegate(
            sabitListeElemanlari(),
          ),
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        ),
      ],
    );
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 1 ",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.amber,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 2 ",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.teal,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 3 ",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.blue,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 4 ",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.orange,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 5 ",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.purple,
        alignment: Alignment.center,
      ),
      Container(
        height: 100,
        child: Text(
          "Sabit Liste Elemanı 6 ",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        color: Colors.cyan,
        alignment: Alignment.center,
      ),
    ];
  }
}
