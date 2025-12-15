// Transaction History Section
// Displays recent wallet transactions with animated expand/collapse behavior
// based on balance visibility state.

import 'package:flutter/material.dart';

class TransactionSection extends StatelessWidget {
  final bool showTransfer;

  const TransactionSection({
    super.key,
    required this.showTransfer,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 400),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return SizeTransition(
          sizeFactor: animation,
          axisAlignment: -1.0,
          child: child,
        );
      },
      child: showTransfer
          ? Container(
        key: const ValueKey('transactionSection'),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: const Column(
          children: [
            TransactionItem(
              name: 'Transfer from FAITH JAMES',
              date: 'Dec 13th, 02:33 PM',
              amount: '+20,000.00',
              status: 'Successful',
              icon: Icons.arrow_downward,
              iconColor: Color(0xFF1DC96C),
            ),
            SizedBox(height: 20),
            TransactionItem(
              name: 'Payment to MICHAEL ADE',
              date: 'Dec 12th, 09:10 AM',
              amount: '-75,500.00',
              status: 'Pending',
              icon: Icons.arrow_upward,
              iconColor: Colors.red,
            ),
          ],
        ),
      )
          : const SizedBox.shrink(),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final String name;
  final String date;
  final String amount;
  final String status;
  final IconData icon;
  final Color iconColor;

  const TransactionItem({
    super.key,
    required this.name,
    required this.date,
    required this.amount,
    required this.status,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      CircleAvatar(
        backgroundColor: iconColor.withOpacity(0.15),
        child: Icon(icon, color: iconColor),
      ),
      const SizedBox(width: 12),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
            const SizedBox(height: 4),
            Text(
              date,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            amount,
            style: TextStyle(
              color: iconColor,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 4),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: iconColor.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              status,
              style: TextStyle(color: iconColor, fontSize: 12),
            ),
          ),
        ],
      ),
    ]);
  }
}
