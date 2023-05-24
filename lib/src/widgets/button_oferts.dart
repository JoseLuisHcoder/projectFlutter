import 'package:cart/data/themes.dart';
import 'package:cart/src/pages/morre_offers.dart';
import 'package:flutter/material.dart';

class ButtonOferts extends StatelessWidget {
  const ButtonOferts({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MoreOffers()));
      },
      child: Container(
          width: 64,
          height: 64,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Más',
                style: TextStyle(fontSize: 12),
              ),
              Icon(
                Icons.arrow_forward,
                size: 15,
                color: kSecondary,
              ),
            ],
          )),
    );
  }
}
