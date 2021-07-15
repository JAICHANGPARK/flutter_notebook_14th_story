import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClothesHomeBottomNavBar extends StatelessWidget {
  const ClothesHomeBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    return BottomAppBar(
      child: Container(
        height: 64,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                _pageIndex.value = 0;
              },
              child: ValueListenableBuilder<int>(
                builder: (context, idx, child) {
                  if (idx == 0) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.home_outlined,
                          color: Colors.orangeAccent,
                        ),
                        CircleAvatar(
                          radius: 2,
                          backgroundColor: Colors.orangeAccent,
                        )
                      ],
                    );
                  }
                  return Icon(Icons.home_outlined);
                },
                valueListenable: _pageIndex,
              ),
            ),
            GestureDetector(
              onTap: () {
                _pageIndex.value = 1;
              },
              child: ValueListenableBuilder<int>(
                builder: (context, idx, child) {
                  if (idx == 1) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.apps_outlined, color: Colors.orangeAccent),
                        CircleAvatar(radius: 2, backgroundColor: Colors.orangeAccent)
                      ],
                    );
                  }
                  return Icon(Icons.apps_outlined);
                },
                valueListenable: _pageIndex,
              ),
            ),
            GestureDetector(
              onTap: () {
                _pageIndex.value = 2;
              },
              child: ValueListenableBuilder<int>(
                builder: (context, idx, child) {
                  if (idx == 2) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.favorite_border, color: Colors.orangeAccent),
                        CircleAvatar(radius: 2, backgroundColor: Colors.orangeAccent)
                      ],
                    );
                  }
                  return Icon(Icons.favorite_border);
                },
                valueListenable: _pageIndex,
              ),
            ),
            GestureDetector(
              onTap: () {
                _pageIndex.value = 3;
              },
              child: ValueListenableBuilder<int>(
                builder: (context, idx, child) {
                  if (idx == 3) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.perm_identity, color: Colors.orangeAccent),
                        CircleAvatar(radius: 2, backgroundColor: Colors.orangeAccent)
                      ],
                    );
                  }
                  return Icon(Icons.perm_identity);
                },
                valueListenable: _pageIndex,
              ),
            )
          ],
        ),
      ),
    );
  }
}
