import 'package:flutter/material.dart';
import 'package:starving_shopping_flutter_app/presentation/screens/prod_screens.dart';
import 'package:starving_shopping_flutter_app/shared/examples/extension/string_extension.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _selectedOption = 0;

  final List<Widget> _screens = [
    TodayScreen(),
    ItemsScreen(),
    RemindersScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _screens[_selectedOption]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          getBottomNavigationBarItem(
            'Today',
            'bottom_navigation_note.png',
          ),
          getBottomNavigationBarItem(
            'Items',
            'bottom_navigation_items.png',
          ),
          getBottomNavigationBarItem(
            'Reminder',
            'bottom_navigation_reminder.png',
          ),
          getBottomNavigationBarItem(
            'Settings',
            'bottom_navigation_settings.png',
          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        showUnselectedLabels: true,
        currentIndex: _selectedOption,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (value) {
          setState(() {
            _selectedOption = value;
          });
        },
      ),
    );
  }

  getBottomNavigationBarItem(String label, String assetName) {
    final pathAsset = getFullPathAsset(assetName);
    return BottomNavigationBarItem(
      icon: ImageIcon(AssetImage(pathAsset)),
      label: label,
    );
  }
}
