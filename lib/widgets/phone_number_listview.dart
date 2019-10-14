import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../screens/phone/phone_number.dart';

class PhoneNumberListView extends StatelessWidget {
  final List<PhoneNumber> phoneNumbers;
  final String title;

  PhoneNumberListView({this.phoneNumbers, this.title});

  _dialNumber(String phoneNumber) async {
    String url = 'tel:$phoneNumber';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.separated(
          itemCount: phoneNumbers.length,
          separatorBuilder: (context, index) => Divider(
                height: 1.0,
              ),
          itemBuilder: (context, index) {
            final PhoneNumber item = phoneNumbers[index];

            return ListTile(
              leading: Icon(Icons.phone),
              title: Text(item.location),
              trailing: Text(item.phoneNumber),
              subtitle: item.locationSubtext != null
                  ? Text(item.locationSubtext)
                  : null,
              onTap: () {
                _dialNumber(item.phoneNumber);
              },
            );
          }),
    );
  }
}
