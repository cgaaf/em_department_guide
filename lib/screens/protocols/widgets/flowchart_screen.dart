import 'package:flutter/material.dart';

import '../../../widgets/option_button.dart';
import '../models/flow_input.dart';
import '../models/flowchart_brain.dart';
import 'flow_block.dart';

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
