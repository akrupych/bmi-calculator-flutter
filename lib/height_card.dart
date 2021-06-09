import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class HeightCard extends StatefulWidget {
  @override
  _HeightCardState createState() => _HeightCardState();
}

class _HeightCardState extends State<HeightCard> {
  double height = kDefaultHeight;
  @override
  Widget build(BuildContext context) => ReusableCard(
        color: kCardColor,
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
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: kGrey,
                activeTrackColor: kWhite,
                thumbColor: kPink,
                overlayColor: kPinkOpacity16,
                thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                overlayShape: RoundSliderOverlayShape(overlayRadius: 25),
                trackHeight: 1,
              ),
              child: Slider(
                value: height.toDouble(),
                min: kMinHeight,
                max: kMaxHeight,
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
              ),
            )
          ],
        ),
      );
}
