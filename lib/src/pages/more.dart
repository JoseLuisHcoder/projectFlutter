import 'package:cart/src/pages/products_best_sellings.dart';
import 'package:flutter/material.dart';

class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: const Text(
          'Descubre',
          style: TextStyle(fontSize: 16, color: Color(0xff525252)),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            trailing: const Icon(Icons.chevron_right),
            leading: const Icon(Icons.account_circle_outlined),
            onTap: () {},
            title: Container(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Text('Cuenta',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      color: Colors.grey.shade800)),
            ),
          ),
          const Divider(),
          ListTile(
            trailing: const Icon(Icons.chevron_right),
            leading: const Icon(Icons.favorite_outline),
            onTap: () {},
            title: Container(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Text('Beneficios',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      color: Colors.grey.shade800)),
            ),
          ),
          const Divider(),
          ListTile(
            trailing: const Icon(Icons.chevron_right),
            leading: const Icon(Icons.tune_outlined),
            onTap: () {},
            title: Container(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Text('Configuración',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      color: Colors.grey.shade800)),
            ),
          ),
          const Divider(),
          ListTile(
            trailing: const Icon(Icons.chevron_right),
            leading: const Icon(Icons.help_outline),
            onTap: () {},
            title: Container(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Text('Centro de ayuda',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      color: Colors.grey.shade800)),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.favorite_outline),
            onTap: () {},
            title: Container(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: const Text('Cerrar sesión',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Roboto',
                      color: Color(0xffF86C5E))),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
