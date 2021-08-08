import 'package:flutter/material.dart';

class SalonManagePage extends StatelessWidget {
  const SalonManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Manage Staff"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon:  Icon(Icons.add_box))

        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [],
              ),
            ),
            flex: 2,
          ),
          Expanded(
            child: Placeholder(),
            flex: 10,
          ),
        ],
      ),
    );
  }
}
