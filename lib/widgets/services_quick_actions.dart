// Services & Quick Actions Grid
// Displays frequently used services such as airtime, data,
// betting, loans, and additional features.

import 'package:flutter/material.dart';

class ServicesQuickActions extends StatelessWidget {
  const ServicesQuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              QuickActionItem(icon: Icons.phone_android, label: 'Airtime'),
              QuickActionItem(icon: Icons.wifi, label: 'Data'),
              QuickActionItem(icon: Icons.sports_esports, label: 'Betting'),
              QuickActionItem(icon: Icons.tv, label: 'TV'),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              ServiceItem(icon: Icons.savings_sharp, label: 'OWealth'),
              ServiceItem(icon: Icons.request_quote, label: 'Loan'),
              ServiceItem(icon: Icons.calendar_month_sharp, label: 'Check-in'),
              ServiceItem(icon: Icons.more_horiz, label: 'More'),
            ],
          ),
        ],
      ),
    );
  }
}

class QuickActionItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const QuickActionItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFEFF7F1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(icon, color: const Color(0xFF1DC96C)),
          ),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class ServiceItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const ServiceItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFEFF7F1),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(icon, color: const Color(0xFF1DC96C)),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 11),
        ),
      ],
    );
  }
}
