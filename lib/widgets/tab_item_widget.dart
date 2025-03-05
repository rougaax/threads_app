import 'package:flutter/material.dart';

class TabItemWidget extends StatelessWidget {
  final String title;
  final int index;
  final int selectedTab;
  final bool isLeft;
  final Function(int) onTap;

  const TabItemWidget({
    super.key,
    required this.title,
    required this.index,
    required this.selectedTab,
    required this.isLeft,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: selectedTab == index ? Colors.white : Colors.grey,
          ),
        ),
      ),
    );
  }
}
