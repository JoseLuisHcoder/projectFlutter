import 'package:flutter/material.dart';

class CardProductOption4 extends StatefulWidget {
  const CardProductOption4({super.key});

  @override
  State<CardProductOption4> createState() => _CardProductOption4State();
}

class _CardProductOption4State extends State<CardProductOption4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      padding: const EdgeInsets.all(10),
      width: 170,
      decoration: BoxDecoration(
        border: Border.all(
          width: 4,
          color: Colors.grey.shade200,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.network(
              'https://d2r9epyceweg5n.cloudfront.net/stores/987/204/products/rimula-r4-x-15w40-4l1-ac889731d29dd4c3fc16197199460451-640-0.jpg',
              width: 120),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SHELL HELIX ',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    color: Colors.grey.shade900,
                  ),
                ),
                Text(
                  'Shell Advance AX5 20W-50 ',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14,
                    color: Colors.grey.shade900,
                  ),
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
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text(
                      'S/850.00',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          color: Color(0xFFF86C5E),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: const [
                        Text('Ganas: '),
                        Text(
                          '10 puntos',
                          style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xFF00BBF9),
                              fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Disponible',
                        style: TextStyle(
                            color: Color(0xFF7CB518),
                            fontSize: 14,
                            fontFamily: 'Roboto')),
                    Icon(
                      Icons.favorite,
                      color: Colors.grey.shade200,
                    )
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
