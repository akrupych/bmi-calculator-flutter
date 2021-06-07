import 'package:bmi_calculator/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const buttonHeight = 80.0;
const iconWidth = 50.0;
const bigMargin = 25.0;
const smallMargin = 5.0;

const cardColor = '#111428';
const selectedCardColor = '#1d1f33';
const textColor = '#8d8e98';
const selectedTextColor = '#ffffff';
const buttonColor = '#eb1555';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    isSelected: true,
                  ),
                  SizedBox(
                    width: smallMargin,
                  ),
                  GenderButton(
                    icon: FontAwesomeIcons.venus,
                    text: 'FEMALE',
                    isSelected: false,
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

class ReusableCard extends StatelessWidget {
  final Widget child;
  final Color color;

  ReusableCard({this.child, this.color});

  @override
  Widget build(BuildContext context) => Expanded(
        child: Container(
          child: child,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color ?? HexColor(cardColor),
          ),
        ),
      );
}

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
