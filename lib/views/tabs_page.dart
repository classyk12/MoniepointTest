// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:marketplace/utils/theme.dart';
import 'package:marketplace/views/tab_navigation_item.dart';

class TabsPage extends StatefulWidget {
  int? currentIndex;
  TabsPage({Key? key, this.currentIndex = 0}) : super(key: key);
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  //int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: widget.currentIndex,
        children: [
          for (final tabItem in TabNavigationItem.items) tabItem.page!,
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        unselectedItemColor: const Color(0xff9E9B9A), //Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedIconTheme: IconThemeData(color: primaryGreen),
        // showUnselectedLabels: ,
        selectedLabelStyle:
            TextStyle(color: primaryGreen, fontWeight: FontWeight.bold),

        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        unselectedLabelStyle: const TextStyle(color: Colors.grey, fontSize: 11),
        backgroundColor: const Color(0xffFCFCFC),
        currentIndex: widget.currentIndex!,
        onTap: (int index) => setState(() {
          widget.currentIndex = index;
        }),
        items: [
          for (final tabItem in TabNavigationItem.items)
            BottomNavigationBarItem(icon: tabItem.icon!, label: tabItem.label)
        ],
      ),
    );
  }
}
