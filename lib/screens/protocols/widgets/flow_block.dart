import 'package:em_department_guide/constants.dart';
import 'package:flutter/material.dart';

class FlowBlock extends StatelessWidget {
  const FlowBlock({Key key, @required List textList, @required int index})
      : _textList = textList,
        _index = index,
        super(key: key);

  final List _textList;
  final int _index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kPrimaryColor,
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Text(
        _textList.reversed.toList()[_index],
        style: TextStyle(fontSize: 20, color: Colors.white),
        textAlign: TextAlign.center,
      ),
    );
  }
}
