import 'package:breass/router/app_path.dart';
import 'package:breass/router/app_router.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  final Widget child;

  const MainPage({super.key, required this.child});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  static final iconMap = {
    homePath: Icons.home,
    minePath: Icons.person,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: (index) {
          if (_selectedIndex == index) return;
          setState(() {
            _selectedIndex = index;
          });
        },
        items: shellRoutes.map((e) {
          return BottomNavigationBarItem(
            icon: Icon(iconMap[e.path]),
            label: e.path,
          );
        }).toList(),
      ),
    );
  }
}
