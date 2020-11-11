import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldInput extends StatefulWidget {
  @override
  _TextFieldInputState createState() => _TextFieldInputState();
}

class _TextFieldInputState extends State<TextFieldInput> {
  String girilenMetin = "";
  FocusNode _fNode;
  int maxLine = 1;
  TextEditingController textController1;

  @override
  void initState() {
    super.initState();
    _fNode = FocusNode();
    textController1 = TextEditingController(text: "varsayılan");

    _fNode.addListener(() {
      setState(() {
        if (_fNode.hasFocus) {
          maxLine = 3;
        } else {
          maxLine = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    _fNode.dispose();
    textController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Islemleri"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 24,
            height: 24,
            child: FloatingActionButton(heroTag: "aaaa",
              onPressed: () {
                FocusScope.of(context).requestFocus(_fNode);
              },
              child: Icon(
                Icons.edit,
                size: 12,
              ),
              mini: true,
              backgroundColor: Colors.green,
            ),
          ),

          SizedBox(height: 10),

          FloatingActionButton(heroTag: "aa",
            onPressed: () {
              textController1.text = "butondan geldim";
            },
            child: Icon(
              Icons.edit,
            ),
            mini: true,
            backgroundColor: Colors.pink,
          ),

          SizedBox(height: 10),

          FloatingActionButton(heroTag: "aaa",
            onPressed: () {
              FocusScope.of(context).requestFocus(_fNode);
            },
            child: Icon(Icons.edit),
          )
        ],
      ),

      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              autofocus: false,
              maxLines: maxLine,
              controller: textController1,
              maxLength: 20,
              focusNode: _fNode,
              decoration: InputDecoration(
                hintText: "metni buraya yazınız",
                labelText: "başlık",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                icon: Icon(Icons.edit),
                prefixIcon: Icon(Icons.done),
                suffixIcon: Icon(Icons.add),
                filled: true,
                fillColor: Colors.red.shade50,
              ),
              maxLengthEnforced: true,
              cursorColor: Colors.pink,
              onChanged: (String s) => debugPrint("on change : $s"),
              onSubmitted: (String s) {
                debugPrint("on submit : $s");
                girilenMetin = s;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              autofocus: false,
              maxLines: 1,
              maxLength: 20,
              decoration: InputDecoration(
                hintText: "metni buraya yazınız",
                labelText: "başlık",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                icon: Icon(Icons.edit),
                prefixIcon: Icon(Icons.done),
                suffixIcon: Icon(Icons.add),
                filled: true,
                fillColor: Colors.red.shade50,
              ),
              maxLengthEnforced: true,
              cursorColor: Colors.pink,
              onChanged: (String s) => debugPrint("on change : $s"),
              onSubmitted: (String s) {
                debugPrint("on submit : $s");
                girilenMetin = s;
              },
            ),
          ),
          Container(
            color: Colors.teal.shade400,
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 200,
            //MediaQuery.of(context).size.height,
            child: Align(
              alignment: Alignment.center,
              child: Text(girilenMetin),
            ),
          ),
        ],
      ),
    );
  }
}
