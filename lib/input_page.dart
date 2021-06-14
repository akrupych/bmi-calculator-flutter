import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottom_button.dart';
import 'constants.dart';
import 'gender_button.dart';
import 'results_page.dart';
import 'reusable_card.dart';
import 'round_icon_button.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;
  int height = kDefaultHeight;
  int weight = 70;
  int age = 20;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: kBigMargin,
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: kBigMargin,
                  ),
                  GenderButton(
                    icon: FontAwesomeIcons.mars,
                    text: 'MALE',
                    isSelected: gender == Gender.male,
                    onPressed: () {
                      setState(() {
                        gender = Gender.male;
                      });
                    },
                  ),
                  SizedBox(
                    width: kSmallMargin,
                  ),
                  GenderButton(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
                    isSelected: gender == Gender.female,
                    onPressed: () {
                      setState(() {
                        gender = Gender.female;
                      });
                    },
                  ),
                  SizedBox(
                    width: kBigMargin,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: kBigMargin,
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: kBigMargin,
                  ),
                  ReusableCard(
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
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 25),
                            trackHeight: 1,
                          ),
                          child: Slider(
                            value: height.toDouble(),
                            min: kMinHeight,
                            max: kMaxHeight,
                            onChanged: (value) {
                              setState(() {
                                height = value.round();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: kBigMargin,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: kBigMargin,
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: kBigMargin,
                  ),
                  ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: kTextStyleSmall,
                        ),
                        Text(
                          weight.toString(),
                          style: kTextStyleLarge,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: kSmallMargin,
                  ),
                  ReusableCard(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: kTextStyleSmall,
                        ),
                        Text(
                          age.toString(),
                          style: kTextStyleLarge,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: Icons.remove,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: Icons.add,
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: kBigMargin,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: kBigMargin,
            ),
            BottomButton(
              text: "CALCULATE YOUR BMI",
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      height: height,
                      weight: weight,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      );
}

enum Gender {
  male,
  female,
}
