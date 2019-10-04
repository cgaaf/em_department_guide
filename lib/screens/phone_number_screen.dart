import 'package:flutter/material.dart';

import '../widgets/phone_number_list.dart';

class PhoneNumberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Phone Numbers'),
        ),
        body: PhoneNumberList());
  }
}
