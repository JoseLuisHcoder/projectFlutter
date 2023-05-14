import 'package:flutter/material.dart';

import '../widgets/search.dart';
import 'cart_items.dart';

class MoreOffers extends StatefulWidget {
  const MoreOffers({super.key});

  @override
  State<MoreOffers> createState() => _MoreOffersState();
}

class _MoreOffersState extends State<MoreOffers> {
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
        _textPromotions(),
        _cardOffer(),
        _cardOffer(),
        _cardOffer(),
      ]),
    );
  }

  Column _cardOffer() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.network(
                            'https://d2r9epyceweg5n.cloudfront.net/stores/987/204/products/rimula-r4-x-15w40-4l1-ac889731d29dd4c3fc16197199460451-640-0.jpg',
                            width: 120),
                        Container(
                          child: Row(
                            children: [
                              const Text(
                                '-3% ',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffF86C5E)),
                              ),
                              Text(
                                'dscto',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey.shade800),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 120,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 5),
                          color: Color(0xffF86C5E),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                'S/850.00',
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "S/ 870.00",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontFamily: 'Roboto',
                                    fontSize: 10,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    _descriptionProduct()
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Expanded _descriptionProduct() {
    return Expanded(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              'Shell Advance AX5 20W-50 ',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  color: Colors.grey.shade900,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(
                              color: Colors.grey.shade800, width: 1))),
                  child: Text(
                    'SKU:45465465 ',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                const Text(
                  ' Quedan 4',
                  style: TextStyle(fontSize: 12, color: Color(0xffF86C5E)),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            _optionScroll(),
            const SizedBox(
              height: 7,
            ),
            Text(
              'Lubricante de alta calidad diseñado especificamente para motores de motocicletas y automoviles',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 12,
                  color: Colors.grey.shade800,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 7,
            ),
            _addButton(),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
                  ),
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Color(0xFFF86C5E),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row _addButton() {
    return Row(
      children: [
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
              style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
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
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFD400),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.shopping_cart_checkout_outlined,
                          color: Colors.grey.shade800,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        const Text(
                          'Agregar',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ],
    );
  }

  SingleChildScrollView _optionScroll() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
            decoration: BoxDecoration(
                color: const Color(0xFFDEDEDE),
                border: Border.all(width: 1, color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(16)),
            child: Text(
              'Gasolinero',
              style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
            decoration: BoxDecoration(
                color: const Color(0xFFDEDEDE),
                border: Border.all(width: 1, color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(16)),
            child: Text(
              'Automovil',
              style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
            decoration: BoxDecoration(
                color: const Color(0xFFDEDEDE),
                border: Border.all(width: 1, color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(16)),
            child: Text(
              'Motocicleta',
              style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
            ),
          )
        ],
      ),
    );
  }

  Container _textPromotions() {
    return Container(
      width: double.infinity,
      color: const Color(0xFFFDDAD7),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Ofertas solo hasta agotar stock',
              style: TextStyle(fontSize: 16, color: Color(0xffF86C5E))),
          Text('Únete a los que ahorran con nuestros precios bajos.',
              style: TextStyle(fontSize: 14, color: Colors.grey.shade900))
        ],
      ),
    );
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
            Text('06 productos encontrados', style: TextStyle(fontSize: 12)),
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
