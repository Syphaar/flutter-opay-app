// Bottom Navigation Bar
// Provides primary navigation tabs for the OPay application.

import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      backgroundColor: Colors.transparent,
      selectedItemColor: const Color(0xFF1DC96C),
      unselectedItemColor: Colors.grey,
      selectedFontSize: 11,
      unselectedFontSize: 11,
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: const Icon(Icons.home),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: const Icon(Icons.diamond_outlined),
          ),
          label: 'Rewards',
        ),
        BottomNavigationBarItem(
          icon: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: const Icon(Icons.trending_up),
          ),
          label: 'Finance',
        ),
        BottomNavigationBarItem(
          icon: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: const Icon(Icons.credit_card),
          ),
          label: 'Cards',
        ),
        BottomNavigationBarItem(
          icon: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: const Icon(Icons.person),
          ),
          label: 'Me',
        ),
      ],
    );
  }
}
