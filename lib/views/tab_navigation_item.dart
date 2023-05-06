import 'package:flutter/material.dart';
import 'package:marketplace/views/home_screen.dart';
import 'package:marketplace/views/other_screen.dart';

class TabNavigationItem {
  final Widget? page;
  final Widget? icon;
  final String? label;
  final String? iconColor;
  TabNavigationItem(
      {@required this.page, @required this.icon, this.label, this.iconColor});

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
            page: const HomeScreen(),
            icon: const Icon(Icons.pentagon),
            label: 'Home'),
        TabNavigationItem(
            page: const OtherScreen(),
            icon: const Icon(Icons.home_filled),
            label: 'Voucer'),
        TabNavigationItem(
            page: const OtherScreen(),
            icon: const Icon(Icons.wallet_giftcard),
            label: 'Wallet'),
        TabNavigationItem(
            page: const OtherScreen(),
            icon: const Icon(Icons.settings),
            label: 'Settings'),
      ];
}
