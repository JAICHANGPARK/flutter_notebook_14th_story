import 'package:flutter/material.dart';

import 'ui/crypto_mobile_main_page.dart';

class CryptoMobileApp extends StatelessWidget {
  const CryptoMobileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CryptoMobileMainPage(),
    );
  }
}
