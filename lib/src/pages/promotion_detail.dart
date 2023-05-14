import 'package:flutter/material.dart';

class PromotionDetail extends StatefulWidget {
  const PromotionDetail({super.key});

  @override
  State<PromotionDetail> createState() => _PromotionDetailState();
}

class _PromotionDetailState extends State<PromotionDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detales de la promocion',
          style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                width: 4,
                color: Colors.grey.shade200,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.network(
                              'https://d2r9epyceweg5n.cloudfront.net/stores/987/204/products/rimula-r4-x-15w40-4l1-ac889731d29dd4c3fc16197199460451-640-0.jpg',
                              width: 120),
                        ],
                      ),
                      _descriptionProduct()
                    ],
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                _countItems(),
                const SizedBox(
                  height: 10,
                ),
                _productPromotions(),
                _addButton(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
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
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _addButton() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        children: [
          Column(
            children: [
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
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "S/ 870.00",
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontFamily: 'Roboto',
                        color: Colors.grey.shade500),
                  )
                ],
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
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
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
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
    );
  }

  Container _productPromotions() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: const Color(0xffF86C5E),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/box.png',
                width: 25,
                height: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                '8 Baldes de Rimula X3',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                'assets/box.png',
                width: 25,
                height: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                '2 Botellas de HELIX del mismo producto',
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container _countItems() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text(
            'Por la compra de  ',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 12,
                color: Colors.grey.shade600),
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
              )
            ],
          ),
          const Text(
            ' obtienes:',
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
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
                Text(
                  'SKU:45465465',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 12,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
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
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.share_outlined,
                      color: Colors.grey.shade800,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
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
}
