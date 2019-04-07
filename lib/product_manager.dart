import 'package:flutter/material.dart';

import './products.dart';

import './product_control.dart';

// ignore: must_be_immutable
class ProductManager extends StatefulWidget {

  final String startingProduct;

  ProductManager({this.startingProduct}) {
    print('product manager constructor');
  }

  @override
  State<StatefulWidget> createState() {
    print('product manager --> createState');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  final List<String> _products = [];

  @override
  void initState() {
    print('product manager state --> initState');
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    print('product manager state --> didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  void addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  void removeAllProducts() {
    setState(() {
      _products.removeRange(0, _products.length);
    });
  }
  @override
  Widget build(BuildContext context) {
    print('product manager state --> build');
    return Column(children: [
      Container(
          margin: EdgeInsets.all(10.0), child: ProductControl(addProduct, removeAllProducts)),
      Expanded(child: Products(products: _products))
    ],);
  }
}
