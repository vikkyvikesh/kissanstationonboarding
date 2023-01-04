
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kissanstationonboarding/pages/HomePage.dart';
import 'package:kissanstationonboarding/pages/buyingproductpage/buying_product_page.dart';
import 'package:kissanstationonboarding/pages/demo.dart';
import 'package:kissanstationonboarding/pages/sellerproductpage/seller_crops_page.dart';
import 'package:kissanstationonboarding/pages/sellerproductpage/seller_product_page.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kissan Station',
      debugShowCheckedModeBanner: false,
      home:BuyingProductPage(),
    );
  }
}
