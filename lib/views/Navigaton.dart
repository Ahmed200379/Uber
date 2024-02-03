import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:software_project/views/login_page.dart';

import 'package:software_project/views/pofile.dart';
import 'package:software_project/views/services.dart';

import '../models/models.dart';
import 'homepage.dart';


class NavigationPage extends StatefulWidget {
  NavigationPage({super.key});
  static String id = 'Navigate';
  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;
   final List<Widget> _widgetOptions = [
   HomePage(),
     const Sevices(),
      Profile(name: user,)
  ];

  @override
  Widget build(BuildContext context) {
    var username  = ModalRoute.of(context)!.settings.arguments ;
    user=username as String;
    setState(() {});
    return Scaffold(
      body: _widgetOptions[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_view_month_rounded),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Account',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
