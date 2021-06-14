import 'package:bmi_calculator/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
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
                      "NORMAL",
                      style: kTextStyleSmall.copyWith(
                        color: Color(0xff23b067),
                      ),
                    ),
                    Text(
                      "22.1",
                      style: kTextStyleLarge.copyWith(
                        fontSize: 100,
                      ),
                    ),
                    Text(
                      "Description",
                      style: kTextStyleSmall,
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
