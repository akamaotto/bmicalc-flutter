import 'package:flutter/material.dart';

class RoundActionButton extends StatelessWidget {
  const RoundActionButton(
      {Key? key, @required this.icon, @required this.onPressed})
      : super(key: key);
  final IconData? icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(width: 56, height: 56),
      elevation: 6.0,
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
    );
  }
}
