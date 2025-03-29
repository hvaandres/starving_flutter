import 'package:flutter/material.dart';

class SolidButton extends StatelessWidget {

  final String labelButton;
  final Color? colorButton;
  final Color? textColor;
  final GestureTapCallback? onTap;

  const SolidButton({
    super.key,
    required this.labelButton,
    this.colorButton,
    this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 0,
          color: colorButton,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  labelButton,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
