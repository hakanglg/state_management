import 'package:flutter/material.dart';
import 'package:flutter_state/add_item_view.dart';
import 'package:flutter_state/model/item_add_notifier.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  final String title = "Home";
  final ItemAddNotifier itemAddNotifier = ItemAddNotifier();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text(title), actions: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    fullscreenDialog: true,
                    builder: (context) => AddItemView(),
                  ));
            },
            icon: Icon(Icons.add))
      ]),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            Consumer<ItemAddNotifier>(
              builder: (context, value, child) => ListView.builder(
                itemCount: itemAddNotifier.itemList.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "${itemAddNotifier.itemList[index].itemName}",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
