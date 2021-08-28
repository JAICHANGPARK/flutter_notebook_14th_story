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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Portofolio",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$23,874.45",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Portofolio balance",
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey),
                      ),
                    ],
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
