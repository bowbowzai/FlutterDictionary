import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget {
  const MyGridView({Key? key}) : super(key: key);

  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  var names = [
    'John',
    "Cena",
    'Kelvin',
    'Darren',
    'Jun',
    'Draven',
    'Kitty',
    'Sugar',
    'Itamiyokanjiro',
    'shigoto'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(color: Colors.black),
            left: BorderSide(color: Colors.black),
            bottom: BorderSide(color: Colors.black),
          )),
          child: GridView.count(
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 2,
            children: [
              ...(names.map((e) => Container(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        e,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(color: Colors.black),
                            bottom: BorderSide(color: Colors.black))),
                  )))
            ],
          ),
        ));
  }
}
