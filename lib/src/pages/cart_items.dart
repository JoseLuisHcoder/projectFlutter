import 'package:flutter/material.dart';

import '../../data/themes.dart';
import '../widgets/card_product.dart';
import '../widgets/card_product_option2.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Carro de compras",
          style:
              TextStyle(fontSize: 20, fontFamily: 'Roboto', color: Colors.grey),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              color: Colors.grey,
              icon: const Icon(Icons.share))
        ],
      ),
      body: Column(
        children: <Widget>[
          textoTitulo(),
          textoDropdawnSuperior(),
          const CardProduct(),
          const CardProductOption2(),
          buttonTotal(),
        ],
      ),
    );
  }
}

Widget textoTitulo() {
  return Row(
    children: [
      Expanded(
          child: Container(
              color: kBlue,
              padding: const EdgeInsets.all(10),
              child: const Text.rich(
                  textAlign: TextAlign.center,
                  TextSpan(
                    text:
                        '!Genial¡ En esta compra estas ganando 30 puntos, y estas ahorrando ',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                    children: [
                      TextSpan(
                        text: '\u{1f525}',
                      ),
                      TextSpan(text: 'S/ 40.'),
                      TextSpan(
                          text: '00',
                          style: TextStyle(
                              fontSize: 14,
                              textBaseline: TextBaseline.alphabetic,
                              fontWeight: FontWeight.bold))
                    ],
                  ))))
    ],
  );
}

Widget textoDropdawnSuperior() {
  return Container(
    padding: const EdgeInsets.all(12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text('¿Cuando quieres Recibir tu compra?',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'Roboto', fontSize: 14)),
        Icon(
          Icons.keyboard_arrow_down_sharp,
          size: 30,
        ),
      ],
    ),
  );
}

Widget buttonTotal() {
  return Container(
    color: Colors.grey.shade600,
    width: double.infinity,
    child: Column(
      children: [
        const Icon(
          Icons.keyboard_arrow_up_sharp,
          color: Colors.white,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Total: S/ 1800.00',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFD400),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: const Text(
                    'Hacer pedido',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
