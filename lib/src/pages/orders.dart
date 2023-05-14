import 'package:cart/src/pages/orders_history.dart';
import 'package:cart/src/pages/tracking_order.dart';
import 'package:cart/src/pages/tracking_order_cancel2.dart';
import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buttonHeader(context),
        _dateOfOrder(),
        _totalAmount(),
        _buttonsInfo(context)
      ],
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
                        builder: (context) => const TrackingOrder()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade600,
              ),
              child: const Text('¿Donde esta mi pedido?',
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
                        builder: (context) => const TrackingOrderCancel2()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF86C5E),
              ),
              child: const Text('Quiero anular mi pedido',
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
          const SizedBox(
            child: Text(
              'Podemos anular el pedido, solo si todavia no ha sido facturado',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  color: Color(0xff525252)),
            ),
          )
        ],
      ),
    );
  }

  Container _totalAmount() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        children: const [
          Text(
            'Total a pagar',
            style: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w300,
                color: Color(0xff525252)),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'S/1500.00',
            style: TextStyle(
                fontSize: 36,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w300,
                color: Color(0xff7CB518)),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Puedes pagar hasta el 20-Ene-2023',
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                color: Color(0xff525252)),
          ),
        ],
      ),
    );
  }

  Container _dateOfOrder() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      color: const Color(0xFFDEECC5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Datos del pedido',
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
              Text('Numero:',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff525252))),
              Text('00542545',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff525252))),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Fecha de emision:',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff525252))),
              Text('09-ene-2023 - 10:30:45',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff525252))),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Fecha de entrega:',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff525252))),
              Text('10-ene-2023',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff525252))),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Estado actual:',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Color(0xff525252))),
              Text('EN RUTA',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      color: Color(0xff525252))),
            ],
          ),
        ],
      ),
    );
  }

  Container _buttonHeader(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4,
      padding: const EdgeInsets.fromLTRB(0, 90, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                  Icons.location_on_outlined,
                  size: 35,
                  color: Color(0xFFFFD400),
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
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(
                    color: Colors.grey.shade300,
                    width: 1,
                  ),
                ),
                child: Icon(
                  Icons.layers,
                  size: 35,
                  color: Colors.grey.shade300,
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
    );
  }
}
