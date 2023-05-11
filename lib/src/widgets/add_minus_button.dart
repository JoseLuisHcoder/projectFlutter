import 'package:flutter/material.dart';

class AddMinusButton extends StatefulWidget {
  const AddMinusButton({super.key});

  @override
  State<AddMinusButton> createState() => _AddMinusButtonState();
}

class _AddMinusButtonState extends State<AddMinusButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
            Icons.remove,
            size: 10,
          ),
        ),
        const Text(
          ' 1 ',
          style: TextStyle(fontSize: 14, fontFamily: 'Roboto'),
        ),
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
            Icons.add,
            size: 10,
          ),
        )
      ],
    );
  }
}
