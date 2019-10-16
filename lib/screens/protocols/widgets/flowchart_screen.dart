import 'package:em_department_guide/constants.dart';
import 'package:flutter/material.dart';

import '../models/flow_input.dart';
import '../models/flowchart_brain.dart';

class FlowChartScreen extends StatefulWidget {
  final FlowInput flowInput;

  FlowChartScreen(this.flowInput);

  @override
  _FlowChartScreenState createState() => _FlowChartScreenState();
}

class _FlowChartScreenState extends State<FlowChartScreen> {
  List<String> _answerList = [''];
  FlowChartBrain _flowChartBrain;

  @override
  void initState() {
    _flowChartBrain = FlowChartBrain(widget.flowInput.flowOptions);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List _textList = _flowChartBrain.output;

    List<Widget> _buildButtonOptions() {
      if (_flowChartBrain.options.length == 1) {
        return [
          OptionButton(
            onPressed: () {
              setState(() {
                _flowChartBrain.addToChosenFlow(_flowChartBrain.options, 0);
                _answerList.add('Next');
              });
            },
            title: 'Next',
          )
        ];
      } else if (_flowChartBrain.options.length == 2) {
        return [
          OptionButton(
            title: 'No',
            onPressed: () {
              setState(() {
                _flowChartBrain.addToChosenFlow(_flowChartBrain.options, 0);
                _answerList.add('No');
              });
            },
          ),
          OptionButton(
            title: 'Yes',
            onPressed: () {
              setState(() {
                _flowChartBrain.addToChosenFlow(_flowChartBrain.options, 1);
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
                _flowChartBrain.reset();
                _answerList = [''];
              });
            },
          )
        ];
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.flowInput.title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 5,
                child: ListView.builder(
                  reverse: true,
                  itemCount: _textList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: <Widget>[
                        Text(
                          _answerList.reversed.toList()[index],
                          style: TextStyle(color: Colors.black54),
                        ),
                        FlowBlock(
                          textList: _textList,
                          index: index,
                        ),
                      ],
                    );
                  },
                )),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _buildButtonOptions(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
            color: kPrimaryColor,
          )),
      onPressed: onPressed,
      color: kSecondaryColor,
    );
  }
}
