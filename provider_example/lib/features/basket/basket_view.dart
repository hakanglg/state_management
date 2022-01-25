import 'package:flutter/material.dart';

class BasketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Text("${index}");
              },
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Buy All"))
        ],
      ),
    );
  }
}
