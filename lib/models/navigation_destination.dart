import 'package:flutter/material.dart';

class NavigationDestination {
  final String title;
  final IconData icon;
  final Widget screen;

  NavigationDestination({
    @required this.title,
    this.icon,
    @required this.screen,
  });
}
