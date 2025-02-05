import 'package:flutter/material.dart';
import 'package:reactive_button/reactive_button.dart';

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onSuccess;
  final Future<dynamic> Function() onTap;
  final Function(String)? onFailure;
  final Color activeColor;

  const CustomButtonWidget(
      {super.key,
      required this.title,
    required  this.onTap,
        required  this.onSuccess,
      this.onFailure, required this.activeColor});

  @override
  Widget build(BuildContext context) {
    return ReactiveButton(
      activeColor: activeColor,
        title: title,
        onPressed: onTap, onSuccess: onSuccess, onFailure: (error) {});
  }
}
