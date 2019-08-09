import 'package:flutter/material.dart';
import 'item.dart';

class ItemRoute extends StatelessWidget {
  static List<Item> items = [
    Item('knowledge Base', 'the most comperhensive guide',
        Icons.hourglass_empty),
    Item('Chat with Support', 'Taking care of your business 24/7',
        Icons.account_box),
    Item('Remote assistant', 'Solving difficulte problems',
        Icons.account_balance),
    Item('Error Support', 'For analysis by our experts', Icons.book),
    Item('knowledge Base', 'the most comperhensive guide', Icons.access_alarms),
    Item('knowledge Base', 'the most comperhensive guide', Icons.satellite),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
          padding: EdgeInsets.all(0.0),
        ),
        backgroundColor: new Color.fromRGBO(249, 249, 249, 1.0),
        title: Text('Help Center', style: TextStyle(color: Colors.black)),
      ),
      body: _itemListWidget(),
    );
  }

  Widget _itemListWidget() {
    return Container(
        color: new Color.fromRGBO(249, 249, 249, 1.0),
        child: ListView.builder(
            itemBuilder: (BuildContext context, int index) => items[index],
            itemCount: items.length));
  }
}
