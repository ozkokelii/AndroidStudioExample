import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ListeOrnek extends StatelessWidget {
  List<Ogrenci> tumOgrenciler = [];

  @override
  Widget build(BuildContext context) {
    ogrenciVerileriniGetir();

    return ListView.separated(
        separatorBuilder: (context, index) {
          if (index % 4 == 0 && index != 0) {
            return Container(
              height: 2,
              color: Colors.blue,
              margin: EdgeInsets.all(20),
            );
          } else {
            return Container();
          }
        },
        itemCount: 20,
        //itemBuilder: (context, index) => Card(),
        itemBuilder: (context, index) {
          return Card(
            color: index % 2 == 0 ? Colors.red : Colors.orange,
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.perm_contact_calendar),
              title: Text(tumOgrenciler[index]._isim),
              subtitle: Text(tumOgrenciler[index]._aciklama),
              trailing: Icon(Icons.add),
              onTap: () {
                debugPrint(tumOgrenciler[index].toString());
                toastMesajGoster(index, false);
              },
              onLongPress: () {
                debugPrint("uzun basılan eleman $index");
                toastMesajGoster(index, true);
              },
            ),
          );
        }
        );
  }

  void ogrenciVerileriniGetir() {
    tumOgrenciler = List.generate(
        300,
        (index) => Ogrenci(
            "ogrenci : $index adı",
            "ogrnci aciklamasi : $index aciklamasi",
            index % 2 == 0 ? true : false));
  }

  void toastMesajGoster(int index, bool uzunBasilma) {
    Fluttertoast.showToast(
        msg: uzunBasilma
            ? "uzun basıldı :" + tumOgrenciler[index].toString()
            : "tek tıklama" + tumOgrenciler[index].toString(),
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void alertDialogGoster(BuildContext ctx, int index) {
    showDialog(
        context: ctx,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text("alert diyalog başlık "),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text("öğrenci adı : ${tumOgrenciler[index]._isim}"),
                  Text("öğrenci açıklaması : ${tumOgrenciler[index]._aciklama}"),
                ],
              )
            ),
            actions: <Widget>[
              // ignore: deprecated_member_use
              ButtonTheme.bar(
                child: ButtonBar(
                  children: [
                    FlatButton(
                      child: Text("tamam"),
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                    ),
                    FlatButton(
                      child: Text("kapat"),
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }
}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

  @override
  String toString() {
    return "seçilen öğrenci adı : $_isim açıklaması : $_aciklama";
  }
}
