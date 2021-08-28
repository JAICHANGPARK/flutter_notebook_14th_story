import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep891_crypto_app/model/crypto_asset.dart';
import 'package:flutter_notebook_14th_story/ep891_crypto_app/model/my_assets.dart';

class CryptoPortfolioPage extends StatefulWidget {
  CryptoPortfolioPage({Key? key}) : super(key: key);

  @override
  _CryptoPortfolioPageState createState() => _CryptoPortfolioPageState();
}

class _CryptoPortfolioPageState extends State<CryptoPortfolioPage> {

  late MyAsset _myAsset;
  late CryptoAsset _cryptoAsset;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _myAsset = MyAsset.fromJson(jsonDecode(kCryptoMyAsset));
    _cryptoAsset = CryptoAsset.fromJson(jsonDecode(kCryptoAsset));
    setState(() {});
  }

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
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Today's Results",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey),
                ),
                Text(
                  "\$ 23,874.45",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Estimated Profit",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey),
                ),
                Text(
                  "\$ 34.45",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Realized Profit",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal, color: Colors.grey),
                ),
                Text(
                  "\$ 4,553.55",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
