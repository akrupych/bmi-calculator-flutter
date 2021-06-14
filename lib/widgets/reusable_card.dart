import 'package:flutter/material.dart';

import '../constants.dart';

class ReusableCard extends StatelessWidget {
  Widget child;
  Color color;

  ReusableCard({this.child, this.color}) {
    if (color == null) color = kCardColor;
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
