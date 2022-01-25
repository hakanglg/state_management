import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/features/tabs/shoppi_tab_view.dart';
import 'package:provider_example/product/model/user_model.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => User(),
        )
      ],
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ShoppiTabView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
