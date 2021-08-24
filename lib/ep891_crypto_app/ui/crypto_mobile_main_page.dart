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
          children: const [
            Expanded(flex: 6, child: Placeholder()),
            Expanded(flex: 7, child: Placeholder()),
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
                      icon: value == 0
                          ? Icon(
                              Icons.home,
                              color: Colors.indigo,
                            )
                          : Icon(
                              Icons.home_outlined,
                              color: Colors.grey,
                            )),
                  IconButton(
                      onPressed: () {
                        _tabIndex.value = 1;
                      },
                      icon: value == 1
                          ? Icon(
                              Icons.pie_chart,
                              color: Colors.indigo,
                            )
                          : Icon(
                              Icons.pie_chart_outline_outlined,
                              color: Colors.grey,
                            )),
                  IconButton(
                      onPressed: () {
                        _tabIndex.value = 2;
                      },
                      icon: value == 2
                          ? Icon(
                              Icons.account_balance_wallet,
                              color: Colors.indigo,
                            )
                          : Icon(
                              Icons.account_balance_wallet_outlined,
                              color: Colors.grey,
                            )),
                  IconButton(
                      onPressed: () {
                        _tabIndex.value = 3;
                      },
                      icon: value == 3
                          ? Icon(
                              Icons.person,
                              color: Colors.indigo,
                            )
                          : Icon(
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
