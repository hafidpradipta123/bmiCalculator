import 'package:flutter/material.dart';

import '../constants/constants.dart';


class CalculateButton extends StatelessWidget {
  const CalculateButton({
    required this.onPress,
    required this. label,
    super.key,
  });
  final Function()? onPress;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kBottomContainerColour,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(bottom: 20) ,
        width: double.infinity,
        height: kBottomContainerHeight,
        child:  Center(
            child: Text(
             label,
              style: kLargeButtonTextStyle,
            )),
      ),
    );
  }
}
