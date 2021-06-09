import 'package:bmi_calculator/height_card.dart';
import 'package:bmi_calculator/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'gender_button.dart';
import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

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
                    isSelected: selectedGender == Gender.male,
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                  SizedBox(
                    width: kSmallMargin,
                  ),
                  GenderButton(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
                    isSelected: selectedGender == Gender.female,
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
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
                  HeightCard(),
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
                  ReusableCard(),
                  SizedBox(
                    width: kSmallMargin,
                  ),
                  ReusableCard(),
                  SizedBox(
                    width: kBigMargin,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: kBigMargin,
            ),
            Container(
              color: HexColor(kButtonColor),
              margin: EdgeInsets.only(top: 10),
              height: kButtonHeight,
              child: Center(
                  child: Text(
                "CALCULATE YOUR BMI",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                ),
              )),
            )
          ],
        ),
      );
}

enum Gender {
  male,
  female,
}
