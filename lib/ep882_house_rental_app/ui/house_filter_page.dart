import 'package:flutter/material.dart';

class HouseFilterPage extends StatelessWidget {
  const HouseFilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: Icon(Icons.clear),
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Filter",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              flex: 10,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Text(
                      "Show Me",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
