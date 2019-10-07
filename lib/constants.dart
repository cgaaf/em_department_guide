import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

final kMarkDownStyles = MarkdownStyleSheet(
  h1: TextStyle(fontSize: 25, color: Colors.black),
  h2: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
  p: TextStyle(color: Colors.black54, fontSize: 17),
  blockSpacing: 8,
  listIndent: 25.0,
);

final kPrimaryColor = Color(0xffD02565);
