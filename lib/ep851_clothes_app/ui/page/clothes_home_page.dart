import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep851_clothes_app/controller/page_controller.dart';
import 'package:flutter_notebook_14th_story/ep851_clothes_app/ui/widgets/clothes_home_bottom_nav_bar.dart';
import 'package:get/get.dart';

import 'clothes_detail_page.dart';

class ClothesHomePage extends StatelessWidget {
  final ValueNotifier<int> _pageIndex = ValueNotifier<int>(0);

  ClothesHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = Get.put(ClothPageController());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Howdy, What Are You\nLooking For?👀",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Icon(Icons.shopping_cart_outlined),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 52,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 12,
                          child: Container(
                            height: double.infinity,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.white),
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(Icons.search),
                                hintText: "Search Aesthethic Shirt",
                                hintStyle: TextStyle(
                                  color: Colors.grey[300],
                                ),
                              ),
                            ),
                          )),
                      SizedBox(width: 8),
                      Expanded(
                          flex: 2,
                          child: Container(
                            child: Center(
                              child: Icon(
                                Icons.tune_outlined,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 32,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(color: Colors.orange[50], borderRadius: BorderRadius.circular(4)),
                      child: Text(
                        "Woman",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        decoration: BoxDecoration(color: Colors.orange[50], borderRadius: BorderRadius.circular(4)),
                        child: Text(
                          "T-Shirt",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      decoration: BoxDecoration(color: Colors.orange[50], borderRadius: BorderRadius.circular(4)),
                      child: Text(
                        "Dress",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 8),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 2.5,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, top: 8),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Row(
                        children: [
                          Text(
                            "New Arrival",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "View All",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.orangeAccent,
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.white,
                                size: 12,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 16, top: 12, bottom: 8),
                              child: GestureDetector(
                                onTap: (){
                                  Get.to(ClothesDetailPage());
                                },
                                child: Container(
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width / 1.8,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  padding: EdgeInsets.all(8),
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(8),
                                              image: DecorationImage(
                                                image: NetworkImage(
                                                    "https://cdn.pixabay.com/photo/2015/06/04/20/36/girl-797837_960_720.jpg"),
                                                fit: BoxFit.cover,
                                              )),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                child: CircleAvatar(
                                                  radius: 12,
                                                  backgroundColor: Colors.white,
                                                  child: Icon(
                                                    Icons.favorite,
                                                    size: 16,
                                                  ),
                                                  foregroundColor: Colors.red,
                                                ),
                                                right: 8,
                                                top: 8,
                                              )
                                            ],
                                          ),
                                        ),
                                        flex: 5,
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text("9ucci oversize"),
                                            Text("Hoodie"),
                                            Text(
                                              "\$79.99",
                                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orangeAccent),
                                            )
                                          ],
                                        ),
                                        flex: 3,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height / 5.1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Row(
                      children: [
                        Text(
                          "Best Of Sell",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "View All",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.orangeAccent,
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.white,
                              size: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Placeholder(),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
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
      ),
    );
  }
}
