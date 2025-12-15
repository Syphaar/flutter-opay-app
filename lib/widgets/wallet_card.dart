// Wallet Balance Card
// Displays the user's available balance with visibility toggle and add money action.

import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  final bool showBalance;
  final VoidCallback onToggle;

  const WalletCard({
    super.key,
    required this.showBalance,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF1DC96C),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(children: [
            const Icon(Icons.verified_user, color: Colors.white70, size: 18),
            const SizedBox(width: 6),
            const Text('Available Balance',
                style: TextStyle(color: Colors.white70)),
            const SizedBox(width: 6),
            GestureDetector(
              onTap: onToggle,
              child: Icon(
                showBalance
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: Colors.white70,
                size: 18,
              ),
            ),
          ]),
          Row(children: const [
            Text('Transaction History',
                style: TextStyle(color: Colors.white, fontSize: 12)),
            SizedBox(width: 4),
            Icon(Icons.chevron_right, color: Colors.white, size: 18),
          ]),
        ]),
        const SizedBox(height: 12),
        Row(children: [
          Expanded(
            child: Row(children: [
              Text(
                showBalance ? '₦245,300.50' : '********',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 6),
              const Icon(Icons.chevron_right,
                  color: Colors.white, size: 22),
            ]),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              padding:
              const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                '+ Add Money',
                style: TextStyle(
                  color: Color(0xFF1DC96C),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}
