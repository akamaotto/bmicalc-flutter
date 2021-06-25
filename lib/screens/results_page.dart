import '../constants.dart';
import '../components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {Key? key,
      @required this.bmiResults,
      @required this.bmiResultText,
      @required this.bmiInterpretation})
      : super(key: key);

  final String? bmiResults;
  final String? bmiResultText;
  final String? bmiInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Results'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                "Your Results",
                style: kHeadingTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReUsableCard(
              cardColor: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiResultText!.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResults!,
                    style: kBMITextStyle,
                  ),
                  Text(bmiInterpretation!,
                      style: kBodyTextStyle, textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: "RE-CALCULATE",
          ),
        ],
      ),
    );
  }
}
