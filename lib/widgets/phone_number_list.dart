import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneNumber {
  final String location;
  final String locationSubtext;
  final String phoneNumber;

  PhoneNumber({
    this.location,
    this.locationSubtext,
    this.phoneNumber,
  });
}

List<PhoneNumber> numberList = [
  PhoneNumber(
    location: 'A Pod',
    phoneNumber: '864-455-7899',
  ),
  PhoneNumber(
    location: 'C Pod',
    phoneNumber: '864-455-1659',
  ),
  PhoneNumber(
    location: 'D Pod',
    phoneNumber: '864-455-1659',
  ),
  PhoneNumber(
      location: 'PFC',
      locationSubtext: 'Patient Flow Coordinator',
      phoneNumber: '864-546-0192'),
  PhoneNumber(
      location: 'Radiology Reading Room',
      locationSubtext: 'Radiologist #1',
      phoneNumber: '864-455-3174'),
  PhoneNumber(
      location: 'Radiology Reading Room',
      locationSubtext: 'Radiologist #2',
      phoneNumber: '864-455-3175'),
  PhoneNumber(
      location: 'Radiology Reading Room',
      locationSubtext: 'Radiologist #3',
      phoneNumber: '864-455-3631'),
  PhoneNumber(
    location: 'GMH CT Scan',
    phoneNumber: '864-455-7474',
  ),
  PhoneNumber(
      location: 'Psych Social Work',
      locationSubtext: 'Office Phone',
      phoneNumber: '864-455-8094'),
  PhoneNumber(
      location: 'ED Case Management',
      locationSubtext: 'Office Phone',
      phoneNumber: '864-455-8094'),
  PhoneNumber(
      location: 'ED Case Management',
      locationSubtext: 'Cell Phone',
      phoneNumber: '864-238-2963'),
];

class PhoneNumberList extends StatelessWidget {
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
    return Container(
      child: ListView.builder(
          itemCount: numberList.length,
          itemBuilder: (context, index) {
            final PhoneNumber item = numberList[index];

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
