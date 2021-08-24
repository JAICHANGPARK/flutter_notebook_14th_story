import 'package:flutter/material.dart';

class CryptoMobileMainPage extends StatefulWidget {
  const CryptoMobileMainPage({Key? key}) : super(key: key);

  @override
  _CryptoMobileMainPageState createState() => _CryptoMobileMainPageState();
}

class _CryptoMobileMainPageState extends State<CryptoMobileMainPage> {
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
          child: Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.home)),
              IconButton(onPressed: () {}, icon: Icon(Icons.pie_chart_outline_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.account_balance_wallet_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.person_outline)),
            ],
          ),
        ),
      ),
    );
  }
}
