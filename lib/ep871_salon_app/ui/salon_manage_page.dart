import 'package:flutter/material.dart';


class SalonManagePage extends StatelessWidget {
  const SalonManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Manage Staff"),),
      body: Column(
        children: [
          Expanded(child: Container(
            color: Colors.white,
            child: Column(
              children: [

              ],
            ),
          ), flex: 2,),
          Expanded(child: Placeholder(), flex: 10,),
        ],
      ),


    );
  }
}
