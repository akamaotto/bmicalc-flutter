import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  const ReUsableCard(
      {Key? key, @required this.cardColor, this.cardChild, this.onPress})
      : super(key: key);

  final Color? cardColor;
  final Widget? cardChild;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: cardColor,
        ),
      ),
    );
  }
}
