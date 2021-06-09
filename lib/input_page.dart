import 'package:bmi_calculator/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'gender_button.dart';
import 'reusable_card.dart';

const buttonHeight = 80.0;
const bigMargin = 25.0;
const smallMargin = 5.0;

const selectedCardColor = '#1d1f33';
const textColor = '#8d8e98';
const selectedTextColor = '#ffffff';
const buttonColor = '#eb1555';

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
              height: bigMargin,
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: bigMargin,
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
                    width: smallMargin,
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
                    width: bigMargin,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: bigMargin,
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: bigMargin,
                  ),
                  ReusableCard(),
                  SizedBox(
                    width: bigMargin,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: bigMargin,
            ),
            Expanded(
              child: Row(
                children: [
                  SizedBox(
                    width: bigMargin,
                  ),
                  ReusableCard(),
                  SizedBox(
                    width: smallMargin,
                  ),
                  ReusableCard(),
                  SizedBox(
                    width: bigMargin,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: bigMargin,
            ),
            Container(
              color: HexColor(buttonColor),
              margin: EdgeInsets.only(top: 10),
              height: buttonHeight,
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
