import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: MediaQuery.of(context).size.width * 0.72,
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.grey.shade800,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Busca en nuestro almacen',
          contentPadding: const EdgeInsets.fromLTRB(0, 12, 0, 16),
          border: InputBorder.none,
          suffixIcon: Container(
              width: 32,
              height: 24,
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
              decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                  onPressed: () {},
                  color: Colors.white,
                  iconSize: 20,
                  icon: const Icon(
                    Icons.search,
                  ))),
        ),
      ),
    );
  }
}
