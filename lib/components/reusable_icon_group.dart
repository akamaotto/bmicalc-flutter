import 'package:flutter/material.dart';
import '../constants.dart';

class ReusableIconGroup extends StatelessWidget {
  const ReusableIconGroup({
    Key? key,
    this.genderIcon,
    this.gender = "",
  }) : super(key: key);

  final IconData? genderIcon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: labelTextStyle,
        )
      ],
    );
  }
}
