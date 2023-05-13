import 'package:cart/src/pages/payments.dart';
import 'package:flutter/material.dart';

import 'descubre.dart';
import 'home_page.dart';
import 'more.dart';
import 'orders.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  int _pageActive = 0;
  final List _pages = [
    const HomePage(),
    const Descubre(),
    const Orders(),
    const Payments(),
    const More()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: _pageActive,
        onTap: (index) {
          setState(() {
            _pageActive = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.wb_sunny_outlined), label: 'Descubre'),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_mall_outlined), label: 'Pedidos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.attach_money), label: 'Pagos'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'Mas'),
        ],
      ),
      body: _pages[_pageActive],
    );
  }
}
