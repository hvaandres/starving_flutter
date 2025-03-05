import 'package:flutter/material.dart';

class DynamicCard extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final String? subtitle;
  final String? status;
  final String? description;
  final Color? iconColor;
  final Color? titleColor;
  final Color? subtitleColor;
  final Color? statusColor;
  final Color? statusTextColor;
  final Color? descriptionColor;
  final Color? cardColor;

  const DynamicCard({
    super.key,
    this.icon,
    this.title,
    this.subtitle,
    this.status,
    this.description,
    this.iconColor,
    this.titleColor,
    this.subtitleColor,
    this.statusColor,
    this.statusTextColor,
    this.descriptionColor,
    this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      child: Card(
        elevation: 0,
        color: cardColor ?? Colors.grey[180],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Row(
                children: [
                  if (icon != null)
                    Icon(
                      icon ?? Icons.notifications_active,
                      color: iconColor ?? Colors.black,
                    ),

                  if (title != null)
                    Expanded(
                      child: Padding(
                        padding:
                            icon != null
                                ? const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 6.0,
                                )
                                : EdgeInsets.symmetric(
                                  horizontal: 0.0,
                                  vertical: 6.0,
                                ),
                        child: Text(
                          title!,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: titleColor ?? Colors.black,
                          ),
                        ),
                      ),
                    ),

                  if (status != null)
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: statusColor ?? Colors.black,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6.0,
                          vertical: 2.0,
                        ),
                        child: Text(
                          status!,
                          style: TextStyle(
                            color: statusTextColor ?? Colors.white,
                          ),
                        ),
                      ),
                    ),
                ],
              ),

              if (subtitle != null)
                Text(
                  subtitle!,
                  style: TextStyle(
                    color: subtitleColor ?? Colors.black,
                    fontSize: 16,
                  ),
                ),

              if (description != null)
                Text(
                  description!,
                  style: TextStyle(
                    color: descriptionColor ?? Colors.grey,
                    fontSize: 14,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
