import 'package:em_department_guide/widgets/phone_number_listview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'phone_numbers.dart';
import 'phone_book.dart';

final List<PhoneBook> phoneBookLocations = [
  PhoneBook(location: 'Greenville Memorial', numberList: greenvilleList),
  PhoneBook(location: 'Greer Memorial', numberList: greerList),
  PhoneBook(location: 'Hilcrest Memorial', numberList: greenvilleList),
  PhoneBook(location: 'Baptist Easley', numberList: greerList),
  PhoneBook(location: 'North Greenville', numberList: greenvilleList),
  PhoneBook(location: 'Oconee Memorial', numberList: greerList),
  PhoneBook(location: 'Laurens County Memorial', numberList: greenvilleList)
];

class PhoneNumberNavigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) => MaterialPageRoute(
        builder: (BuildContext context) => PhoneNumberNavigator(),
      ),
    );
  }
}

class PhoneNumberNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Numbers'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading: Icon(FontAwesomeIcons.hospital),
          title: Text(phoneBookLocations[index].location),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PhoneNumberListView(
                          title: phoneBookLocations[index].location,
                          phoneNumbers: phoneBookLocations[index].numberList,
                        )));
          },
        ),
        separatorBuilder: (context, index) => Divider(
          height: 1.0,
        ),
        itemCount: phoneBookLocations.length,
      ),
    );
  }
}
