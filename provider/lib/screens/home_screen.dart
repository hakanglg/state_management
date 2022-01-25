import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_using/components/list_view_builder.dart';
import 'package:provider_using/model/counter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final myCounter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: MyListViewBuilder(),
          ),
        ],
      ),
    );
  }
}
