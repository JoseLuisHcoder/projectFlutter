import 'package:cart/src/pages/search2.dart';
import 'package:cart/src/pages/search_1.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _inputSearch(),
      ),
      body: Column(
        children: [
          _imageCategory(),
          Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              color: Colors.grey.shade200,
              child: Text(
                'BUSQUEDAS RECIENTES',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14, color: Colors.grey.shade800),
              )),
          _listSearch(),
          Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              color: Colors.grey.shade200,
              child: Text(
                'VISTOS RECIENTEMENTE',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14, color: Colors.grey.shade800),
              )),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _cardView(),
                _cardView(),
                _cardView(),
                _cardView(),
                _cardView(),
              ],
            ),
          ),
          Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              color: Colors.grey.shade200,
              child: Text(
                'BÚSQUEDAS POPULARES',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14, color: Colors.grey.shade800),
              )),
          _searcherPopular(),
        ],
      ),
    );
  }

  Container _searcherPopular() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Wrap(
        spacing: 7,
        runSpacing: 7,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Search1()));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
              decoration: BoxDecoration(
                  color: const Color(0xFFDEDEDE),
                  border: Border.all(width: 1, color: Colors.grey.shade200),
                  borderRadius: BorderRadius.circular(16)),
              child: Text(
                'Baterías para auto',
                style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
            decoration: BoxDecoration(
                color: const Color(0xFFDEDEDE),
                border: Border.all(width: 1, color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(16)),
            child: Text(
              'Lubricantes para motos',
              style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
            decoration: BoxDecoration(
                color: const Color(0xFFDEDEDE),
                border: Border.all(width: 1, color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(16)),
            child: Text(
              'Neumáticos para maquinaria pesada',
              style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
            decoration: BoxDecoration(
                color: const Color(0xFFDEDEDE),
                border: Border.all(width: 1, color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(16)),
            child: Text(
              'Shell Advanced',
              style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
            decoration: BoxDecoration(
                color: const Color(0xFFDEDEDE),
                border: Border.all(width: 1, color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(16)),
            child: Text(
              'Baterías para camiones',
              style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
            ),
          ),
        ],
      ),
    );
  }

  Container _cardView() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(
          width: 4,
          color: Colors.grey.shade200,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.network(
              'https://d2r9epyceweg5n.cloudfront.net/stores/987/204/products/rimula-r4-x-15w40-4l1-ac889731d29dd4c3fc16197199460451-640-0.jpg',
              width: 120),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SHELL HELIX ',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 12,
                  color: Colors.grey.shade900,
                ),
              ),
              Text(
                'Shell Advance AX5 20W-50 ',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 12,
                  color: Colors.grey.shade900,
                ),
                textAlign: TextAlign.left,
              ),
              Row(
                children: [
                  Text(
                    'SKU:45465465',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 12,
                        color: Colors.grey.shade800,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  Container _listSearch() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Lubricantes para maquinaria pesada',
                style: TextStyle(fontSize: 14, color: Color(0xff2A2A2A)),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.close,
                    size: 20,
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Neumáticos para motos',
                style: TextStyle(fontSize: 14, color: Color(0xff2A2A2A)),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.close,
                    size: 20,
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Shell Helíx Ultra 5w30',
                style: TextStyle(fontSize: 14, color: Color(0xff2A2A2A)),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.close,
                    size: 20,
                  ))
            ],
          ),
        ],
      ),
    );
  }

  Container _imageCategory() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Search2()));
            },
            child: Column(
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundColor: Colors.grey.shade200,
                ),
                const Text(
                  'Lubricantes',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: Colors.grey.shade200,
              ),
              const Text(
                'Neumáticos',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: Colors.grey.shade200,
              ),
              const Text(
                'Motocicletas',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 32,
                backgroundColor: Colors.grey.shade200,
              ),
              const Text(
                'Baterías',
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }

  Container _inputSearch() {
    return Container(
      height: 32,
      // width: MediaQuery.of(context).size.width * 0.8,
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 2),
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
