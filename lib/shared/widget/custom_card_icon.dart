import 'package:flutter/material.dart';

class CustomCardIcon extends StatelessWidget {
  final String label;
  final double left;
  final double top;
  final double right;
  final double bottom;
  final double marginAll;
  final double marginVertical;
  final double marginHorizontal;

  final IconData? iconData;
  final Color? cardBackgroundColor;
  final Color? textColor;
  final Color? circleAvatarColor;
  final Color? iconColor;
  final VoidCallback? onPressed;

  const CustomCardIcon({
    super.key,
    required this.label,
    this.iconData,
    this.cardBackgroundColor,
    this.textColor,
    this.circleAvatarColor,
    this.iconColor,
    this.onPressed,
    this.left = 16,
    this.top = 8,
    this.right = 16,
    this.bottom = 8,
    this.marginAll = 0,
    this.marginVertical = 0,
    this.marginHorizontal = 0,
  });

  get marginAllValue => EdgeInsets.all(marginAll);

  get marginSymmetricValue => EdgeInsets.symmetric(
    vertical: marginVertical,
    horizontal: marginHorizontal,
  );

  get marginOnlyValue =>
      EdgeInsets.only(left: left, top: top, right: right, bottom: bottom);

  EdgeInsets getMargin() {
    if (marginAll != 0) {
      return marginAllValue;
    } else if (marginVertical != 0 || marginHorizontal != 0) {
      return marginSymmetricValue;
    } else {
      return marginOnlyValue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getMargin(),
      child: Card(
        color: cardBackgroundColor ?? Colors.grey[180],
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: textColor,
                  ),
                ),
              ),

              if (iconData != null)
                GestureDetector(
                  onTap: onPressed,
                  child: CircleAvatar(
                    backgroundColor: circleAvatarColor,
                    radius: 18,
                    child: Icon(iconData, color: iconColor ?? Colors.white),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
