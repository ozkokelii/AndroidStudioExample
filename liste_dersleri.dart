import 'package:flutter/material.dart';

class ListeKonuAnlatimi extends StatelessWidget {
  //liste içinv veri kaynağı oluştur...
  List<int> listeNumaralari = List.generate(300, (index) => index);
  List<String> listeAltBasliklar =
      List.generate(300, (index) => "liste elemanı alt başlık $index");

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listeNumaralari
          .map(
            (oAnkiEleman) => Column(
              children: <Widget>[
                Container(
                  child: Card(
                    color: Colors.teal.shade100,
                    margin: EdgeInsets.all(10),
                    elevation: 20,
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.android),
                        radius: 12,
                      ),
                      title: Text("Liste Elaman Başlık $oAnkiEleman"),
                      subtitle: Text(listeAltBasliklar[oAnkiEleman]),
                      trailing: Icon(Icons.add_circle),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.orange,
                  height: 0,
                  indent: 20,
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}

/**
    <Widget>[
    Column(
    children: <Widget>[
    Container(
    child: Card(
    color: Colors.teal.shade100,
    margin: EdgeInsets.all(10),
    elevation: 20,
    child: ListTile(
    leading: CircleAvatar(
    child: Icon(Icons.android),
    radius: 12,
    ),
    title: Text("Liste Elaman Başlık"),
    subtitle: Text("liste eleman alt başlık"),
    trailing: Icon(Icons.add_circle),
    ),
    ),
    ),
    Divider(
    color: Colors.orange,
    height: 0,
    indent: 20,
    ),
    ],
    ),
    ],
 **/
