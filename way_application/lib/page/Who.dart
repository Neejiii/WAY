import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'LoginApp.dart';
import 'MainPage.dart';
import 'Reg_Page.dart';

class Who extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        body: Center(
            child: Column(children: [
          Padding(padding: EdgeInsets.only(top: 128)),
          Title(
              color: Colors.black,
              child: Text("Кто вы?", style: TextStyle(fontSize: 30))),
          Padding(padding: EdgeInsets.only(top: 75)),
          RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Reg_page()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              padding: const EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF4C44CF),
                        Color(0xFFE953DA),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(14.0))),
                child: Container(
                  constraints: const BoxConstraints(
                    minWidth: 88.0,
                    minHeight: 36.0,
                    maxHeight: 91,
                    maxWidth: 295,
                  ), // min sizes for Material buttons
                  alignment: Alignment.center,
                  child: const Text(
                    'Гражданин',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
              )),
          Padding(padding: EdgeInsets.only(top: 52)),
          RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainPage()));
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0)),
              padding: const EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF4C44CF),
                        Color(0xFFE953DA),
                      ],
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(14.0))),
                child: Container(
                  constraints: const BoxConstraints(
                    minWidth: 88.0,
                    minHeight: 36.0,
                    maxHeight: 91,
                    maxWidth: 295,
                  ), // min sizes for Material buttons
                  alignment: Alignment.center,
                  child: const Text(
                    'Представитель власти',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                ),
              )),
        ])),
      ),
    );
  }
}
