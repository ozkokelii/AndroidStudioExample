import 'package:flutter/material.dart';

class NavigasyonIslemleri extends StatelessWidget {
  String baslik = "B SAYFASI";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NAVİGASYON İŞLEMLERİ",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("A SAYFASINA GİT "),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ASayfasi()),
                );
              },
            ),
            RaisedButton(
              child: Text("B SAYFASINA GİT VE VERİ GÖNDER"),
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BSayfasi(baslik)),
                );
              },
            ),
            RaisedButton(
              child: Text("C SAYFASINA GİT VE GERİ GEL"),
              color: Colors.purple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CSayfasi()),
                );
              },
            ),
            RaisedButton(
              child: Text(
                "D SAYFASINA GİT VE GERİ GELİRKEN VERİ GETİR",
              ),
              color: Colors.pink,
              onPressed: () {
                Navigator.push<bool>(
                  context,
                  MaterialPageRoute(builder: (context) => DSayfasi()),
                ).then((popOlayindanSonraGelenDeger) {
                  debugPrint(
                      "pop işleminden gelen değer $popOlayindanSonraGelenDeger");
                });
              },
            ),
            RaisedButton(
              child: Text("E SAYFASINA GİT VE GERİ GELME"),
              color: Colors.cyan,
              onPressed: () {
                Navigator.push(
                  //replacement koyarsan geri dönüşü olmaz sayfanın geri dön diyince direk uygulmadan çıkışını verir eline.
                  context,
                  MaterialPageRoute(builder: (context) => ESayfasi()),
                );
              },
            ),
            RaisedButton(
              child: Text("Liste Sayfasına Git"),
              color: Colors.cyan,
              onPressed: () {
                Navigator.pushNamed(context, "/ListeSayfasi");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ListeSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Liste Sayfasi",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => {
                Navigator.pushNamed(context, "/detay/$index"),
              },
              child: Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Liste Elemanı : $index"),
              )),
            );
          },
          itemCount: 60),
    );
  }
}

class ListeDetay extends StatelessWidget {

  int tiklanilanIndex = 0;

  ListeDetay(this.tiklanilanIndex);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Liste Detay Sayfasi",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Liste Detayın Detay kısmındasınız $tiklanilanIndex tiklanıldı"),
          ),
        ));
  }
}

class GSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " G SAYFASI",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "G SAYFASINDASIN",
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

class FSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " F SAYFASI",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "F SAYFASINDASIN",
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
            RaisedButton(
              child: Text("G SAYFASINA GİT"),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/GPage');
              },
            )
          ],
        ),
      ),
    );
  }
}

class ESayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " E SAYFASI",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "E SAYFASINDASIN",
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
            RaisedButton(
              child: Text("F SAYFASINA GİT"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FSayfasi()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class DSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      onWillPop: () {
        debugPrint("onwillpop çalıştı");
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            " D SAYFASI",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "D SAYFASINDASIN GERİ DÖNERKEN VERİ GÖNDER",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.red, fontSize: 24),
              ),
              RaisedButton(
                child: Text(
                  "D SAYFASINA GİT VE GERİ GELİRKEN VERİ GETİR",
                ),
                color: Colors.pink,
                onPressed: () {
                  Navigator.pop<bool>(context, true);
                  //true demek ürün silindi demek
                  //ürün silinemedi veya kullanıcı vazgeçti
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ASayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " A SAYFASI",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "A SAYFASINDASIN",
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

class BSayfasi extends StatelessWidget {
  String gelenBaslikVerisi;

  BSayfasi(this.gelenBaslikVerisi);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          gelenBaslikVerisi,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              gelenBaslikVerisi,
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

class CSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " C SAYFASI",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "C SAYFASINDASIN",
              style: TextStyle(color: Colors.red, fontSize: 24),
            ),
            RaisedButton(
              color: Colors.purple,
              child: Text("Geri Dön"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            RaisedButton(
              child: Text("A SAYFASINA GİT"),
              color: Colors.purple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ASayfasi()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
