import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/utils.dart';
import 'package:flutter/material.dart';

class HeightCard extends StatefulWidget {
  @override
  _HeightCardState createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
  double height = kDefaultHeight;
  @override
  Widget build(BuildContext context) => ReusableCard(
        color: HexColor(kCardColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "HEIGHT",
              style: kTextStyleSmall,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                Text(
                  height.toInt().toString(),
                  style: kTextStyleLarge,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "cm",
                  style: kTextStyleSmall,
                ),
              ],
            ),
            Slider(
              value: height.toDouble(),
              min: kMinHeight,
              max: kMaxHeight,
              activeColor: HexColor(kActiveColor),
              inactiveColor: HexColor(kInactiveColor),
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              },
            )
          ],
        ),
      );
}
