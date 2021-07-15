import 'package:flutter/material.dart';

class ClothesHomePage extends StatelessWidget {
  final ValueNotifier<int> _pageIndex = ValueNotifier<int>(0);

  ClothesHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  _pageIndex.value = 0;
                },
                child: ValueListenableBuilder<int>(
                  builder: (context, idx, child) {
                    if (idx == 0) {
                      return Column(
                        children: const [
                          Icon(Icons.home),
                          CircleAvatar(
                            radius: 2,
                            backgroundColor: Colors.orangeAccent,
                          )
                        ],
                      );
                    }
                    return Icon(Icons.home);
                  },
                  valueListenable: _pageIndex,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
