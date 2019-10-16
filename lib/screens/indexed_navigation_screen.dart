import 'package:em_department_guide/constants.dart';
import 'package:em_department_guide/screens/phone/widgets/phone_navigation.dart';
import 'package:em_department_guide/screens/protocols/widgets/protocol_navigation.dart';
import 'package:em_department_guide/widgets/navigation_stack.dart';
import 'package:flutter/material.dart';

import '../models/navigation_destination.dart';
import 'admissions/admissions_navigation_screen.dart';
import 'dotphrases/widgets/dot_phrase_navigation.dart';

final List<NavigationDestination> allDestinations = <NavigationDestination>[
  NavigationDestination(
    title: 'Phone',
    icon: Icons.phone,
    screen: PhoneNavigation(),
  ),
  NavigationDestination(
    title: 'Protocols',
    icon: Icons.table_chart,
    screen: ProtocolNavigation(),
  ),
  NavigationDestination(
    title: 'Admissions',
    icon: Icons.airline_seat_individual_suite,
    screen: AdmissionsNavigationScreen(),
  ),
  NavigationDestination(
    title: 'Dot Phrases',
    icon: Icons.alternate_email,
    screen: DotPhraseNavigation(),
  ),
];

class IndexedNavigation extends StatefulWidget {
  @override
  _IndexedNavigationState createState() => _IndexedNavigationState();
}

class _IndexedNavigationState extends State<IndexedNavigation> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        // Use NavigationStack() if state preservation during navigation is desired.
        child: NavigationStack(
          currentIndex: _currentIndex,
          destinations: allDestinations,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: allDestinations
            .map<BottomNavigationBarItem>((NavigationDestination destination) {
          return BottomNavigationBarItem(
            icon: Icon(
              destination.icon,
              color: kPrimaryColor,
            ),
            title: Text(
              destination.title,
              style: TextStyle(color: kPrimaryColor),
            ),
            backgroundColor: Colors.white,
          );
        }).toList(),
      ),
    );
  }
}
