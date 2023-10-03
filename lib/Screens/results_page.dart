import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/Components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../Components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmiText,
      required this.resultText,
      required this.interpretation});
  final String bmiText;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'YOUR RESULTS',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiText,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onPress: () {
              Navigator.pop(context);
            },
            title: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
