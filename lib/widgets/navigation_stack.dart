import 'package:flutter/material.dart';

import '../models/navigation_destination.dart';

// Use Navigation Stack to preserve state between switching screens with a bottom navigation bar. Otherwise use current implementation.
class NavigationStack extends StatelessWidget {
  NavigationStack({
    Key key,
    @required int currentIndex,
    @required List<NavigationDestination> destinations,
  })  : _currentIndex = currentIndex,
        _destinations = destinations,
        super(key: key);

  final int _currentIndex;
  final List<NavigationDestination> _destinations;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: _currentIndex,
      children: _destinations.map<Widget>((NavigationDestination destination) {
        return destination.screen;
      }).toList(),
    );
  }
}
