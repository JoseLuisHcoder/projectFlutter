import 'package:cart/src/pages/tracking_order_cancel.dart';
import 'package:cart/src/pages/tracking_order_comments.dart';
import 'package:flutter/material.dart';

class TrackingOrder extends StatefulWidget {
  const TrackingOrder({super.key});

  @override
  State<TrackingOrder> createState() => _TrackingOrderState();
}

class _TrackingOrderState extends State<TrackingOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey.shade800,
        ),
        backgroundColor: Colors.grey.shade200,
        title: const Text(
          'Tracking del pedido',
          style: TextStyle(fontSize: 16, color: Color(0xff525252)),
        ),
      ),
      body: Column(
        children: [
          _profileUser(),
          _dateOfOrder(),
          _stateOrder(),
          _buttonsInfo(context)
        ],
      ),
    );
  }

  Container _stateOrder() {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            Stack(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.check_circle_outline_sharp,
                      color: Color(0xFF7CB518),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Pedido creado',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xff2A2A2A)),
                                ),
                                Text(
                                  '11-ene a las 10:30:45',
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xff2A2A2A)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                    width: 2,
                    left: 11,
                    top: 40,
                    bottom: -20,
                    child: Container(
                      color: Colors.black,
                      height: 20,
                    ))
              ],
            ),
            Container(
                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                child: const Divider()),
            Row(
              children: [
                const Icon(
                  Icons.check_circle_outline_sharp,
                  color: Color(0xFF7CB518),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Pedido aprobado',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff2A2A2A)),
                            ),
                            Text(
                              '11-ene a las 12:30:45',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff2A2A2A)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              children: [
                const Icon(
                  Icons.check_circle_outline_sharp,
                  color: Color(0xFF7CB518),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Pedido programado',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff2A2A2A)),
                            ),
                            Text(
                              '12-ene a las 8:30:45',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff2A2A2A)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              children: [
                const Icon(
                  Icons.check_circle_outline_sharp,
                  color: Color(0xFF7CB518),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Pedido en ruta',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff2A2A2A)),
                            ),
                            Text(
                              '12-ene a las 10:30:45',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff2A2A2A)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }

  Container _profileUser() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.grey.shade200,
                child: Icon(Icons.person_outline,
                    size: 40, color: Colors.grey.shade500),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Juan Carlos Marrón',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff2A2A2A)),
                          ),
                          Text(
                            'Transportista',
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff2A2A2A)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const CircleAvatar(
                radius: 15,
                backgroundColor: Color(0xff7CB518),
                child: Icon(Icons.call_outlined, size: 20, color: Colors.white),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Icon(Icons.location_on_outlined, color: Colors.grey.shade500),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Calle Martinez Salas, 350, CAYMA, AREQUIPA ',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff2A2A2A)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Container _buttonsInfo(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (contex) => TrackingOrderComments()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff7cB518),
              ),
              child: const Text('¡Recibi mi pedido!',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TrackingOrderCancel()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF86C5E),
              ),
              child: const Text('Quiero devolver mi pedido',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

  Container _dateOfOrder() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: const Color(0xFFF2F2F2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Detalle del pedido',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                color: Color(0xff525252)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('01 Shell Advance AX5 20W-50',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff525252))),
              Text('S/ 870.00',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      color: Color(0xff525252))),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('01 Shell Rimula 20W 50-4500',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff525252))),
              Text('S/ 565.00',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w900,
                      color: Color(0xff525252))),
            ],
          ),
        ],
      ),
    );
  }
}
