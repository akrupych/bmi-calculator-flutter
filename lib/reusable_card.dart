import 'package:flutter/material.dart';

import 'utils.dart';

const cardColor = '#111428';

class ReusableCard extends StatelessWidget {
  Widget child;
  Color color;

  ReusableCard({this.child, this.color}) {
    if (color == null) color = HexColor(cardColor);
  }

  @override
  Widget build(BuildContext context) => Expanded(
        child: Container(
          child: child,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
        ),
      );
}
