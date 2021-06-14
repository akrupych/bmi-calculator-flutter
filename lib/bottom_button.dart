import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onPress;

  BottomButton({this.text, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: kPink,
        margin: EdgeInsets.only(top: 10),
        height: kButtonHeight,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 3,
            ),
          ),
        ),
      ),
      onTap: onPress,
    );
  }
}
