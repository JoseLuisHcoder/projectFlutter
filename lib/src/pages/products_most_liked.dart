import 'package:cart/src/pages/products_best_sellings.dart';
import 'package:flutter/material.dart';

import '../widgets/card_product_option4.dart';

class ProductsMostLiked extends StatefulWidget {
  const ProductsMostLiked({super.key});

  @override
  State<ProductsMostLiked> createState() => _ProductsMostLikedState();
}

class _ProductsMostLikedState extends State<ProductsMostLiked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.grey.shade200,
            title: const Text(
              'Los productos que más gusta',
              style: TextStyle(fontSize: 16, color: Color(0xff525252)),
            ),
            iconTheme: IconThemeData(color: Colors.grey.shade800)),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                children: const [CardProductOption4(), CardProductOption4()],
              ),
              Row(
                children: const [CardProductOption4(), CardProductOption4()],
              ),
              Row(
                children: const [CardProductOption4(), CardProductOption4()],
              ),
              Row(
                children: const [CardProductOption4(), CardProductOption4()],
              )
            ],
          ),
        ));
  }
}
