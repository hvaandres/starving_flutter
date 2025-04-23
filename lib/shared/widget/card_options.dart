import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/shared/models/models.dart';

class CardOptions extends StatelessWidget {
  final String title;
  final IconData iconTitle;
  final Color backgroundColor;
  final Color titleColor;
  final Color iconTitleColor;
  final List<ItemOption> items;
  final Color itemColor;
  final Color forwardColor;

  const CardOptions({
    super.key,
    required this.title,
    required this.iconTitle,
    required this.backgroundColor,
    required this.titleColor,
    required this.iconTitleColor,
    required this.items,
    required this.itemColor,
    required this.forwardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Card(
        color: backgroundColor,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(iconTitle, color: iconTitleColor),
                  const SizedBox(width: 8),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      color: titleColor,
                    )
                  ),
                ],
              ),

              Column(
                children: [
                  for (var itemOption in items)
                    _CardOption(
                      itemOption: itemOption,
                      itemColor: itemColor,
                      forwardColor: forwardColor,
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CardOption extends StatelessWidget {
  final ItemOption itemOption;
  final Color itemColor;
  final Color forwardColor;

  const _CardOption({
    required this.itemOption,
    required this.itemColor,
    required this.forwardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: itemOption.iconColor.withAlpha(40),
            radius: 20,
            child:
             ImageIcon(
              AssetImage(
                itemOption.imageResource,
              ),
              color: itemOption.iconColor,
             )
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              itemOption.name,
              style: TextStyle(
                fontSize: 18.0,
                color: itemColor
              )
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: forwardColor,
          ),
        ],
      ),
    );
  }
}
