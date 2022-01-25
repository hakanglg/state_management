import 'package:flutter/material.dart';
import 'package:flutter_state/model/item_add_notifier.dart';

import 'package:provider/provider.dart';

import 'home_view.dart';

void main() {
  runApp(
    MyApp(),
  );
  // Provider<FlowerNonView>(create: (_) => FlowerNonView(
  // MultiProvider(providers),
  // ChangeNotifierProvider(
  // builder: (context, child) => DarkFlowersModel(),
  // child: MyApp(),
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ItemAddNotifier(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          home: HomeView()),
    );
  }
}
