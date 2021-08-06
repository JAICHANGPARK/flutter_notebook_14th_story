import 'package:flutter/material.dart';
import 'package:flutter_notebook_14th_story/ep871_salon_app/model/category.dart';

class SalonBookingWidget extends StatefulWidget {
  const SalonBookingWidget({Key? key}) : super(key: key);

  @override
  State<SalonBookingWidget> createState() => _SalonBookingWidgetState();
}

class _SalonBookingWidgetState extends State<SalonBookingWidget> {
  var _index = 0;
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  const Expanded(
                      child: Center(
                          child: Text(
                    "My Bookings",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ))),
                  const Divider(),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                _index = index;
                                _pageController.jumpToPage(_index);
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: _index == index ? Colors.black :Colors.grey[200],
                                borderRadius: BorderRadius.circular(24)
                              ),
                              child: Center(
                                child: Text(categoryItems[index].title ?? "",
                                style: TextStyle(
                                  color: _index == index ? Colors.white :Colors.grey[500],
                                ),),
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: categoryItems.length,
                    ),
                  ),
                ],
              ),
            )),
        SizedBox(height: 8),
        Expanded(flex: 15, child: PageView(
          physics: NeverScrollableScrollPhysics(),
          children: [

            Container(
              child: Text("Pending"),
            ),
            Container(
              child: Text("Accepted"),
            ),
            Container(
              child: Text("Completed"),
            ),
            Container(
              child: Text("Pending"),
            )

          ],
          controller: _pageController,
        )),
      ],
    );
  }
}








