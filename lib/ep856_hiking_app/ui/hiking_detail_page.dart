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
                        Text("Yagidna mountain", style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),),
                        IconButton(onPressed: (){}, icon: Icon(Icons.favorite),
                        color: hikingGreenColor,),
                      ],
                    ),

                  ],
                ),
              ),
            )),
            Expanded(
                flex: 5,
                child:   Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${lorem(paragraphs: 1, words: 48)}"),
            )),
            Expanded(
                flex: 5,
                child: Placeholder()),
          ],
        ),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              pinned: true,
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
                  Positioned(child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4)
                    ),
                    child: Icon(Icons.more_vert,),
                  ), right: 16,
                  top: 76,),
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
