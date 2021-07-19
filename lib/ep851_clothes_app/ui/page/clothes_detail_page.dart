import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClothesDetailPage extends StatefulWidget {
  final String? img;
  final String? title;
  final double? price;

  ClothesDetailPage({Key? key, this.img, this.title, this.price}) : super(key: key);

  @override
  _ClothesDetailPageState createState() => _ClothesDetailPageState();
}

class _ClothesDetailPageState extends State<ClothesDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.orangeAccent,
                    image: DecorationImage(
                      image: NetworkImage(widget.img ?? ""),
                      fit: BoxFit.cover,
                    )),
                child: Stack(
                  children: [
                    Positioned(
                        left: 16,
                        top: 16,
                        right: 16,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => Get.back(),
                              child: CircleAvatar(
                                backgroundColor: Colors.grey[300],
                                radius: 16,
                                foregroundColor: Colors.black.withOpacity(0.4),
                                child: Icon(Icons.keyboard_arrow_left),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Colors.grey[300],
                              radius: 16,
                              foregroundColor: Colors.black.withOpacity(0.4),
                              child: Icon(Icons.more_horiz),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
            flex: 12,
          ),
          Expanded(
            child: Column(
              children: [
                
              ],
            ),
            flex: 5,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16, top: 16),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        "\$79.99",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(width: 24),
                  Expanded(
                      child: Container(
                    height: double.infinity,
                    decoration: BoxDecoration(color: Colors.orangeAccent, borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Add to Cart",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )),
                ],
              ),
            ),
            flex: 2,
          ),
        ],
      ),
    ));
  }
}
