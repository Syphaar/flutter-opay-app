// OPay Home Page Layout
// This file contains the main homepage layout for the OPay UI clone,
// including wallet balance, transactions, services, promos, and bottom navigation.

import 'package:flutter/material.dart';
import '../widgets/wallet_card.dart';
import '../widgets/transaction_section.dart';
import '../widgets/wallet_actions_section.dart';
import '../widgets/services_quick_actions.dart';
import '../widgets/promo_banner.dart';
import '../widgets/bottom_nav.dart';

class OPayHomePage extends StatefulWidget {
  const OPayHomePage({super.key});

  @override
  State<OPayHomePage> createState() => _OPayHomePageState();
}

class _OPayHomePageState extends State<OPayHomePage> {
  bool showBalance = true;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isLargeScreen = screenWidth > 900;
    const double maxContentWidth = 420;
    final double horizontalPadding =
    isLargeScreen ? (screenWidth - maxContentWidth) / 2 : 0;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Row(
              children: const [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Color(0xFF1DC96C),
                  child: Text('O', style: TextStyle(color: Colors.white)),
                ),
                SizedBox(width: 8),
                Text(
                  'HI, SIFON',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            actions: [
              _hoverIcon(Icons.support_agent),
              const SizedBox(width: 16),
              _hoverIcon(Icons.qr_code_scanner),
              const SizedBox(width: 16),
              _hoverIcon(Icons.notifications_none),
              const SizedBox(width: 16),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: horizontalPadding == 0 ? 16 : horizontalPadding,
        ),
        children: [
          WalletCard(
            showBalance: showBalance,
            onToggle: () => setState(() => showBalance = !showBalance),
          ),
          const SizedBox(height: 12),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 400),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return SizeTransition(
                sizeFactor: animation,
                axisAlignment: -1.0,
                child: child,
              );
            },
            child: TransactionSection(
              key: ValueKey(showBalance),
              showTransfer: showBalance,
            ),
          ),

          const SizedBox(height: 12),
          const WalletActionsSection(),
          const SizedBox(height: 16),
          const ServicesQuickActions(),
          const SizedBox(height: 16),
          const PromoBanner(),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: const BottomNav(),
      ),
    );
  }

  static Widget _hoverIcon(IconData icon) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Icon(icon, color: Colors.black),
    );
  }
}






