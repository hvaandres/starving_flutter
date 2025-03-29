import 'package:flutter/material.dart';

class ParagraphCard extends StatelessWidget {
  final String? title;
  final String? description;
  final Color? backgroundColor;
  final Color? paragraphColor;

  final double verticalPadding;
  final double horizontalPadding;

  const ParagraphCard({
    super.key,
    this.title,
    this.description,
    this.backgroundColor,
    this.paragraphColor,
    this.verticalPadding = 8,
    this.horizontalPadding = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor ?? Colors.white,
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding,
          horizontal: horizontalPadding
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title ?? 'Daily Reminders',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: paragraphColor ?? Colors.black,
                ),
              ),
            ),
            Text(
              description ?? '',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
