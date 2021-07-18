import 'package:flutter/material.dart';

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
            child: Placeholder(),
            flex: 10,
          ),
          Expanded(
            child: Placeholder(),
            flex: 5,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    children: [Text("Price"), Text("\$79.99")],
                  ),
                  SizedBox(
                    width: 24,
                  ),
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
