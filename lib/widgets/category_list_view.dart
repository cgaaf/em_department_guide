import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  final AppBar appBar;
  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;

  CategoryListView({
    this.appBar,
    @required this.itemBuilder,
    @required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) => MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
                appBar: appBar,
                body: ListView.separated(
                  itemBuilder: itemBuilder,
                  separatorBuilder: (context, index) => Divider(
                    height: 1.0,
                  ),
                  itemCount: itemCount,
                ),
              )),
    );
  }
}
