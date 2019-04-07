import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final void Function(String product) addProduct;
  final void Function() removeAllProducts;

  ProductControl(this.addProduct, this.removeAllProducts);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: [
      RaisedButton(
        child: Text('Add Product'),
        color: Theme.of(context).primaryColor,
        onPressed: () {
          addProduct('Sweets');
        },
      ),
      RaisedButton(
        child: Text('Remove All Products'),
        color: Theme.of(context).primaryColor,
        onPressed: () {
          removeAllProducts();
        },
      )
    ]);
  }
}
