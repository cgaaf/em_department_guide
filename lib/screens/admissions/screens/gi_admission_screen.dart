import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../../../constants.dart';
import '../markdown/gastroenterology_agreement.dart';

class GIAdmissionScreen extends StatelessWidget {
  const GIAdmissionScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GI / Hospitalist Agreement'),
        backgroundColor: Colors.brown,
      ),
      body: Markdown(
        data: giAgreement,
        styleSheet: kMarkDownStyles,
      ),
    );
  }
}
