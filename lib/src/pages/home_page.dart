import 'package:cart/src/pages/payments.dart';
import 'package:cart/src/pages/promotion_detail.dart';
import 'package:flutter/material.dart';

import '../widgets/card_product_option3.dart';
import '../widgets/card_product_option4.dart';
import '../widgets/more_info_offer.dart';
import '../widgets/search.dart';
import 'cart_items.dart';
import 'descubre.dart';
import 'morre_offers.dart';
import 'orders.dart';

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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff525252),
        title: _titelAppHomePage(),
      ),
      body: Column(children: [
        _textPromotions(),
        const SizedBox(
          height: 15,
        ),
        Flexible(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                _cardSlider(),
                const SizedBox(
                  height: 10,
                ),
                _productPromotions(),
                _productNew(),
                _productLikes(),
                _productRecomended()
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Container _productRecomended() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'RECOMENDADOS PARA TI',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF86C5E)),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: const [
              CardProductOption4(),
              CardProductOption4(),
              CardProductOption4(),
              CardProductOption4(),
            ]),
          )
        ],
      ),
    );
  }

  Container _productLikes() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'LOS PRODUCTOS QUE TE GUSTAN',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF86C5E)),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: const [
              CardProductOption4(),
              CardProductOption4(),
              CardProductOption4(),
              CardProductOption4(),
            ]),
          )
        ],
      ),
    );
  }

  Container _productNew() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'PRODUCTOS NUEVOS',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF86C5E)),
                textAlign: TextAlign.start,
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: const [
              CardProductOption4(),
              CardProductOption4(),
              CardProductOption4(),
              CardProductOption4(),
            ]),
          )
        ],
      ),
    );
  }

  Container _productPromotions() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: const [
              CardProductOption3(),
              MoreInfoOffer(),
            ]),
          )
        ],
      ),
    );
  }

  Container _cardSlider() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
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
                          const Text('-'),
                          const Text('Disponible',
                              style: TextStyle(
                                color: Color(0xFF7CB518),
                              ))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.grey.shade400,
                                width: 1,
                              ),
                            ),
                            child: const Icon(
                              Icons.remove,
                              size: 10,
                            ),
                          ),
                          const Text(
                            ' 1 ',
                            style:
                                TextStyle(fontSize: 14, fontFamily: 'Roboto'),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Colors.grey.shade400,
                                width: 1,
                              ),
                            ),
                            child: const Icon(
                              Icons.add,
                              size: 10,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'S/850.00',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                color: Color(0xFFF86C5E),
                                fontWeight: FontWeight.w400),
                          ),
                          const Text(' - '),
                          const Text(''),
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
                        children: const [
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PromotionDetail()));
                  },
                  child: Image.network(
                      'https://d2r9epyceweg5n.cloudfront.net/stores/987/204/products/rimula-r4-x-15w40-4l1-ac889731d29dd4c3fc16197199460451-640-0.jpg',
                      width: 120),
                )
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
        const Flexible(child: Search()),
        SizedBox(
            width: 30,
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (constext) => const MoreOffers()));
                },
                icon: const Icon(Icons.notifications_none))),
        SizedBox(
            width: 48,
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CartItems()));
                },
                icon: const Icon(Icons.shopping_cart_outlined)))
      ],
    );
  }
}
