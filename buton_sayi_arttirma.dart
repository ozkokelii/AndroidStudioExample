import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        /*textTheme: TextTheme(
           // ignore: deprecated_member_use
           display2: TextStyle(fontSize: 12),
        ),*/
        primarySwatch: Colors.blue,
      ),
      title: "MaterialApp title",
      home: MyHomePage(title: "My Home Page"),
    );
  }
}

class MyHomePage extends StatefulWidget {

  final String title;
  int sayac = 0;

  MyHomePage({this.title}) {
    debugPrint("MyHomePage Statefukk Widget constructor");
  }

  @override
  State<StatefulWidget> createState() {
    debugPrint("MyHomePage create state tetiklendi");
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {

  _MyHomePageState() {
    debugPrint("MyHomePagestate tetiklendi");
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("MyHomePage build metodu tetiklendi");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            sayacDegeriniArttir();
            debugPrint("sayac değeri arttırıldı set state çağrıldı ");
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("arttır"), color: Colors.green, onPressed: () {
              sayacDegeriniArttir();
            },),
            Text("${widget.sayac}",
                style: Theme
                    .of(context)
                    .textTheme
                // ignore: deprecated_member_use
                    .display2.copyWith(
                    color: widget.sayac <= 0 ? Colors.red : Colors.green
                )
            ),
            RaisedButton(
              child: Text("azalt"), color: Colors.red, onPressed: () {
              sayacDegeriniAzalt();
            },),
          ],
        ),
      ),
    );
  }

  void sayacDegeriniArttir() {
    setState(() {
      widget.sayac++;
      debugPrint("sayac degeri: ${widget.sayac}");
    });

  }

  void sayacDegeriniAzalt() {
    setState(() {
      widget.sayac--;
      debugPrint("sayac degeri: ${widget.sayac}");
    });

  }

}
