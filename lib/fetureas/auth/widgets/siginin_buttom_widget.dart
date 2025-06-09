import 'package:flutter/material.dart';
import '../../widgets/helper.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {super.key,
      required this.buttomColor,
      required this.text,
      required this.textColor,
      required this.function,
      required this.fontSize});

  Color buttomColor;
  String text;
  Color textColor;
  double fontSize;
  VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      color: buttomColor,
      onPressed: function,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextWidget(
          text: text,
          color: textColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
