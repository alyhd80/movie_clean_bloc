import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hint;
  final TextEditingController? textEditingController;
  const TextFieldWidget({super.key, required this.hint, this.textEditingController});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hint
      ),
    );
  }
}
