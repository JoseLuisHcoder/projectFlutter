import 'package:flutter/material.dart';

class TrackingOrderCancel extends StatefulWidget {
  const TrackingOrderCancel({super.key});

  @override
  State<TrackingOrderCancel> createState() => _TrackingOrderCancelState();
}

class _TrackingOrderCancelState extends State<TrackingOrderCancel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey.shade800,
        ),
        backgroundColor: Colors.grey.shade200,
        title: const Text(
          'Tracking del pedido',
          style: TextStyle(fontSize: 16, color: Color(0xff525252)),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  '¿Porque quieres devolver el pedido?',
                  style: TextStyle(fontSize: 16, color: Color(0xff2A2A2A)),
                ),
                const SizedBox(
                  height: 7,
                ),
                _optionDrawer(),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Dejanos un comentario. Queremos ayudarte ',
                  style: TextStyle(fontSize: 16, color: Color(0xff2A2A2A)),
                ),
                const SizedBox(
                  height: 7,
                ),
                _inputComment(),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '¿Cuando podemos volver con el pedido?',
                  style: TextStyle(fontSize: 16, color: Color(0xff2A2A2A)),
                ),
                _dateDrawer(),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Puedes subir fotos',
                  style: TextStyle(fontSize: 16, color: Color(0xff2A2A2A)),
                ),
                const SizedBox(
                  height: 10,
                ),
                _iconCamera(),
              ],
            ),
            _buttonsInfo(context),
          ],
        ),
      ),
    );
  }

  Container _optionDrawer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade200, width: 2)),
      child: ListTile(
        trailing: const Icon(Icons.keyboard_arrow_down),
        title: Text('No tengo dinero para pagar mi pedido',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Roboto',
                color: Colors.grey.shade800)),
      ),
    );
  }

  Container _iconCamera() {
    return Container(
      width: 64,
      height: 64,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1,
        ),
      ),
      child: Icon(
        Icons.photo_camera_outlined,
        size: 35,
        color: Colors.grey.shade300,
      ),
    );
  }

  Container _dateDrawer() {
    return Container(
      width: 170,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey.shade200, width: 1)),
      child: ListTile(
        trailing: const Icon(Icons.keyboard_arrow_down),
        title: Text('12/05/2023',
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Roboto',
                color: Colors.grey.shade800)),
      ),
    );
  }

  Container _inputComment() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 164,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: TextFormField(
        maxLines: null,
        decoration: const InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        ),
      ),
    );
  }

  Container _buttonsInfo(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 48,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffF86C5E),
              ),
              child: const Text('Devolver mi pedido',
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
        ],
      ),
    );
  }
}
