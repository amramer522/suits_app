import 'package:flutter/material.dart';

import 'components/category_items.dart';

class FavsPage extends StatefulWidget {
  const FavsPage({Key? key}) : super(key: key);

  @override
  State<FavsPage> createState() => _FavsPageState();
}

class _FavsPageState extends State<FavsPage> {
  List<String> images = [
    "https://suitshop.com/static/293859623009445dda723d7a6b1bcd1f/41ad3/spotlight-collection-mens-2.jpg",
    "https://cdn.suitsupply.com/image/upload/ar_10:21,b_rgb:efefef,bo_200px_solid_rgb:efefef,c_pad,g_north,w_2600/b_rgb:efefef,c_lfill,g_north,dpr_1,w_768,h_922,f_auto,q_auto,fl_progressive/products/suits/default/Winter/P6733_1.jpg",
    "https://image.mooresclothing.ca/is/image/Moores/37DX_01_AWEARNESS_BY_KENNETH_COLE_SUIT_SEPARATE_JACKETS_BLACK_SOLID_MAIN?imPolicy=pdp-mob",
    "https://happygentleman.com/wp-content/uploads/2022/08/Madrid_suit_Navy-3-picece-suit-for-men-happy-gentleman-5-400x400.webp",
    "https://www.knotstandard.com/assets/images/products/3411-listing.jpg?202304204",
    "https://www.tiptop.ca/cdn/shop/files/TT-5117-976-5016_navy_5215c3a6-846b-44f7-a365-8c53e0eb54da_600x600.jpg?v=1695061938",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Wishlist")),
      body: Column(
        children: [
          CategoryItems(),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 19),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20, childAspectRatio: 151 / 147),
              itemCount: images.length,
              itemBuilder: (context, index) => ItemFav(
                image: images[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ItemFav extends StatelessWidget {
  final String image;

  const ItemFav({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: Padding(
                  padding: EdgeInsetsDirectional.only(top: 9, end: 13),
                  child: CircleAvatar(
                    child: Icon(Icons.favorite),
                    backgroundColor: Colors.white.withOpacity(.50),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            children: [
              Text(
                "classic blazar",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Icon(
                Icons.star,
                size: 15,
                color: Colors.orange,
              ),
              Text(
                "4.9",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xff979696)),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            "\$83.97",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Color(0xffAB94A6)),
          ),
        )
      ],
    );
  }
}
