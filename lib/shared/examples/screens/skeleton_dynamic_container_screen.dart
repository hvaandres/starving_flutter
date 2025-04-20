import 'package:flutter/material.dart';

import 'package:starving_shopping_flutter_app/shared/widget/widgets.dart'
    show DynamicCard, ParagraphCard, SkeletonDynamicContainer, SolidButton;

class SkeletonDynamicContainerScreen extends StatefulWidget {
  const SkeletonDynamicContainerScreen({super.key});

  @override
  State<SkeletonDynamicContainerScreen> createState() => _SkeletonDynamicContainerScreenState();
}

class _SkeletonDynamicContainerScreenState extends State<SkeletonDynamicContainerScreen> {

  bool isSkeletonVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: ValueKey(isSkeletonVisible),
        title: const Text('Skeleton Dynamic Container'),
      ),
      body: SkeletonDynamicContainer(
        containerColor: Colors.white,
        topWidget: const ParagraphCard(
          title: 'My Groceries',
          description: 'Never forget what you need for the week again!',
          backgroundColor: Colors.white,
          paragraphColor: Colors.black,
        ),

        middleWidget: const MiddleWidgetForScreen(),

        bottomWidget: SolidButton(
          labelButton: isSkeletonVisible ? 'Hide Skeleton' : 'Show Skeleton',
          colorButton: Colors.black,
          textColor: Colors.white,
          onTap: () {
            setState(() {
              isSkeletonVisible = !isSkeletonVisible;
            });
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.note), label: 'Today'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class MiddleWidgetForScreen extends StatelessWidget {
  const MiddleWidgetForScreen({super.key});

  List<DynamicCard> getDynamicCards() {
    return const [
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
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return list[index];
        },
      );
  }
}
