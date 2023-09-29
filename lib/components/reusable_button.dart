import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  String buttonText;
  final Function()? onPressed;

  ReusableButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 45,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade400,
        ),
        onPressed: onPressed,
        child: Text(buttonText),
      ),
    );
  }
}