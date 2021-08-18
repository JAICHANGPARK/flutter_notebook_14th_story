import 'package:flutter/material.dart';


class HouseFilterPage extends StatelessWidget {
  const HouseFilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Placeholder(), flex: 10,),
            Expanded(child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
