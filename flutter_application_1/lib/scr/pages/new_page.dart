import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/scr/pages/page_2.dart';

import 'package:flutter/material.dart';
class NewPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
        return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(50.0),
              child: Image.asset('assets/logo.png',width: 300),
            ),
            Container(
              child: Text('Nueva App'),
              padding: EdgeInsets.all(50.0),
            ),
            Container(
              child: RaisedButton(
                child: Text('pagina 2'),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage2()),);
                },
                ),
            ),
          ],
          ),
        )
    );
  }
}