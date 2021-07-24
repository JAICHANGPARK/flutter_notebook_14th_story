import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_notebook_14th_story/ep856_hiking_app/ui/hiking_home_app.dart';

class HikingDetailPage extends StatelessWidget {
  const HikingDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        body: Column(
          children: [
            Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Yagidna mountain",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite),
                              color: hikingGreenColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                      child: Text(
                    "${lorem(paragraphs: 2, words: 240)}",
                    style: TextStyle(fontSize: 13, color: Colors.grey),
                  )),
                )),
            Expanded(
                flex: 5,
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Expanded(child: Row(
                              children: [
                                Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Easy", style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                        fontSize: 16
                                    ),),
                                    SizedBox(height: 4,),
                                    Text("difficulty", style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey
                                    ),),
                                  ],
                                )),
                                Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("1216 m", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                    ),),
                                    SizedBox(height: 4,),
                                    Text("highest point", style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey
                                    ),),
                                  ],
                                )),
                              ],
                            )),
                            Expanded(child: Row(
                              children: [
                                Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("15 km", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16
                                    ),),
                                    SizedBox(height: 4,),
                                    Text("distance", style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey
                                    ),),
                                  ],
                                )),
                                Expanded(child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("7 hours", style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      fontSize: 16
                                    ),),
                                    SizedBox(height: 4,),
                                    Text("time", style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey
                                    ),),
                                  ],
                                )),
                              ],
                            )),
                          ],
                        ),
                      ),
                      flex: 6,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey[300]!,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Stack(),
                      ),
                      flex: 5,
                    ),
                  ],
                )),
          ],
        ),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              pinned: true,
              title: Text("Yagidna mountain"),
              expandedHeight: MediaQuery.of(context).size.height / 2.5,
              flexibleSpace: Stack(
                children: [
                  Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      top: 0,
                      child: Image.network(
                        "https://cdn.pixabay.com/photo/2018/04/03/20/29/forest-3287976_960_720.jpg",
                        fit: BoxFit.cover,
                      )),
                  Positioned(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)),
                      child: Icon(
                        Icons.more_vert,
                      ),
                    ),
                    right: 16,
                    top: 76,
                  ),
                ],
              ),
            ),
          ];
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(color: Colors.grey[300]!, borderRadius: BorderRadius.circular(4)),
                      child: Center(
                          child: Text(
                        "Preview",
                      )),
                    )),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                    flex: 9,
                    child: Container(
                      decoration: BoxDecoration(color: hikingGreenColor, borderRadius: BorderRadius.circular(4)),
                      child: Center(
                          child: Text(
                        "Start trail",
                        style: TextStyle(color: Colors.white),
                      )),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
