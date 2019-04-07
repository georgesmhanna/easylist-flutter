import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products({this.products}) {
    print('products constructor');
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
        child: Column(
            children: [Image.asset('assets/food.png'), Text(products[index])]));
  }

  Widget _buildProductList() {
     Widget productCards = Center(child: Text("No products found, please add some"));
     if (products.length>0) {
       productCards = ListView.builder(
           itemBuilder: _buildProductItem, itemCount: products.length);
     }
     return productCards;
  }

  @override
  Widget build(BuildContext context) {
    print('product --> build');
    return _buildProductList();
  }
}
