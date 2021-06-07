import 'package:bmi_calculator/utils.dart';
import 'package:flutter/material.dart';

const buttonHeight = 80.0;

const cardColor = '#111428';
const selectedCardColor = '#1d1f33';
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
          children: [
            Expanded(
              child: Row(
                children: [
                  ReusableCard(
                    color: HexColor(selectedCardColor),
                  ),
                  ReusableCard(
                    color: HexColor(selectedCardColor),
                  ),
                ],
              ),
            ),
            ReusableCard(),
            Expanded(
              child: Row(
                children: [
                  ReusableCard(),
                  ReusableCard(),
                ],
              ),
            ),
            Container(
              color: HexColor(buttonColor),
              margin: EdgeInsets.only(top: 10),
              height: buttonHeight,
            )
          ],
        ),
      );
}

class ReusableCard extends StatelessWidget {
  final Color color;

  ReusableCard({this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? HexColor(cardColor),
        ),
      ),
    );
  }
}
