import 'package:flutter/material.dart';
import 'package:flutter_state/model/item_add_notifier.dart';
import 'package:provider/provider.dart';

class AddItemView extends StatelessWidget {
  final String title = "Add Items";

  final TextEditingController _itemNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            TextField(
              controller: _itemNameController,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15), hintText: "Item Name"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  if (_itemNameController.text.isEmpty) {
                    return;
                  }
                  await Provider.of<ItemAddNotifier>(context, listen: false)
                      .addItem(_itemNameController.text);
                  Navigator.pop(context);
                },
                child: Text("Add Item"))
          ],
        ),
      ),
    );
  }
}
