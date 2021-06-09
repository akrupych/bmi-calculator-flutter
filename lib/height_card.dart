import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:bmi_calculator/utils.dart';
import 'package:flutter/material.dart';

class HeightCard extends StatelessWidget {
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
                  "183",
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
            )
          ],
        ),
      );
}
