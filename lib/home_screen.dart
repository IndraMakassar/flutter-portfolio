import 'package:flutter/material.dart';
import 'package:portfolio/contact.dart';
import 'package:portfolio/portfolio.dart';
import 'package:portfolio/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List<Widget> tabs = [const Profile(), const Portfolio(), const Contact()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_page),
              label: 'Portfolio'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              label: 'Contact'
          ),
        ],
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
      body: tabs[_currentIndex],
    );
  }
}