import 'package:em_department_guide/widgets/phone_number_listview.dart';
import 'package:flutter/material.dart';
import 'phone_numbers.dart';

class PhoneNumberNavigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return PhoneNumberNavigator();
                case '/greenville':
                  return PhoneNumberListView(
                    title: 'Greenville',
                    phoneNumbers: greenvilleList,
                  );
                case '/greer':
                  return PhoneNumberListView(
                    title: 'Greer',
                    phoneNumbers: greerList,
                  );
                default:
                  return PhoneNumberNavigator();
              }
            });
      },
    );
  }
}

class PhoneNumberNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text('Greenville'),
          leading: Icon(Icons.location_city),
          onTap: () {
            Navigator.pushNamed(context, '/greenville');
          },
        ),
        ListTile(
          title: Text('Greer'),
          leading: Icon(Icons.location_city),
          onTap: () {
            Navigator.pushNamed(context, '/greer');
          },
        ),
        ListTile(
          title: Text('Hilcrest'),
          leading: Icon(Icons.location_city),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => PhoneNumberListView(
                          title: 'Hilcrest',
                          phoneNumbers: greerList,
                        )));
          },
        )
      ],
    );
  }
}
