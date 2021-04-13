import 'package:flutter/material.dart';
import 'package:sandbox/demo/list_widget.dart';
import 'package:sandbox/demo/product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Paweł Nędzka demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Paweł Nędzka demo'),
            ),
            body: ListWidget(
              products: [
                //Product("product-1", '10 \$'),
                //Product("product-2", '10 \$'),
                //Product("product-3", '10 \$'),
              ],
            )));
  }
}
