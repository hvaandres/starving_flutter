// create screen
import 'package:flutter/material.dart';

import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart';

class NotificationCardScreen extends StatefulWidget {
  const NotificationCardScreen({super.key});

  @override
  State<NotificationCardScreen> createState() => _NotificationCardScreenState();
}

class _NotificationCardScreenState extends State<NotificationCardScreen> {
  int _selectedItemIndex = 3;
  // use options to create a map with a IconData for each option
  final Map<String, IconData> optionIcons = {
    '8:00 a.m.': Icons.notifications,
    '12:00 p.m.': Icons.notifications,
    '6:00 a.m.': Icons.notifications,
    'Custom': Icons.watch_later,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notification Card Examples')),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            CustomIconTextListCard(
              optionIcons: optionIcons,
              cardWidth: 120.0,
              cardHeight: 100.0,
              activeColor: Colors.blue,
              inactiveColor: Colors.white,
              textColor: Colors.white,
              backgroundColor: Colors.grey[900]!,
              iconColor: Colors.black,
              itemSelected: _selectedItemIndex,
              onItemSelected: (index) {
                setState(() {
                  _selectedItemIndex = index;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
