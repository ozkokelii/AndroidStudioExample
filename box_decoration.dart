import 'package:flutter/material.dart';

class KutuDekorasyon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.pink, width: 10),
              ///borderRadius: BorderRadius.all(Radius.circular(40.0),),
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(10.0, 5.0),
                  blurRadius: 20.0,
                ),
              ],
              shape: BoxShape.circle ,
              /** top: BorderSide(color: Colors.green,width: 5.0,style: BorderStyle.solid,),
               * bottom: BorderSide(color: Colors.purple,width: 5.0,),**/
              /**Border.all(color: Colors.blue,width: 5,style: BorderStyle.solid,),**/
              color: Colors.blue[100 * ((index + 1) % 8)],
              gradient: LinearGradient(
                  colors: [Colors.yellow, Colors.red],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              image: DecorationImage(
                image: AssetImage("assets/images/Flutter.jpg"),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),
            ),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Merhaba flutter1 $index",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),

          onTap: () => debugPrint("Merhaba Flutter $index tıklanıldı"),
          onDoubleTap: () => debugPrint("Merhaba Flutter $index çift tıklanıldı"),
          onLongPress: () => debugPrint("Merhaba Flutter $index uzun basıldı"),
          onHorizontalDragStart: (e) => debugPrint("Merhaba Flutter $index yandan uzatıldı $e"),
        );
      },
    );
  }
}
