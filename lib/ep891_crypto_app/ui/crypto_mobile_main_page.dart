import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep891_crypto_app/model/crypto_asset.dart';
import 'package:flutter_notebook_14th_story/ep891_crypto_app/model/my_assets.dart';

class CryptoMobileMainPage extends StatefulWidget {
  CryptoMobileMainPage({Key? key}) : super(key: key);

  @override
  _CryptoMobileMainPageState createState() => _CryptoMobileMainPageState();
}

class _CryptoMobileMainPageState extends State<CryptoMobileMainPage> {
  ValueNotifier<int> _tabIndex = ValueNotifier(0);

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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Balance",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications_outlined),
                        ),
                      ],
                    ),
                    Text(
                      "\$ ${_myAsset.balance}",
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green[100],
                            borderRadius: BorderRadius.circular(24),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 4),
                          child: const Text(
                            "This Week",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(
                            "+ ${_myAsset.thisWeek}%",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          decoration: BoxDecoration(color: Colors.indigo, borderRadius: BorderRadius.circular(24)),
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.account_balance_wallet_outlined,
                                color: Colors.white,
                                size: 16,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "Top Up",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        "My Assets",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _myAsset.myAssets!.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Container(
                                  width: 140,
                                  decoration:
                                      BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)),
                                  padding: const EdgeInsets.all(7),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          CircleAvatar(
                                            radius: 12,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            "${_myAsset.myAssets?[index].coin}",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Text("${_myAsset.myAssets?[index].unit}"),
                                      Text(
                                        "USD ${_myAsset.myAssets?[index].price}",
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
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
                                  ),
                                ),
                              );
                            }))
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          "Crypto Assets",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                          child: ListView.builder(
                              itemCount: _cryptoAsset.cryptoAssets?.length ?? 1,
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    SizedBox(
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
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("${_cryptoAsset.cryptoAssets?[index].coin}"),
                                        Text("${_cryptoAsset.cryptoAssets?[index].unit}"),
                                      ],
                                    )
                                  ],
                                );
                              })),
                    ],
                  ),
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 72,
          child: ValueListenableBuilder<int>(
            valueListenable: _tabIndex,
            builder: (context, value, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        _tabIndex.value = 0;
                      },
                      icon: value == 0
                          ? const Icon(
                              Icons.home,
                              color: Colors.indigo,
                            )
                          : const Icon(
                              Icons.home_outlined,
                              color: Colors.grey,
                            )),
                  IconButton(
                      onPressed: () {
                        _tabIndex.value = 1;
                      },
                      icon: value == 1
                          ? const Icon(
                              Icons.pie_chart,
                              color: Colors.indigo,
                            )
                          : const Icon(
                              Icons.pie_chart_outline_outlined,
                              color: Colors.grey,
                            )),
                  IconButton(
                      onPressed: () {
                        _tabIndex.value = 2;
                      },
                      icon: value == 2
                          ? const Icon(
                              Icons.account_balance_wallet,
                              color: Colors.indigo,
                            )
                          : const Icon(
                              Icons.account_balance_wallet_outlined,
                              color: Colors.grey,
                            )),
                  IconButton(
                      onPressed: () {
                        _tabIndex.value = 3;
                      },
                      icon: value == 3
                          ? const Icon(
                              Icons.person,
                              color: Colors.indigo,
                            )
                          : const Icon(
                              Icons.person_outline,
                              color: Colors.grey,
                            )),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
