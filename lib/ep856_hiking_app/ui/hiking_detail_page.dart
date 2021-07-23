import 'package:flutter/material.dart';

class HikingDetailPage extends StatelessWidget {
  const HikingDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        body: Column(
          children: [],
        ),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height / 2.5,
              flexibleSpace: Stack(
                children: [
                  Positioned(
                      child: Image.network(
                    "https://cdn.pixabay.com/photo/2018/04/03/20/29/forest-3287976_960_720.jpg",
                    fit: BoxFit.cover,
                  ))
                ],
              ),
            ),
          ];
        },
      ),
    );
  }
}
