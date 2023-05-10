import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      padding: EdgeInsets.all(10),
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
          Row(
            children: [
              Container(
                child: Stack(
                  children: [
                    Image.network(
                        'https://d2r9epyceweg5n.cloudfront.net/stores/987/204/products/rimula-r4-x-15w40-4l1-ac889731d29dd4c3fc16197199460451-640-0.jpg',
                        width: 120),
                    Positioned(
                        right: 0,
                        child: ElevatedButton(
                            onPressed: () {}, child: Text('!Nuevo¡'))),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12),
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
                          style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
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
              )
            ],
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Lubricante de alta calidad diseñado especificamente para motores de motocicleta',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 12,
                color: Colors.grey.shade600),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Ganas: '),
                  Text(
                    '10 puntos',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Color(0xFF00BBF9),
                        fontSize: 12),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.turned_in_not,
                    color: Colors.grey.shade800,
                  ),
                  Icon(
                    Icons.delete_forever_sharp,
                    color: Color(0xFFF86C5E),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
