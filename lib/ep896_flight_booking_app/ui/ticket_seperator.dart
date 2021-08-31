import 'package:flutter/material.dart';

class TicketSeparator extends StatelessWidget {
  final double height;
  final Color color;

  const TicketSeparator({Key? key, this.height = 1, this.color = Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final boxWidth = constraints.constrainWidth();
      final dashWidth = 4.0;
      final dashHeight = height;
      final dashCount = (boxWidth / (2 * dashWidth)).floor();
      return Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            dashCount,
            (index) => SizedBox(
                  height: dashHeight,
                  width: dashWidth,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: color),
                  ),
                )),
      );
    });
  }
}
