import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep891_crypto_app/model/crypto_asset.dart';
import 'package:flutter_notebook_14th_story/ep891_crypto_app/model/my_assets.dart';
import 'package:flutter_notebook_14th_story/ep891_crypto_app/ui/crypto_portofolio_page.dart';

import 'crypto_balance_page.dart';

class CryptoMobileMainPage extends StatefulWidget {
  CryptoMobileMainPage({Key? key}) : super(key: key);

  @override
  _CryptoMobileMainPageState createState() => _CryptoMobileMainPageState();
}

class _CryptoMobileMainPageState extends State<CryptoMobileMainPage> {
  ValueNotifier<int> _tabIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder<int>(
        valueListenable: _tabIndex,
        builder: (context, value, child) {
          if (value == 0) {
            return CryptoBalancePage();
          } else if (value == 1) {
            return CryptoPortfolioPage();
          }
          return Container();
        },
      )),
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
