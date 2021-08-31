import 'package:flutter/material.dart';

class TicketSeparator extends StatelessWidget {
  final double height;
  final Color color;

  const TicketSeparator({Key? key, this.height = 1, this.color = Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final boxWidth = constraints.constrainWidth();
      final dashWidth = 10.0;
      final dashHeight = height;
      return Flex(
        direction: Axis.horizontal,
        children: List.generate(
            8,
            (index) => SizedBox(
                  height: dashHeight,
                  width: dashWidth,
                )),
      );
    });
  }
}
