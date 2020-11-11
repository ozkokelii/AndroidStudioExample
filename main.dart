import 'ui/navigasyon_islemleri.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Dersleri",

    //initialRoute: "/CPage/DPage/EPage" AÇILIŞ EKRANINDA HOME HARİCİ BİR ŞEYİN AÇILMASI İSTENİRSE ROTASIYLA BERABER EKLENEBİLİR

    routes: {
      '/': (context) => NavigasyonIslemleri(), //home görevini görür....
      '/CPage': (context) => CSayfasi(),
      '/DPage': (context) => DSayfasi(),
      '/EPage': (context) => ESayfasi(),
      '/GPage': (context) => GSayfasi(),
      '/CPage/DPage': (context) => DSayfasi(),
      '/CPage/DPage/EPage': (context) => ESayfasi(),
      "/ListeSayfasi" : (context)  => ListeSayfasi(),
    },

    onGenerateRoute: (RouteSettings settings) {

      List<String> pathElemanlari = settings.name.split("/");  // / detay/$index

      if(pathElemanlari[1]=="detay"){
        return MaterialPageRoute(builder: (context) => ListeDetay(int.parse(pathElemanlari[2])));
      }

      return null;
    },


    onUnknownRoute: (RouteSettings settings) =>
        MaterialPageRoute(builder: (context) => DSayfasi()),
    //ROTAYI BULAMAZSA EĞER DEĞERİ GİRİLEN SAYFAYA GİTMESİNİ SAĞLARIZ

    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    //home: NavigasyonIslemleri(),
  ));
}
