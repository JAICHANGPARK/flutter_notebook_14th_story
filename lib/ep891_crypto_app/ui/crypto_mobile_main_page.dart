import 'package:flutter/material.dart';

class CryptoMobileMainPage extends StatefulWidget {
  const CryptoMobileMainPage({Key? key}) : super(key: key);

  @override
  _CryptoMobileMainPageState createState() => _CryptoMobileMainPageState();
}

class _CryptoMobileMainPageState extends State<CryptoMobileMainPage> {
  ValueNotifier<int> _tabIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Placeholder()),
            Expanded(child: Placeholder()),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
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
                      icon: Icon(Icons.home)),
                  IconButton(
                      onPressed: () {
                        _tabIndex.value = 1;
                      },
                      icon: Icon(Icons.pie_chart_outline_outlined)),
                  IconButton(
                      onPressed: () {
                        _tabIndex.value = 2;
                      },
                      icon: Icon(Icons.account_balance_wallet_outlined)),
                  IconButton(
                      onPressed: () {
                        _tabIndex.value = 3;
                      },
                      icon: Icon(Icons.person_outline)),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
