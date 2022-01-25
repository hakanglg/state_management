import 'package:flutter/material.dart';
import 'package:provider_example/features/basket/basket_view.dart';
import 'package:provider_example/features/products/products_view.dart';

class ShoppiTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: buildBottomAppBar(),
          body: TabBarView(
            children: [
              ProductsView(),
              BasketView(),
            ],
          ),
        ));
  }

  BottomAppBar buildBottomAppBar() {
    return BottomAppBar(
      elevation: 20,
      color: Colors.white30,
      child: TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.shopping_basket),
          ),
        ],
        labelColor: Colors.black,
      ),
    );
  }
}
