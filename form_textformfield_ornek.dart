import 'package:flutter/material.dart';

class FormveTextFormField extends StatefulWidget {
  @override
  _FormveTextFormFieldState createState() => _FormveTextFormFieldState();
}

class _FormveTextFormFieldState extends State<FormveTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(    //Theme.of(context).copywith(), diyerek daha önceden kullandığın bir yerdeki tema ayarlarını çekebilirsin.
        primaryColor: Colors.indigo,
        accentColor: Colors.red,
      ),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.save),
        ),
        appBar: AppBar(
          title: Text("Form ve TextFormField"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            child: ListView(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: "Adınız ve Soyadınız",
                    labelText: "Ad Soyad",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Email Adresiniz",
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    //enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green, width: 2)),
                    //focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple, width: 2)),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Şifreniz",
                    labelText: "Şifre",
                    border: OutlineInputBorder(),
                    //enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green, width: 2)),
                    //focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple, width: 2)),
                  ),
                ),
                SizedBox(height: 10),

                RaisedButton.icon(
                  icon: Icon(Icons.save),
                  label :  Text("Kaydet"),
                  onPressed: (){} ,
                  color: Colors.blueAccent,
                  disabledColor: Colors.amber,


                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
