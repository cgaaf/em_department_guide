import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../../constants.dart';
import '../markdown/cardiology_agreement.dart';

class CardiologyAdmissionScreen extends StatelessWidget {
  const CardiologyAdmissionScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cardiology / Hospitalist Agreement'),
        backgroundColor: Colors.red,
      ),
      body: Markdown(
        data: cardiologyAgreement,
        styleSheet: kMarkDownStyles,
      ),
    );
  }
}
