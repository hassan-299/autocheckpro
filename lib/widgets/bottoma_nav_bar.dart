import 'package:autocheck_pro/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const HomeScreen(),
    const HomeScreen(),
  ];

  final List<String> _svgIcons = [
    'assets/images/home.png',
    'assets/images/trash.png',
    'assets/images/menetance.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 64.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(36.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            _svgIcons.length,
            (index) => _buildNavItem(_svgIcons[index], index),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem(String svgPath, int index) {
    final bool isSelected = _selectedIndex == index;
    final Color iconColor = isSelected
        ? Colors.orange // Change the active state color to orange
        : Colors.grey;

    return GestureDetector(
      onTap: () => setState(() => _selectedIndex = index),
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: 79.w,
        height: double.infinity,
        alignment: Alignment.center,
        child: Image.asset(
          svgPath,
          color: iconColor,
          width: 28.w,
          height: 28.w,
        ),
      ),
    );
  }
}
