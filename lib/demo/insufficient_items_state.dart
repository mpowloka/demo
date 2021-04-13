import 'package:flutter/material.dart';
import 'package:sandbox/demo/list_widget.dart';

class InsufficientItemsState extends StatelessWidget {
  final int productsCount;

  const InsufficientItemsState({Key key, @required this.productsCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
            'Insufficient amount of products to display. Required at least $minimumItemsCount, but provided only: $productsCount',
                textAlign: TextAlign.center,
        ),
      ),
    );
  }
}


