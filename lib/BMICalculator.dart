import 'dart:math';

class BMICalculator {
  static double getBMI(int height, int weight) => weight / pow(height / 100, 2);

  static BMIResult getResult(int height, int weight) {
    final bmi = getBMI(height, weight);
    if (bmi >= 25) return BMIResult.OVERWEIGHT;
    if (bmi >= 18.5) return BMIResult.NORMAL;
    return BMIResult.UNDERWEIGHT;
  }
}

enum BMIResult {
  OVERWEIGHT,
  NORMAL,
  UNDERWEIGHT,
}
