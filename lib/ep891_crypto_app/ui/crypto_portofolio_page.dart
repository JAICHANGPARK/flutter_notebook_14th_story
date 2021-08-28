import 'package:flutter/material.dart';

class CryptoPortfolioPage extends StatefulWidget {
  CryptoPortfolioPage({Key? key}) : super(key: key);

  @override
  _CryptoPortfolioPageState createState() => _CryptoPortfolioPageState();
}

class _CryptoPortfolioPageState extends State<CryptoPortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text("Portofolio"),
          Row(
            children: [
              Column(
                children: [Text("\$23,874.45"), Text("Portofolio balance")],
              ),
              FloatingActionButton(
                mini: true,
                onPressed: () {},
                child: Icon(Icons.arrow_forward),
                backgroundColor: Colors.white,
                elevation: 3,
                foregroundColor: Colors.black,
              )
            ],
          )
        ],
      ),
    );
  }
}
