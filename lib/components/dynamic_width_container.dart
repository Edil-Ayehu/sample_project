import 'package:flutter/material.dart';

class DynamicWidthContainer extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color bgColor;
  final bool isItalic;

  const DynamicWidthContainer({
    super.key,
    required this.text,
    required this.textColor,
    required this.bgColor,
    required this.isItalic,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 22),
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: MediaQuery.of(context).size.width * 0.05,
              color: textColor,
              fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
            ),
      ),
    );
  }
}
