import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';

import '../components/calculate_button.dart';
import '../constants/constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation,
      super.key});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text(
              "Your Result",
              style: kTitleTextStyle,
            ),
          )),
          Expanded(
              flex: 5,
              child: Container(
                child: ReusableCard(
                  colour: kInactiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(resultText, style: kResultTextStyle),
                      SizedBox(
                        height: 50,
                      ),
                      Text(bmiResult, style: kBMITextStyle),
                      SizedBox(
                        height: 50,
                      ),
                      Text(interpretation,
                          textAlign: TextAlign.center, style: kBodyTextStyle),
                      SizedBox(
                        height: 60,
                      ),
                      CalculateButton(
                        onPress: () {
                          Navigator.pop(context);
                        },
                        label: "RE-CALCULATE",
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
