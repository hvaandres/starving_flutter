import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/shared/models/models.dart';

class CardOptions extends StatelessWidget {
  final String title;
  final IconData iconTitle;
  final List<ItemOption> items;

  const CardOptions({
    super.key,
    required this.title,
    required this.iconTitle,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Card(
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(iconTitle),
                  SizedBox(width: 8),
                  Text(title, style: TextStyle(fontSize: 14)),
                ],
              ),

              Column(
                children: [
                  for (var itemOption in items)
                    _CardOption(itemOption: itemOption),
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
  const _CardOption({required this.itemOption});

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
          SizedBox(width: 8),
          Expanded(
            child: Text(itemOption.name, style: TextStyle(fontSize: 18.0)),
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
