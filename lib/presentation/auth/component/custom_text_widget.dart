import 'package:flutter/material.dart';


class CustomTextWidget extends StatelessWidget {
  final String title;
  const CustomTextWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),);
  }
}
