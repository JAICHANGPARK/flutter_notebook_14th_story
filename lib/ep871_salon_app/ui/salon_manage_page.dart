import 'package:flutter/material.dart';

class SalonManagePage extends StatelessWidget {
  const SalonManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Manage Staff"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add_box))],
      ),
      body: Column(
        children: [
          Container(
            height: 64,
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            color: Colors.white,
            child: Container(
              decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(16)),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextField(
                decoration:
                    InputDecoration(border: InputBorder.none, hintText: "Search Staff", suffixIcon: Icon(Icons.search)),
              ),
            ),
          ),
          SizedBox(
            height: 8,
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
