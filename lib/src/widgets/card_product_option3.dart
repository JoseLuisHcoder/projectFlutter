import 'package:flutter/material.dart';

class CardProductOption3 extends StatefulWidget {
  const CardProductOption3({super.key});

  @override
  State<CardProductOption3> createState() => _CardProductOption3State();
}

class _CardProductOption3State extends State<CardProductOption3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      padding: const EdgeInsets.all(10),
      width: 200,
      height: 240,
      decoration: BoxDecoration(
        border: Border.all(
          width: 4,
          color: Colors.grey.shade200,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.network(
              'https://d2r9epyceweg5n.cloudfront.net/stores/987/204/products/rimula-r4-x-15w40-4l1-ac889731d29dd4c3fc16197199460451-640-0.jpg',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7, vertical: 2),
                        decoration: BoxDecoration(
                            color: const Color(0xFFDEDEDE),
                            border: Border.all(
                                width: 1, color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(16)),
                        child: Text(
                          'Gasolinero',
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade800),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7, vertical: 2),
                        decoration: BoxDecoration(
                            color: const Color(0xFFDEDEDE),
                            border: Border.all(
                                width: 1, color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(16)),
                        child: Text(
                          'Automovil',
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade800),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 7, vertical: 2),
                        decoration: BoxDecoration(
                            color: const Color(0xFFDEDEDE),
                            border: Border.all(
                                width: 1, color: Colors.grey.shade200),
                            borderRadius: BorderRadius.circular(16)),
                        child: Text(
                          'Motocicleta',
                          style: TextStyle(
                              fontSize: 12, color: Colors.grey.shade800),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 3,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('SKU:  5452114',
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: 12,
                            fontFamily: 'Roboto')),
                    Icon(
                      Icons.favorite,
                      color: Colors.grey.shade200,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    const Text('\u{1f525} '),
                    const Text(
                      'S/850.00',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 14,
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
                          fontSize: 10,
                          color: Colors.grey.shade500),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Quedan  4',
                        style: TextStyle(
                            color: Color(0xFFF86C5E),
                            fontSize: 12,
                            fontFamily: 'Roboto')),
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
                        Icons.arrow_drop_up,
                        size: 15,
                      ),
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
