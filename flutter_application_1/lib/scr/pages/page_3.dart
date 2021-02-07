import 'package:flutter/material.dart';
import 'package:flutter_application_1/scr/pages/page_4.dart';
class NewPage3 extends StatelessWidget {
  final List<String> listUser = <String>[
      'Claudio',
      'Andy',
      'Martin',
      'Rogelio',
      'Isaac',
      'Zictician',
      'Anthony',
      'Chepe',
      'Diana',
      'Ana',
      'Jose',
      'Heber',
      'Erika',
      'Urbina',
      'Alvarado',
      'Daniel',
      'Jade',
      'Sadie',
      'Adrian',
      'Vilchis'
    ];
  String nameData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pagina 3'),
        backgroundColor: Color.fromRGBO(240, 94, 100, 1.0)
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
          child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: listUser.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 300,
                      margin: const EdgeInsets.only(top: 10.0),
                      child: Center(
                        child: RaisedButton(
                          color: Color.fromRGBO(42,200,194, 1.0),
                          child: Center(
                            child: Text('${listUser[index]}',
                            style: TextStyle(color: Colors.white)
                            ),
                          ),
                          onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => NewPage4(nameData: listUser[index])),);
                          },
                        ),
                      ),
                    )
                  ]
                ),
                );
            },
          ),
        ),
    );
  }
}