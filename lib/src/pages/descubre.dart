import 'package:cart/src/pages/products_best_sellings.dart';
import 'package:cart/src/pages/products_most_liked.dart';
import 'package:cart/src/pages/products_most_new.dart';
import 'package:flutter/material.dart';

class Descubre extends StatelessWidget {
  const Descubre({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: const Text(
          'Descubre',
          style: TextStyle(fontSize: 16, color: Color(0xff525252)),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            trailing: const Icon(Icons.chevron_right),
            leading: const Icon(Icons.shopping_bag_outlined),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductsBestSellings()));
            },
            title: Container(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Text('Los productos más comprados',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      color: Colors.grey.shade800)),
            ),
          ),
          const Divider(),
          ListTile(
            trailing: const Icon(Icons.chevron_right),
            leading: const Icon(Icons.thumb_up_outlined),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductsMostLiked()));
            },
            title: Container(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Text('Los productos que más gusta',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      color: Colors.grey.shade800)),
            ),
          ),
          const Divider(),
          ListTile(
            trailing: const Icon(Icons.chevron_right),
            leading: const Icon(Icons.shield_outlined),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductsMostNew()));
            },
            title: Container(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Text('Los productos nuevos más destacados',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      color: Colors.grey.shade800)),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
