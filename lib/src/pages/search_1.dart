import 'package:flutter/material.dart';

import '../widgets/card_product.dart';
import '../widgets/card_product_option2.dart';
import '../widgets/card_product_option4.dart';
import '../widgets/search.dart';

class Search1 extends StatefulWidget {
  const Search1({super.key});

  @override
  State<Search1> createState() => _Search1State();
}

class _Search1State extends State<Search1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: const Color(0xff525252),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          title: _titelAppHomePage(),
        ),
        body: Column(children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            color: Colors.grey.shade300,
            child: Row(children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.grid_view_outlined,
                      size: 15,
                      color: Colors.grey.shade600,
                    ),
                    Text('Ordenar')
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.filter_alt_outlined,
                      size: 15,
                      color: Colors.grey.shade600,
                    ),
                    Text('Filtrar')
                  ],
                ),
              )
            ]),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                CardProductOption2(),
                CardProductOption2(),
              ],
            ),
          )
        ]));
  }

  Row _titelAppHomePage() {
    return Row(
      children: [
        Flexible(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 15,
            ),
            Search(),
            Text('06 productos encontrados',
                style: TextStyle(fontSize: 12, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
          ],
        )),
        SizedBox(
            width: 30,
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications_none))),
        SizedBox(
            width: 48,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined)))
      ],
    );
  }
}
