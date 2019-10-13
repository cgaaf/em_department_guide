import 'package:em_department_guide/constants.dart';
import 'package:em_department_guide/screens/phone/phone_number_navigation_screen.dart';
import 'package:flutter/material.dart';

import 'package:em_department_guide/screens/protocols/flowchart_screen.dart';
import 'admissions/admissions_navigation_screen.dart';
import '../models/destination.dart';

final List<Destination> allDestinations = <Destination>[
  Destination(
      title: 'Phone', icon: Icons.phone, screen: PhoneNumberNavigationScreen()),
  Destination(
      title: 'Protocols', icon: Icons.table_chart, screen: FlowChartScreen()),
  Destination(
      title: 'Admissions',
      icon: Icons.airline_seat_individual_suite,
      screen: AdmissionsNavigationScreen())
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
        child: IndexedStack(
          index: _currentIndex,
          children: allDestinations.map<Widget>((Destination destination) {
            return destination.screen;
          }).toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: allDestinations
            .map<BottomNavigationBarItem>((Destination destination) {
          return BottomNavigationBarItem(
            icon: Icon(destination.icon),
            title: Text(destination.title),
            backgroundColor: kPrimaryColor,
          );
        }).toList(),
      ),
    );
  }
}
