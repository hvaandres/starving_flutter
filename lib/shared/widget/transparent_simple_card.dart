import 'package:flutter/material.dart';

class TransparentSimpleCard extends StatelessWidget {
  final String? title;
  final String? description;

  const TransparentSimpleCard({super.key, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title ?? 'Daily Reminders',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              description ??
                  'Set up gentle daily reminders to make sure you don\'t forget to purchase any of your groceries.',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
