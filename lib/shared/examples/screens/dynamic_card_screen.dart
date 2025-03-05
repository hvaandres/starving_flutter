import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart' show DynamicCard;

class DynamicCardScreen extends StatelessWidget {
  const DynamicCardScreen({super.key});

  List<DynamicCard> getDynamicCards() {
    return [
      DynamicCard(
        icon: Icons.notifications_active,
        title: 'Current schedule',
        subtitle: 'Daily reminder scheduled for 8:00 AM',
        status: 'Active',
        description: 'Last modified: 1 second ago',
      ),

      DynamicCard(
        icon: Icons.notifications_active,
        title: 'Current schedule',
        subtitle: 'Daily reminder scheduled for 8:00 AM',
        description: 'Last modified: 1 second ago',
      ),

      DynamicCard(
        title: 'Current schedule',
        subtitle: 'Daily reminder scheduled for 8:00 AM',
        status: 'Pending',
        description: 'Last modified: 1 second ago',
        statusColor: Colors.orange,
      ),
      
      DynamicCard(
        title: 'Current schedule',
        subtitle: 'Daily reminder scheduled for 8:00 AM',
        status: 'Warning',
        statusColor: Colors.red,
      ),

      DynamicCard(
        title: 'Current schedule',
        subtitle: 'Daily reminder scheduled for 8:00 AM',
      ),

      DynamicCard(
        subtitle: 'Daily reminder scheduled for 8:00 AM',
        description: 'Last modified: 1 second ago',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final list = getDynamicCards();
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Card examples')),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return list[index];
        },
      ),
    );
  }
}
