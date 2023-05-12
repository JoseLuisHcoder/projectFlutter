import 'package:cart/src/pages/cart_items.dart';
import 'package:cart/src/pages/descubre.dart';

import 'package:cart/src/pages/orders.dart';
import 'package:cart/src/pages/orders_history.dart';
import 'package:cart/src/pages/products_best_sellings.dart';
import 'package:cart/src/widgets/detail_amount_cart.dart';
import 'package:flutter/material.dart';

import 'package:cart/src/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(fontFamily: 'Roboto'),
      home: const DetailAmountCart(),
    );
  }
}
