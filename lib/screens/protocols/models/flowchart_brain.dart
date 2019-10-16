import 'flowchart_item.dart';

class FlowChartBrain {
  FlowChartBrain(this.flowOptions) {
    _chosenFlow = [flowOptions[0].text];
    _currentOptions = flowOptions[0].options;
  }

  final List<FlowChartItem> flowOptions;
  List _chosenFlow;
  List _currentOptions;
  List get options => _currentOptions;
  List get output => _chosenFlow;

  void addToChosenFlow(List optionList, int option) {
    int chosenItemIndex = optionList[option];

    FlowChartItem chosenItem = flowOptions[chosenItemIndex];

    _chosenFlow.add(chosenItem.text);
    _currentOptions = chosenItem.options;
  }

  void reset() {
    _chosenFlow = [flowOptions[0].text];
    _currentOptions = flowOptions[0].options;
  }
}
