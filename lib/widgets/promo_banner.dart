// Promotional Banner Section
// Displays ongoing promotions and special offers to users.

import 'package:flutter/material.dart';

class PromoBanner extends StatelessWidget {
  const PromoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFFE0F6E9),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Icon(
              Icons.card_giftcard,
              size: 36,
              color: Color(0xFF1DC96C),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Awoof Wey No Dey Run Belle!!!',
                  style:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 4),
                Text('Get 10% Off when you deposit ₦300 only'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
