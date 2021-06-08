import 'package:flutter/material.dart';

import 'input_page.dart';
import 'reusable_card.dart';
import 'utils.dart';

class GenderButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isSelected;

  GenderButton({this.icon, this.text, this.isSelected});

  Color getForegroundColor() =>
      HexColor(isSelected ? selectedTextColor : textColor);

  @override
  Widget build(BuildContext context) => ReusableCard(
        color: HexColor(selectedCardColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: getForegroundColor(),
              size: iconWidth,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 18,
                  color: getForegroundColor(),
                ),
              ),
            )
          ],
        ),
      );
}
