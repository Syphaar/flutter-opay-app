// Wallet Actions & Info Section
// Contains quick wallet actions (transfer, withdraw) and
// a promotional wallet info card.

import 'package:flutter/material.dart';
import 'wallet_info_section.dart';

class WalletActionsSection extends StatelessWidget {
  const WalletActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              WalletAction(icon: Icons.credit_card, label: 'To Opay'),
              WalletAction(icon: Icons.account_balance, label: 'To Bank'),
              WalletAction(icon: Icons.south, label: 'Withdraw'),
            ],
          ),
        ),
        const SizedBox(height: 12),
        const WalletInfoSection(),
      ],
    );
  }
}

class WalletAction extends StatelessWidget {
  final IconData icon;
  final String label;

  const WalletAction({
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
          child: CircleAvatar(
            backgroundColor: const Color(0xFF1DC96C).withOpacity(0.1),
            child: Icon(icon, color: const Color(0xFF1DC96C)),
          ),
        ),
        const SizedBox(height: 6),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
