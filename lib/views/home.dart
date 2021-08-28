import 'package:flutter/material.dart';
import 'package:flutter_encyclopedic/navigateMethods.dart';
import 'package:flutter_encyclopedic/views/list_data.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // use for record which expansion panel is open

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Encyclopedic'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: itemData.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14)),
                  child: ExpansionTile(
                    title: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        iconData[index],
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          itemData[index].headerItem,
                          style: TextStyle(fontSize: 28),
                        )
                      ],
                    ),
                    onExpansionChanged: (value) {
                      setState(() {
                        itemData[index].expanded = value;
                      });
                    },
                    children: [
                      Column(
                        children: [
                          ...(itemData[index].content.map((e) {
                            return ListData(
                                data: e['name'], navigateFunc: e['function']);
                          }).toList()),
                        ],
                      )
                    ],
                  ),
                );
              })),
    );
  }
}

class ItemModel {
  bool expanded = false;
  String headerItem;
  List<Map<String, dynamic>> content;
  ItemModel(
      {this.expanded: false, required this.headerItem, required this.content});
}

List<ItemModel> itemData = [
  ItemModel(headerItem: 'Common', content: commonContent),
  ItemModel(headerItem: 'Sometimes', content: sometimesContent),
  ItemModel(headerItem: 'Rarely', content: rarelyContent),
];
List<Icon> iconData = [
  Icon(
    Icons.auto_awesome,
    color: Colors.blueAccent,
    size: 45,
  ),
  Icon(
    Icons.filter_vintage_rounded,
    color: Colors.greenAccent,
    size: 45,
  ),
  Icon(
    Icons.remove_red_eye,
    color: Colors.redAccent,
    size: 45,
  )
];

List<Map<String, dynamic>> commonContent = [
  {'name': 'AppBar', 'function': NavigateMethods().goToAppBar},
  {
    'name': 'CircularProgressIndicator',
    'function': NavigateMethods().goToCircularProgressIndicator
  },
  {'name': 'ClipRRect', 'function': NavigateMethods().goToClipRRect}
];
List<Map<String, dynamic>> sometimesContent = [
  {'name': 'Cards', 'function': NavigateMethods().goToCard},
  {'name': 'AlertDialog', 'function': NavigateMethods().goToAlertDialog},
  {'name': 'Snackbar', 'function': NavigateMethods().goToSnackbar},
  {'name': 'GridView', 'function': NavigateMethods().goToGridView}
];
List<Map<String, dynamic>> rarelyContent = [
  {
    'name': 'AnimatedSwitcher',
    'function': NavigateMethods().goToAnimatedSwitcher
  },
  {'name': 'Drawer', 'function': NavigateMethods().goToDrawer}
];
