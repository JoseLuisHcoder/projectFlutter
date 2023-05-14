import 'package:flutter/material.dart';

class TrackingOrderComments extends StatefulWidget {
  const TrackingOrderComments({super.key});

  @override
  State<TrackingOrderComments> createState() => _TrackingOrderCommentsState();
}

class _TrackingOrderCommentsState extends State<TrackingOrderComments> {
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
                  '¿Que te pareció el servicio ',
                  style: TextStyle(fontSize: 16, color: Color(0xff2A2A2A)),
                ),
                const SizedBox(
                  height: 7,
                ),
                _starts(),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '¿Tienes algun comentario? ',
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
                  'Puedes subir fotos',
                  style: TextStyle(fontSize: 16, color: Color(0xff2A2A2A)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
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

  Container _starts() {
    return Container(
      child: Row(
        children: const [
          Icon(
            Icons.star,
            color: Color(0xffFFD400),
          ),
          Icon(
            Icons.star,
            color: Color(0xffFFD400),
          ),
          Icon(
            Icons.star,
            color: Color(0xffFFD400),
          ),
          Icon(
            Icons.star,
            color: Color(0xffFFD400),
          ),
          Icon(
            Icons.star_border_outlined,
            color: Color(0xffFFD400),
          )
        ],
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
                backgroundColor: const Color(0xff8E8E8E),
              ),
              child: const Text('Enviar comentarios',
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
