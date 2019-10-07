import 'package:em_department_guide/constants.dart';
import 'package:flutter/material.dart';

import 'flowchart_brain.dart';

class FlowChartScreen extends StatefulWidget {
  @override
  _FlowChartScreenState createState() => _FlowChartScreenState();
}

class _FlowChartScreenState extends State<FlowChartScreen> {
  final fcb = FlowChartBrain();
  List<String> _answerList = [''];

  @override
  Widget build(BuildContext context) {
    List textList = fcb.output;

    print(textList);

    List<Widget> _buildButtonOptions() {
      if (fcb.options.length == 1) {
        return [
          OptionButton(
            onPressed: () {
              setState(() {
                fcb.addToChosenFlow(fcb.options, 0);
                _answerList.add('Next');
              });
            },
            title: 'Next',
          )
        ];
      } else if (fcb.options.length == 2) {
        return [
          OptionButton(
            title: 'No',
            onPressed: () {
              setState(() {
                fcb.addToChosenFlow(fcb.options, 0);
                _answerList.add('No');
              });
            },
          ),
          OptionButton(
            title: 'Yes',
            onPressed: () {
              setState(() {
                fcb.addToChosenFlow(fcb.options, 1);
                _answerList.add('Yes');
              });
            },
          )
        ];
      } else {
        return [
          OptionButton(
            title: 'Reset',
            onPressed: () {
              setState(() {
                fcb.reset();
                _answerList = [''];
              });
            },
          )
        ];
      }
    }

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text('Flow Chart Prototyping'),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Column(
                children: <Widget>[
                  Text(
                    _answerList[index],
                    style: TextStyle(color: Colors.black54),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    color: kPrimaryColor,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      textList[index],
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              );
            }, childCount: textList.length),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _buildButtonOptions(),
          )
        ]))
      ],
    );
  }
}

class OptionButton extends StatelessWidget {
  final String title;
  final Function onPressed;

  OptionButton({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(title,
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
          )),
      onPressed: onPressed,
      color: kPrimaryColor,
    );
  }
}
