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
    );
  }
}
