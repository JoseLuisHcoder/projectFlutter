import 'package:flutter/material.dart';

import 'add_minus_button.dart';

class MoreInfoOffer extends StatefulWidget {
  const MoreInfoOffer({super.key});

  @override
  State<MoreInfoOffer> createState() => _MoreInfoOfferState();
}

class _MoreInfoOfferState extends State<MoreInfoOffer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      padding: const EdgeInsets.all(10),
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(
          width: 4,
          color: Colors.grey.shade200,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 3,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        'Shell Advance AX5 20W-50 ',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
                          color: Colors.grey.shade900,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                          'Lubricante de alta calidad diseñado especificamente para motores de motocicletas',
                          maxLines: 5,
                          style: TextStyle(
                              color: Colors.grey.shade800,
                              fontSize: 12,
                              fontFamily: 'Roboto')),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [AddMinusButton()]),
                const SizedBox(
                  height: 7,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFD400),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
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
                const SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('\u{1f525} '),
                    Text('Estas ahorrando S/20.00',
                        style: TextStyle(
                            color: Color(0xFFF86C5E),
                            fontSize: 12,
                            fontFamily: 'Roboto')),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
