// Wallet Referral Information Card
// Encourages users to share OPay with others and includes
// a call-to-action button.

import 'package:flutter/material.dart';

class WalletInfoSection extends StatelessWidget {
  const WalletInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Row(
              children: [
                Icon(Icons.card_giftcard,
                    color: const Color(0xFF1DC96C), size: 28),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Share OPay with Others',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Help a loved one get their own account in minutes with OPay',
                        style:
                        TextStyle(fontSize: 12, color: Colors.grey),
                        softWrap: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1DC96C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
                padding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              onPressed: () {},
              child: const Text(
                'Go',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
