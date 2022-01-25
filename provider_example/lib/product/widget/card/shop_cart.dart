import 'package:flutter/material.dart';
import 'package:provider_example/features/products/model/product_model.dart';

class ShopCard extends StatelessWidget {
  final Product product;

  const ShopCard({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      trailing: IconButton(onPressed: () {}, icon: Icon(Icons.shopping_basket)),
      title: buildSizedBoxImage(context),
      subtitle: buildWrapSub(),
    ));
  }

  Widget buildSizedBoxImage(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Image.network(product.image)),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Container(
          color: Colors.black26,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
              Text("0"),
              IconButton(onPressed: () {}, icon: Icon(Icons.add))
            ],
          ),
        )
      ],
    );
  }

  Wrap buildWrapSub() {
    return Wrap(
      spacing: 10,
      children: [
        Text(product.name),
        Text("${product.price}"),
      ],
    );
  }
}
