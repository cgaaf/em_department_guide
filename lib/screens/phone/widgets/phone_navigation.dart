import 'package:em_department_guide/screens/phone/widgets/phone_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../widgets/navigator_list_view.dart';
import '../data/phone_numbers.dart';

class PhoneNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavigatorListView(
      appBar: AppBar(title: Text('Phone Numbers')),
      itemBuilder: (context, index) => ListTile(
        leading: Icon(FontAwesomeIcons.hospital),
        title: Text(phoneBookLocations[index].location),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PhoneListView(
                        title: phoneBookLocations[index].location,
                        phoneNumbers: phoneBookLocations[index].numberList,
                      )));
        },
      ),
      itemCount: phoneBookLocations.length,
    );
  }
}
