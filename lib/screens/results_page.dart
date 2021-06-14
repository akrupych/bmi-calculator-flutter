import 'package:bmi_calculator/bmi_calculator.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  double _bmi;
  String _resultTitle;
  String _resultDescription;

  ResultsPage({int height, int weight}) {
    _bmi = BMICalculator.getBMI(height, weight);
    switch (BMICalculator.getResult(height, weight)) {
      case BMIResult.OVERWEIGHT:
        _resultTitle = "OVERWEIGHT";
        _resultDescription =
            "You have a higher than normal body weight. Try to exercise more.";
        break;
      case BMIResult.NORMAL:
        _resultTitle = "NORMAL";
        _resultDescription = "You have a normal body weight. Good job!";
        break;
      case BMIResult.UNDERWEIGHT:
        _resultTitle = "UNDERWEIGHT";
        _resultDescription =
            "You have a lower than normal body weight. You can eat a bit more.";
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(kBigMargin),
            child: Text(
              "Your Result",
              style: kTextStyleLarge,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                  kBigMargin, 0, kBigMargin, kBigMargin),
              child: ReusableCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      _resultTitle,
                      style: kTextStyleSmall.copyWith(
                        color: Color(0xff23b067),
                      ),
                    ),
                    Text(
                      _bmi.toStringAsFixed(1),
                      style: kTextStyleLarge.copyWith(
                        fontSize: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(kBigMargin),
                      child: Text(
                        _resultDescription,
                        style: kTextStyleSmall,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            text: "RE-CALCULATE YOUR BMI",
            onPress: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
