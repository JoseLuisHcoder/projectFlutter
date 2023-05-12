import 'package:cart/src/widgets/add_minus_button.dart';
import 'package:flutter/material.dart';

import '../widgets/search.dart';

class OrdersHistory extends StatefulWidget {
  const OrdersHistory({super.key});

  @override
  State<OrdersHistory> createState() => _OrdersHistoryState();
}

class _OrdersHistoryState extends State<OrdersHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            children: [
              Flexible(child: Search()),
              SizedBox(
                  width: 48,
                  child: IconButton(
                      color: Colors.grey.shade800,
                      onPressed: () {},
                      icon: const Icon(Icons.qr_code)))
            ],
          )),
      body: Column(
        children: [
          _buttonHeader(context),
          const SizedBox(
            height: 20,
          ),
          _drawerOption(),
          const SizedBox(
            height: 10,
          ),
          _dateOptions(),
          _listOrders(context),
          _pagination(),
        ],
      ),
    );
  }

  Container _pagination() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.grey.shade400,
                width: 1,
              ),
            ),
            child: Icon(
              Icons.chevron_left_outlined,
              size: 20,
              color: Colors.grey.shade500,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xff00BBF9),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.grey.shade400,
                  width: 1,
                ),
              ),
              child: const Center(
                child: Text(
                  '1',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
              )),
          const SizedBox(
            width: 10,
          ),
          Container(
            width: 40,
            height: 40,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.grey.shade400,
                width: 1,
              ),
            ),
            child: Icon(
              Icons.chevron_right_outlined,
              size: 20,
              color: Colors.grey.shade500,
            ),
          ),
        ],
      ),
    );
  }

  Container _listOrders(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
      child: Column(
        children: [
          const Divider(),
          Row(
            children: [
              Icon(
                Icons.description_outlined,
                color: Colors.grey.shade600,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'P001-0005645',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade800),
                          ),
                          Text(
                            'Emidtido el 12/05/2023',
                            style: TextStyle(color: Colors.grey.shade600),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'S/ 7800.00',
                style: TextStyle(fontSize: 20, color: Colors.grey.shade900),
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              Icon(
                Icons.description_outlined,
                color: Colors.grey.shade600,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'P001-0005632',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade800),
                          ),
                          Text(
                            'Emidtido el 10/05/2023',
                            style: TextStyle(color: Colors.grey.shade600),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'S/ 520.00',
                style: TextStyle(fontSize: 20, color: Colors.grey.shade900),
              )
            ],
          ),
          const Divider(),
          Row(
            children: [
              Icon(
                Icons.description_outlined,
                color: Colors.grey.shade600,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'P001-0005620',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade800),
                          ),
                          Text(
                            'Emidtido el 02/05/2023',
                            style: TextStyle(color: Colors.grey.shade600),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'S/ 3580.00',
                style: TextStyle(fontSize: 20, color: Colors.grey.shade900),
              )
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }

  Container _dateOptions() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                border: Border(
              right: BorderSide(width: 1.0, color: Colors.grey.shade800),
            )),
            child: Row(
              children: [
                Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    child: const Text('2022')),
                Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff00BBF9),
                        borderRadius: BorderRadius.circular(4)),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: const Text(
                      '2023',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                    child: const Text('Ene')),
                Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    child: const Text('Feb')),
                Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: const Text('Mar')),
                Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(4)),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    child: const Text('Abr')),
                Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff00BBF9),
                        borderRadius: BorderRadius.circular(4)),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                    child: const Text(
                      'May',
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _drawerOption() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade200, width: 1)),
      child: ListTile(
        trailing: const Icon(Icons.keyboard_arrow_down),
        title: Text('Pedidos entregados (3)',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Roboto',
                color: Colors.grey.shade800)),
      ),
    );
  }

  Container _buttonHeader(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.15,
      padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                    ),
                    child: Icon(
                      Icons.location_on_outlined,
                      size: 35,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  const Text(
                    'En progreso',
                    style: TextStyle(
                        color: Color(0xff525252),
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              const SizedBox(
                width: 35,
              ),
              Column(
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF4BF),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: const Color(0xFFFFD400),
                        width: 1,
                      ),
                    ),
                    child: const Icon(
                      Icons.layers,
                      size: 35,
                      color: Color(0xFFFFD400),
                    ),
                  ),
                  const Text(
                    'Historial',
                    style: TextStyle(
                        color: Color(0xff525252),
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
