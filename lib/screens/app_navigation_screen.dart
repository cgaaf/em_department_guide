import 'package:flutter/material.dart';

import 'admission_agreements_screen.dart';
import 'phone_number_screen.dart';

class BottomNavigationRoute {
  final Widget screenRoute;
  final String appBarTitle;

  BottomNavigationRoute({this.screenRoute, this.appBarTitle});
}

class AppNavigationBar extends StatefulWidget {
  @override
  _AppNavigationBarState createState() => _AppNavigationBarState();
}

class _AppNavigationBarState extends State<AppNavigationBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  List<BottomNavigationRoute> _bottomNavigationRoutes = <BottomNavigationRoute>[
    BottomNavigationRoute(screenRoute: PhoneNumberScreen()),
    BottomNavigationRoute(
      screenRoute: Center(
        child: Text(
          'Future Protocol\'s Screen',
          textAlign: TextAlign.center,
          style: optionStyle,
        ),
      ),
    ),
    BottomNavigationRoute(screenRoute: AdmissionAgreementsScreen()),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bottomNavigationRoutes.elementAt(_selectedIndex).screenRoute,
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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
