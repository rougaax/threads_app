import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/search_screen.dart';
import 'screens/add_thread_screen.dart';
import 'screens/activity_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const ThreadsCloneApp());
}

class ThreadsCloneApp extends StatelessWidget {
  const ThreadsCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const AddThreadScreen(),
    const ActivityScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          color: Colors.black,
          border: Border(top: BorderSide(color: Colors.grey, width: 0.2)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _navBarItem(Icons.home_outlined, Icons.home, 0),
            _navBarItem(Icons.search, Icons.search, 1),
            _navBarItem(
                Icons.add_box_outlined, Icons.add_box, 2, isCenter: true),
            _navBarItem(Icons.favorite_border, Icons.favorite, 3),
            _navBarItem(Icons.person_outline, Icons.person, 4),
          ],
        ),
      ),
    );
  }

  Widget _navBarItem(IconData icon, IconData activeIcon, int index,
      {bool isCenter = false}) {
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: EdgeInsets.all(isCenter ? 12 : 8),
        decoration: isCenter
            ? BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(12),
        )
            : null,
        child: Icon(
          _selectedIndex == index ? activeIcon : icon,
          color: _selectedIndex == index ? Colors.white : Colors.grey,
          size: isCenter ? 30 : 28,
        ),
      ),
    );
  }
}