import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String name, image;

  const Item({Key? key, required this.name, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 25),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            padding: EdgeInsets.all(15),
            child: Image.network(image),
            decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Color(0xffDD8560), width: 1)),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Color(0xff676767)),
          )
        ],
      ),
    );
  }
}
