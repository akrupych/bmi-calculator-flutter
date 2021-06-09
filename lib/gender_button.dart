import 'package:flutter/material.dart';

import 'constants.dart';
import 'reusable_card.dart';
import 'utils.dart';

class GenderButton extends StatefulWidget {
  IconData icon;
  String text;
  bool isSelected;
  Function() onPressed;

  GenderButton({this.icon, this.text, this.isSelected = false, this.onPressed});

  @override
  _GenderButtonState createState() => _GenderButtonState();
}

class _GenderButtonState extends State<GenderButton> {
  Color getForegroundColor() =>
      HexColor(widget.isSelected ? kSelectedColor : kInactiveColor);

  Color getBackgroundColor() =>
      HexColor(widget.isSelected ? kSelectedCardColor : kCardColor);

  @override
  Widget build(BuildContext context) => Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              widget.isSelected = !widget.isSelected;
            });
            widget.onPressed();
          },
          child: ReusableCard(
            color: getBackgroundColor(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  widget.icon,
                  color: getForegroundColor(),
                  size: kIconWidth,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: kIconSpacing),
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      fontSize: kFontSizeSmall,
                      color: getForegroundColor(),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
