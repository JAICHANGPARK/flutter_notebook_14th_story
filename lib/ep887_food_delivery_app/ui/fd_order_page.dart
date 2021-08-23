import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class FdOrderPage extends StatefulWidget {
  const FdOrderPage({Key? key}) : super(key: key);

  @override
  _FdOrderPageState createState() => _FdOrderPageState();
}

class _FdOrderPageState extends State<FdOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red[400],
                    child: Icon(Icons.location_on_outlined),
                    foregroundColor: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Text("Home"),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                        Text("South Korea, Seoul"),
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  CircleAvatar(),
                ],
              ),
            )),
        Expanded(
            flex: 15,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.red[600]!,
                            Colors.red[400]!,
                            Colors.red[200]!,
                          ]
                        )
                      ),
                      child: Swiper(
                        outer: false,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                              decoration:
                                  BoxDecoration(color: Colors.red[200], borderRadius: BorderRadius.circular(24)),
                              child: Stack(
                                children: [
                                  Positioned(
                                    child: Image.asset("assets/fd_main_img_01.png"),
                                    right: 8,
                                    bottom: 0,
                                  )
                                ],
                              ));
                        },
                        pagination: const SwiperPagination(
                            builder: DotSwiperPaginationBuilder(
                          activeColor: Colors.grey,
                          color: Colors.white,
                        )),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    child: Text(
                      "Eat what makes you happy",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                    child: SizedBox(
                      height: 84,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  radius: 32,
                                  backgroundColor: Colors.red[100]!,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Healthy",
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          );
                        },
                        itemCount: 8,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Row(
                      children: const [
                        Text(
                          "127 restaurants around you",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(
                          Icons.import_export_outlined,
                          size: 18,
                        ),
                        Text(
                          "Popular",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
