import 'package:flutter/material.dart';

class ItemOption {
  final String name;
  final Color iconColor;
  final String imageResource;
  final VoidCallback? onPressed;

  ItemOption({
    required this.name,
    required this.iconColor,
    required this.imageResource,
    this.onPressed,
  });
}
