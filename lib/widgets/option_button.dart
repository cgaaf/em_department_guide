import 'package:em_department_guide/constants.dart';
import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  OptionButton({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(title,
          style: TextStyle(
            fontSize: 15,
            color: kPrimaryColor,
          )),
      onPressed: onPressed,
      color: kSecondaryColor,
    );
  }
}
