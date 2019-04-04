import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final void Function(String product) addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      child: Text('Add Product'),
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addProduct('Sweets');
      },
    );
  }
}