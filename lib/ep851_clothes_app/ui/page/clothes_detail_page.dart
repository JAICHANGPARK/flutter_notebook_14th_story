import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${widget.title}",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 16,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star_border,
                        color: Colors.orangeAccent,
                      ),
                      Text("4.5 (2.7k)"),
                    ],
                  ),
                  Text(
                    "${lorem(paragraphs: 1, words: 32)}",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey[300]!),
                          borderRadius: BorderRadius.circular(4)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Text("S"),
                      ),
                      SizedBox(width: 8,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(4)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Text("M"),
                      ), SizedBox(width: 8,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(4)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Text("L"),
                      ), SizedBox(width: 8,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(4)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Text("XL"),
                      ),
                      SizedBox(width: 8,),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(4)
                        ),
                        padding: EdgeInsets.all(12),
                        child: Text("XXL"),
                      )
                    ],
                  )
                ],
              ),
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
