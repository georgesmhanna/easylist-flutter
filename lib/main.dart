import 'package:first_app/product_manager.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

void main() {
//  debugPaintSizeEnabled = true;
//  debugPaintBaselinesEnabled = true;
//  debugPaintPointersEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//      debugShowMaterialGrid: true,
        theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.deepOrange,
            accentColor: Colors.deepPurple
        ),
        home: Scaffold(
            appBar: AppBar(title: Text('EasyList')),
            body: ProductManager()
        )
    );
  }
}
