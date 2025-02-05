import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomTextRichWidget extends StatelessWidget {
  final String title, detail;
  final GestureRecognizer? onTap;

  const CustomTextRichWidget(
      {super.key, required this.title, required this.detail, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: title, children: [
      TextSpan(text: detail, recognizer: onTap,style: TextStyle(
        color: Colors.blue
      )),
    ]));
  }
}
