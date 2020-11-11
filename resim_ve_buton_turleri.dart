import 'package:flutter/material.dart';

class ResimveButonTurleri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Text(
          "Resim ve Buton Türleri",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset("assets/images/Flutter.jpg"),
                      Text("Asset Image"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network(
                          "https://hdqwalls.com/wallpapers/small-memory-lp.jpg"),
                      Text("Network Image"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png"),
                        foregroundColor: Colors.orange,
                        radius: 30,
                        backgroundColor: Colors.purple,
                      ),
                      Text("Circle Avatar"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        /*IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(4),
                      color: Colors.red.shade200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          FadeInImage.assetNetwork(placeholder: "assets/images/loading.gif", image: "https://hdqwalls.com/wallpapers/small-memory-lp.jpg"),
                          Text("FadeinImage"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),*/
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.network(
                          "https://hdqwalls.com/wallpapers/small-memory-lp.jpg"),
                      Text("Network Image"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlutterLogo(
                        size: 60,
                        textColor: const Color(0xFF757575),
                        style: FlutterLogoStyle.horizontal,
                      ),
                      Text("FadeinImage"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(4),
                  color: Colors.red.shade200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        child: Placeholder(
                          color: Colors.red,
                          strokeWidth: 2.0,
                        ),
                      ),
                      Text("Placeholder Widget "),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                child: Text("omer ozkokeli"),
                color: Colors.orange,
                onPressed: () => debugPrint("fatarrowlu fonk."),
              ),
              RaisedButton(
                child: Text("PollMark yapıyoruz yapmaya çaloşıyoruz "),
                elevation: 12,
                textColor: Colors.yellow,
                onPressed: () {
                  debugPrint("normal lambda");
                  debugPrint("ikinci satır");
                },
                color: Colors.purple,
              ),
              RaisedButton(
                child: Text("hızla devamke keke"),
                elevation: 12,
                textColor: Colors.yellow,
                onPressed: () {
                  uzunMethod();
                },
                color: Colors.red,
              ),
              RaisedButton(
                child: Text("çalışmaya devam"),
                elevation: 12,
                textColor: Colors.yellow,
                onPressed: uzunMethod,
                color: Colors.blue,
              ),
              IconButton(
                  icon: Icon(
                    Icons.add_circle_outline,
                    size: 32,
                  ),
                  onPressed: () {}),
              FlatButton(
                onPressed: () {},
                child: Text(
                  "Flat Button",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void uzunMethod() {
    debugPrint("çok uzun içerikli fonksiyon");
  }

}