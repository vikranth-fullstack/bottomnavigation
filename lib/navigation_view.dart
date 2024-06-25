import 'package:bottom_navbar/screens/home_page.dart';
import 'package:bottom_navbar/screens/posts_screen.dart';
import 'package:bottom_navbar/screens/settings.dart';
import 'package:flutter/material.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  int _selectedIndex = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom nav bar demo")),
      body: IndexedStack(
          children: [HomeScree(), PostScreen(), Settings()],
          index: _selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.post_add), label: "My Posts"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
        ],
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
