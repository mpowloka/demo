import 'package:flutter/material.dart';
import 'package:sandbox/demo/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key key, @required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(product.name),
        subtitle: Text(product.displayPrice),
      );
}



