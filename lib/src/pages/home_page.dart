import 'package:flutter/material.dart';

import 'package:cart/src/widgets/card_product_option2.dart';

import '../widgets/card_product_option3.dart';
import '../widgets/search.dart';

class SolarColors {
  static const Color color1 = Color(0xff525252);
  static const Color color2 = Color(0xffCACACA);
  static const Color color3 = Color(0xFFF86C5E);
  static const Color color4 = Color(0xFF8E8E8E);
  static const Color color5 = Color(0xFF00BBF9);
  static const Color color6 = Color(0xFFFFD400);
  static const Color color7 = Color(0xFF7CB518);
  static const Color color8 = Color(0xFFDEDEDE);
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff525252),
          title: _titelAppHomePage(),
        ),
        body: Container(
          child: Column(children: [
            _textPromotions(),
            const SizedBox(
              height: 15,
            ),
            _cardSlider(),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '¡NO DEJES QUE OTROS SE LO LLEVEN!',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFF86C5E)),
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                  CardProductOption3(),
                ],
              ),
            )
          ]),
        ));
  }

  Container _cardSlider() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'RECIBES MÁS, GANAS MÁS...',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF86C5E)),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            color: const Color(0xFF8E8E8E),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shell Advance AX5 ',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '20W-50',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left,
                      ),
                      Row(
                        children: [
                          Text(
                            'SKU:45465465',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w300),
                          ),
                          Text('-'),
                          Text('Disponible',
                              style: TextStyle(
                                color: Color(0xFF7CB518),
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.grey.shade400,
                                width: 1,
                              ),
                            ),
                            child: Icon(
                              Icons.remove,
                              size: 10,
                            ),
                          ),
                          Text(
                            ' 1 ',
                            style:
                                TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.grey.shade400,
                                width: 1,
                              ),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 10,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'S/850.00',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                color: Color(0xFFF86C5E),
                                fontWeight: FontWeight.w400),
                          ),
                          Text(' - '),
                          Text(''),
                          Text(
                            "S/ 870.00",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontFamily: 'Roboto',
                                color: Colors.grey.shade500),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text('\u{1f525}'),
                          Text(
                            ' Estas ahorrando S/20.00',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 12,
                                color: Color(0xFFF86C5E)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Image.network(
                    'https://d2r9epyceweg5n.cloudfront.net/stores/987/204/products/rimula-r4-x-15w40-4l1-ac889731d29dd4c3fc16197199460451-640-0.jpg',
                    width: 120),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _textPromotions() {
    return Container(
      color: const Color(0xFFDEDEDE),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('¡No te pierdas los descuentos ONLINE!',
              style: TextStyle(fontSize: 14)),
          Text(' 04D   15H', style: TextStyle(fontWeight: FontWeight.w400))
        ],
      ),
    );
  }

  Row _titelAppHomePage() {
    return Row(
      children: [
        Flexible(child: Search()),
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
