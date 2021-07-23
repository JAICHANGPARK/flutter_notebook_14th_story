import 'package:flutter/material.dart';

class HikingDetailPage extends StatelessWidget {
  const HikingDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        body: Column(
          children: [

          ],
        ),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            const SliverAppBar(

            )
          ];
        },

      ),
    );
  }
}
