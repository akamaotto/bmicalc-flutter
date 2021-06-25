import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height = 0, this.weight = 0});

  final int height;
  final int weight;
  final double _bmi = 0;

  String? calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String? getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi < 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String? getInterpretation() {
    if (_bmi >= 25) {
      return 'You need to do some exercises and take other actions that\'ll help you cut weight.';
    } else if (_bmi < 18.5) {
      return 'You\'re in pretty good shape. Keep up.';
    } else {
      return 'Is anything the matter? Are you always hungry? You seriously need some food.';
    }
  }
}
