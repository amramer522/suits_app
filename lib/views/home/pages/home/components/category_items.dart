import 'package:flutter/material.dart';

import 'item.dart';

class CategoryItems extends StatefulWidget {
  const CategoryItems({Key? key}) : super(key: key);

  @override
  State<CategoryItems> createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<CategoryItems> {
  List<String> images = [
    "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&q=80&w=2970&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "https://backgroundclean.com/images/uploads/pantolon.jpg",
    "https://main-cdn.sbermegamarket.ru/hlr-system/-1/10/55/23/31/36/5/100026666378b0.jpg",
    "https://www.jackpykeshop.co.uk/images/detailed/7/moleskin_trousers.jpg",
  ];
  List<String> titles = ["Pant", "Shirt", "Men\nShoes", "Women\nShoes"];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Text(
            "Categary",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Spacer(),
          Text(
            "See All",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xff4E6542)),
          ),
        ],
      ),
      SizedBox(
        height: 18,
      ),
      Container(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Item(
            image: images[index],
            name: titles[index],
          ),
          itemCount: titles.length,
        ),
      ),
    ],);
  }
}

