import 'package:flutter/material.dart';

import 'reusable_card.dart';
import 'utils.dart';

const cardColor = '#111428';
const selectedCardColor = '#1d1f33';
const textColor = '#8d8e98';
const selectedTextColor = '#ffffff';

const iconWidth = 50.0;
const iconSpacing = 10.0;
const fontSize = 18.0;

class GenderButton extends StatefulWidget {
  IconData icon;
  String text;
  bool isSelected;

  GenderButton({this.icon, this.text, this.isSelected = false});

  @override
  _GenderButtonState createState() => _GenderButtonState();
}

class _GenderButtonState extends State<GenderButton> {
  Color getForegroundColor() =>
      HexColor(widget.isSelected ? selectedTextColor : textColor);

  Color getBackgroundColor() =>
      HexColor(widget.isSelected ? selectedCardColor : cardColor);

  @override
  Widget build(BuildContext context) => Expanded(
        child: GestureDetector(
          onTap: () {
            setState(() {
              widget.isSelected = !widget.isSelected;
            });
          },
          child: ReusableCard(
            color: getBackgroundColor(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  widget.icon,
                  color: getForegroundColor(),
                  size: iconWidth,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: iconSpacing),
                  child: Text(
                    widget.text,
                    style: TextStyle(
                      fontSize: fontSize,
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
