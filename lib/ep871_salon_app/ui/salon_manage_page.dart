import 'package:flutter/material.dart';


class SalonManagePage extends StatelessWidget {
  const SalonManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: Container(), flex: 2,),
        Expanded(child: Placeholder(), flex: 10,),
      ],
    );
  }
}
