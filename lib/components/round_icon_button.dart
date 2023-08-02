import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    required this.onPress,
    required this.icon,
    super.key,
  });

  final Function()? onPress;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
        elevation: 6,
        constraints: const BoxConstraints.tightFor(width: 56, height: 56),
        shape: const CircleBorder(),
        fillColor: const Color(0xFF4C4f5E),
        onPressed: onPress);
  }
}
