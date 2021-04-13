import 'package:flutter/material.dart';
import 'package:sandbox/demo/empty_state.dart';
import 'package:sandbox/demo/product_card.dart';

import 'insufficient_items_state.dart';
import 'product.dart';

const minimumItemsCount = 3;

class ListWidget extends StatelessWidget {
  final List<Product> products;

  const ListWidget({Key key, @required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return EmptyState();
    } else if (products.length < minimumItemsCount) {
      return InsufficientItemsState(productsCount: products.length);
    } else {
      return ListView.separated(
        itemBuilder: (_, index) => ProductCard(product: products[index]),
        separatorBuilder: (_, __) => Divider(),
        itemCount: products.length,
      );
    }
  }
}



