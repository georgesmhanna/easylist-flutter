import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;

  ProductManager(this.startingProduct) {
    print('product manager constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('product manager --> createState');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    print('product manager state --> initState');
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('product manager state --> didUpdateWidget');
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('product manager state --> build');
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: RaisedButton(
          child: Text('Add Product'),
          color: Theme.of(context).primaryColor,
          onPressed: () {
            setState(() {
              _products.add('Advanced Food Tester');
            });
          },
        ),
      ),
      Products(_products)
    ]);
  }
}
