import 'package:flutter/material.dart';

class Item {
  Widget header;
  String selected;
  String body;
  bool isExpanded;
  Item(
      {required this.header,
      required this.selected,
      required this.body,
      required this.isExpanded});
}

class MyExpansionPanel extends StatefulWidget {
  const MyExpansionPanel({super.key});

  @override
  State<MyExpansionPanel> createState() => _MyExpansionPanelState();
}

class _MyExpansionPanelState extends State<MyExpansionPanel> {
  List<Item> items = [
    Item(
      isExpanded: false,
      body: 'King Room',
      selected: 'A room with a king-sized bed',
      header: Container(
          child: Image.asset(
        'assets/king.jpg',
        fit: BoxFit.cover,
      )),
    ),
    Item(
      isExpanded: false,
      body: 'Double Room',
      selected: 'A room assigned to two people',
      header: Container(
          child: Image.asset(
        'assets/double.jpg',
        fit: BoxFit.cover,
      )),
    ),
    Item(
      isExpanded: false,
      body: 'Family Room',
      selected: 'A room assigned to three or four people',
      header: Container(
          child: Image.asset(
        'assets/family.jpg',
        fit: BoxFit.cover,
      )),
    )
  ];
  ListView? myList;
  @override
  Widget build(BuildContext context) {
    return myList = new ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: ExpansionPanelList(
            expansionCallback: (panelIndex, isExpanded) {
              setState(() {
                items[panelIndex].isExpanded = isExpanded;
              });
            },
            children: items.map((Item item) {
              return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    leading: item.header,
                    title: Text(
                      item.body,
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                  );
                },
                isExpanded: item.isExpanded,
                body: Container(
                  child: Text(
                    item.selected,
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}
