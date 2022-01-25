import 'package:flutter/material.dart';
import 'package:provider_example/product/widget/card/shop_cart.dart';

import 'model/product_model.dart';

class ProductsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [buildActionChipTotalMoney()],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) => ShopCard(
          product: Product(
              image: "https://picsum.photos/200", name: "Hakan", price: 10),
        ),
      ),
    );
  }

  ActionChip buildActionChipTotalMoney() {
    return ActionChip(
      label: Text("1000 TL"),
      onPressed: () {},
      avatar: Icon(
        Icons.shopping_basket,
        color: Colors.red,
      ),
    );
  }
}
