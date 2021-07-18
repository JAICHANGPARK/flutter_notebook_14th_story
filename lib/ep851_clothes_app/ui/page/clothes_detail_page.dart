import 'package:flutter/material.dart';

class ClothesDetailPage extends StatefulWidget {
  final String? img;
  final String? title;
  final double? price;
   ClothesDetailPage({Key? key,
   this.img,
   this.title,
   this.price}) : super(key: key);

  @override
  _ClothesDetailPageState createState() => _ClothesDetailPageState();
}

class _ClothesDetailPageState extends State<ClothesDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Expanded(child: Placeholder()),
          Expanded(child: Placeholder()),
          Expanded(child: Placeholder()),
        ],
      )
    );
  }
}













