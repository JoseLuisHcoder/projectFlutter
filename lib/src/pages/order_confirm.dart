import 'package:flutter/material.dart';

class OrderConfirm extends StatelessWidget {
  const OrderConfirm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buttonHeader(context),
        _dateOfOrder(),
        _dateItemsOrder(),
        _totalAmount(),
        _buttonsInfo(context)
      ],
    );
    ;
  }

  Container _buttonsInfo(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(
            height: 39,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFFD400),
              ),
              child: Text('Ir al inicio',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade800)),
            ),
          ),
        ],
      ),
    );
  }

  Container _totalAmount() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
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
            'S/ 1500.00',
            style: TextStyle(
                fontSize: 36,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w300,
                color: Color(0xffF86C5E)),
          ),
          SizedBox(
            height: 7,
          ),
        ],
      ),
    );
  }

  Container _dateItemsOrder() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                      fontWeight: FontWeight.w400,
                      color: Color(0xff525252))),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
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
      height: MediaQuery.of(context).size.height / 3,
      padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
      child: Column(
        children: const [
          Icon(
            Icons.check_circle_outline_sharp,
            size: 100,
            color: Color(0xFF7CB518),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '¡Gracias por confiar en nosotros!',
            style: TextStyle(
                color: Color(0xff525252),
                fontFamily: 'Roboto',
                fontSize: 16,
                fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '¡Comenzaremos a procesar tu pedido!',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xff7CB518),
                fontFamily: 'Roboto',
                fontSize: 32,
                fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
