import 'package:cart/src/pages/base.dart';
import 'package:cart/src/pages/cart_items.dart';
import 'package:cart/src/pages/descubre.dart';
import 'package:cart/src/pages/order_confirm.dart';

import 'package:cart/src/pages/orders.dart';
import 'package:cart/src/pages/orders_history.dart';
import 'package:cart/src/pages/payments.dart';
import 'package:cart/src/pages/products_best_sellings.dart';
import 'package:cart/src/widgets/detail_amount_cart.dart';
import 'package:flutter/material.dart';

import 'package:cart/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: const Color(0xffF5F5F5),
              iconTheme: IconThemeData(
                color: Colors.grey.shade600,
              )),
          fontFamily: 'Roboto'),
      home: const Base(),
    );
  }
}
