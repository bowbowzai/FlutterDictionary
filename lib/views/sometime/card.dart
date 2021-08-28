import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text(
                  'Title Example',
                  style: TextStyle(fontSize: 25),
                ),
                subtitle:
                    Text('Subtitle Example', style: TextStyle(fontSize: 18)),
                leading: Icon(
                  Icons.location_city,
                  size: 40,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: Text('Detail', style: TextStyle(fontSize: 20)),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: Text('Buy Now', style: TextStyle(fontSize: 20)),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: Text(
                  'Title Example',
                  style: TextStyle(fontSize: 25),
                ),
                subtitle:
                    Text('Subtitle Example', style: TextStyle(fontSize: 18)),
                leading: Icon(
                  Icons.location_city,
                  size: 40,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: Text('Detail', style: TextStyle(fontSize: 20)),
                    onPressed: () {},
                  ),
                  TextButton(
                    child: Text('Buy Now', style: TextStyle(fontSize: 20)),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}
