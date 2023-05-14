import 'package:flutter/material.dart';

class TrackingOrderCancel2 extends StatefulWidget {
  const TrackingOrderCancel2({super.key});

  @override
  State<TrackingOrderCancel2> createState() => _TrackingOrderCancel2State();
}

class _TrackingOrderCancel2State extends State<TrackingOrderCancel2> {
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
                  '¿Porque quieres anular el pedido?',
                  style: TextStyle(fontSize: 16, color: Color(0xff2A2A2A)),
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border:
                          Border.all(color: Colors.grey.shade200, width: 1)),
                  child: ListTile(
                    trailing: const Icon(Icons.keyboard_arrow_down),
                    title: Text('Quiero modificar el pedido',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: Colors.grey.shade800)),
                  ),
                ),
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
              ],
            ),
            _buttonsInfo(context),
          ],
        ),
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
