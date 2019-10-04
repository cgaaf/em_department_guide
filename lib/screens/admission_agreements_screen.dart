import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../markdown/cardiology_agreement.dart';

var styleSheet = MarkdownStyleSheet(
  h2: TextStyle(fontSize: 25, color: Colors.black),
  p: TextStyle(color: Colors.black54, fontSize: 17),
  blockSpacing: 8,
  listIndent: 25.0,
);

class AdmissionAgreementsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cardiology / Hospitalist Agreement'),
      ),
      body: Markdown(
        data: cardiologyAgreement,
        styleSheet: styleSheet,
      ),
    );
  }
}
