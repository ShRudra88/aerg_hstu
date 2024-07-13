import 'package:aerg_hstu/view/contact_page.dart';
import 'package:aerg_hstu/view/create_page.dart';
import 'package:aerg_hstu/view/feedback_page.dart';
import 'package:aerg_hstu/view/home_page.dart';
import 'package:aerg_hstu/view/show_page.dart';
import 'package:flutter/material.dart';


class MainBottomNavPage extends StatefulWidget {
  const MainBottomNavPage({super.key});

  @override
  State<MainBottomNavPage> createState() => _MainBottomNavPageState();
}

class _MainBottomNavPageState extends State<MainBottomNavPage> {

  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const HomePage(),
    const CreatePage(),
    const ShowPage(),
    const ContactPage(),
    const FeedbackPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap:(index) {
          _selectedIndex = index;
          if(mounted){
            setState(() {

            });
          }
        },
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.blue,
        showSelectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.create_new_folder_outlined), label: 'Create'),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart_rounded), label: 'Show'),
          BottomNavigationBarItem(icon: Icon(Icons.perm_contact_calendar_rounded), label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.feedback_outlined), label: 'Feedback'),
        ],
      ),
    );
  }
}