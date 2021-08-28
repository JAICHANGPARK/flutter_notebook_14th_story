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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "My Assets",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: _myAsset.myAssets?.length ?? 1,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                        child: Row(
                          children: [
                            const SizedBox(
                              child: Card(
                                elevation: 4,
                                child: Center(
                                  child: CircleAvatar(
                                    radius: 16,
                                  ),
                                ),
                              ),
                              height: 64,
                              width: 64,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${_myAsset.myAssets?[index].coin}",
                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 8),
                                  Text("${_myAsset.myAssets?[index].unit}"),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Text(
                                  "USD ${_myAsset.myAssets?[index].price}",
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 8,
                                        backgroundColor: _myAsset.myAssets?[index].change?.upDown == "up"
                                            ? Colors.green
                                            : Colors.red,
                                        foregroundColor: Colors.white,
                                        child: _myAsset.myAssets?[index].change?.upDown == "up"
                                            ? const Icon(
                                          Icons.arrow_upward,
                                          size: 8,
                                        )
                                            : const Icon(
                                          Icons.arrow_downward,
                                          size: 8,
                                        )),
                                    const SizedBox(width: 8),
                                    Text(
                                      "${_myAsset.myAssets?[index].change?.upDown == "up" ? "+" : "-"}"
                                          " ${_myAsset.myAssets?[index].change?.rate}%",
                                      style: TextStyle(
                                          color: _myAsset.myAssets?[index].change?.upDown == "up"
                                              ? Colors.green
                                              : Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    "Crypto Assets",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                    itemCount: _cryptoAsset.cryptoAssets?.length ?? 1,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                        child: Row(
                          children: [
                            const SizedBox(
                              child: Card(
                                elevation: 4,
                                child: Center(
                                  child: CircleAvatar(
                                    radius: 16,
                                  ),
                                ),
                              ),
                              height: 64,
                              width: 64,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${_cryptoAsset.cryptoAssets?[index].coin}",
                                    style: const TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 8),
                                  Text("${_cryptoAsset.cryptoAssets?[index].unit}"),
                                ],
                              ),
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Text(
                                  "USD ${_cryptoAsset.cryptoAssets?[index].price}",
                                  style: const TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 8,
                                        backgroundColor: _cryptoAsset.cryptoAssets?[index].change?.upDown == "up"
                                            ? Colors.green
                                            : Colors.red,
                                        foregroundColor: Colors.white,
                                        child: _cryptoAsset.cryptoAssets?[index].change?.upDown == "up"
                                            ? const Icon(
                                          Icons.arrow_upward,
                                          size: 8,
                                        )
                                            : const Icon(
                                          Icons.arrow_downward,
                                          size: 8,
                                        )),
                                    const SizedBox(width: 8),
                                    Text(
                                      "${_cryptoAsset.cryptoAssets?[index].change?.upDown == "up" ? "+" : "-"}"
                                          " ${_cryptoAsset.cryptoAssets?[index].change?.rate}%",
                                      style: TextStyle(
                                          color: _cryptoAsset.cryptoAssets?[index].change?.upDown == "up"
                                              ? Colors.green
                                              : Colors.red,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
