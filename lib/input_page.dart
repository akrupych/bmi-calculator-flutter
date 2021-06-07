import 'package:bmi_calculator/utils.dart';
import 'package:flutter/material.dart';

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
                    color: HexColor('#1d1f33'),
                  ),
                  ReusableCard(
                    color: HexColor('#1d1f33'),
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
          ],
        ),
      );
}

class ReusableCard extends StatelessWidget {
  Color color;

  ReusableCard({this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color ?? HexColor('#111428'),
        ),
      ),
    );
  }
}
