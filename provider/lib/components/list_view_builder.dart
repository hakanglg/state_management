import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/counter.dart';

class MyListViewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myCounter = Provider.of<Counter>(context);
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            title: Text(
              myCounter.getCount().toString(),
              textAlign: TextAlign.center,
            ),
            leading: Wrap(
              children: [
                IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      myCounter.decrementCounter();
                    }),
                IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      myCounter.incrementCounter();
                    }),
              ],
            ),
            trailing: IconButton(
              icon: Icon(Icons.shopping_basket),
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}
