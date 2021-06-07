import 'package:bmi_calculator/utils.dart';
import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: HexColor('#0a0d22'),
        scaffoldBackgroundColor: HexColor('#07091A'),
      ),
    );
  }
}
