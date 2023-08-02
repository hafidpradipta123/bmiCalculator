import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class ReusableIcon extends StatelessWidget {
  const ReusableIcon({
    super.key,
    required this.label,
    required this.genderIcon
  });

  final String label;
  final IconData genderIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          genderIcon,
          size: 80,
          color: Colors.white,
        ),
        const SizedBox( height: 15,),
        Text(label, style: kLabelTextStyle)

      ],
    );
  }
}
