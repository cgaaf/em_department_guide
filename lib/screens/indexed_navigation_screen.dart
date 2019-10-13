import 'package:flutter/material.dart';

import '../prototypes/flowchart_screen.dart';
import 'admission_agreements_screen.dart';
import 'phone_number_screen.dart';

final List<Widget> screens = <Widget>[
  PhoneNumberScreen(),
  FlowChartScreen(),
  AdmissionAgreementsScreen(),
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
          children: screens,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.table_chart),
            title: Text('Protocols'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airline_seat_individual_suite),
            title: Text('Admissions'),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
