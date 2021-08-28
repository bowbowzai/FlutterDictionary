import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(8),
        child: Center(
          child: Text('Press on the icon on the left top or swipe left', style: TextStyle(fontSize: 25),),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  'https://lh3.googleusercontent.com/ogw/ADea4I6VNW3ZJMvE-dJ9mVMuvB1j8qv1m6Hcf87LFRpA=s83-c-mo',
                  fit: BoxFit.cover,
                ),
              ),
            )),
            TextButton(
                onPressed: () {},
                child: ListTile(
                    title: Text(
                  'Profile',
                  style: TextStyle(fontSize: 25),
                ))),
            TextButton(
                onPressed: () {},
                child: ListTile(
                    title: Text(
                  'Wallet',
                  style: TextStyle(fontSize: 25),
                ))),
            TextButton(
                onPressed: () {},
                child: ListTile(
                    title: Text(
                  'Setting',
                  style: TextStyle(fontSize: 25),
                ))),
            TextButton(
                onPressed: () {},
                child: ListTile(
                    title: Text(
                  'Logout',
                  style: TextStyle(fontSize: 25),
                ))),
          ],
        ),
      ),
    );
  }
}
