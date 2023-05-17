import 'package:flutter/material.dart';

import '../widgets/search.dart';

class Search2 extends StatefulWidget {
  const Search2({super.key});

  @override
  State<Search2> createState() => _Search2State();
}

class _Search2State extends State<Search2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color(0xff525252),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: _titelAppHomePage(),
      ),
      body: Column(
        children: [
          ListTile(
            trailing: const Icon(Icons.chevron_right),
            leading: const Icon(Icons.local_mall_outlined),
            onTap: () {},
            title: Container(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Row(
                children: [
                  Text('SHELL',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          color: Colors.grey.shade800)),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '(60 productos)',
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                  )
                ],
              ),
            ),
          ),
          const Divider(),
          ListTile(
            trailing: const Icon(Icons.chevron_right),
            leading: const Icon(Icons.favorite_outline),
            onTap: () {},
            title: Container(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Row(
                children: [
                  Text('QUAKER STATE',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          color: Colors.grey.shade800)),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '(12 productos)',
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                  )
                ],
              ),
            ),
          ),
          const Divider(),
          ListTile(
            trailing: const Icon(Icons.chevron_right),
            leading: const Icon(Icons.camera_outlined),
            onTap: () {},
            title: Container(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: Row(
                children: [
                  Text('LUBRITEX',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          color: Colors.grey.shade800)),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '(08 productos)',
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                  )
                ],
              ),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }

  Row _titelAppHomePage() {
    return Row(
      children: [
        Flexible(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 15,
            ),
            Search(),
            Text('06 productos encontrados',
                style: TextStyle(fontSize: 12, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
          ],
        )),
        SizedBox(
            width: 30,
            child: IconButton(
                onPressed: () {}, icon: const Icon(Icons.notifications_none))),
        SizedBox(
            width: 48,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined)))
      ],
    );
  }
}
