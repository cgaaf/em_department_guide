class FlowChartBrain {
  get options => _currentOptions;
  get output => _chosenFlow;

  static Map<String, FlowChartItem> flowOptions = {
    '1': FlowChartItem(
        'Adult ED Patient presents with, or manifests, an acute psychiatric or substance related condition',
        ['2']),
    '2': FlowChartItem('Initial EM Evaluation', ['3']),
    '3': FlowChartItem(
        'Does the patient condition require additional observation/assessment?',
        ['4a', '4b']),
    '4a': FlowChartItem(
        'Patient is found to manifest an acute safety concern and/or the patient is determined to lack capacity to leave the ED while additional observation/assessment proceeds',
        []),
    '4b': FlowChartItem(
        'Patient is NOT found to manifest any acute safety concerns or warrant an involuntary hold',
        []),
  };

  List _chosenFlow = [flowOptions['1'].text];
  List _currentOptions = flowOptions['1'].options;

  void addToChosenFlow(List optionList, int option) {
    String chosenItemKey = optionList[option];

    FlowChartItem chosenItem = flowOptions[chosenItemKey];

    _chosenFlow.add(chosenItem.text);
    _currentOptions = chosenItem.options;
  }

  void reset() {
    _chosenFlow = [flowOptions['1'].text];
    _currentOptions = flowOptions['1'].options;
  }
}

class FlowChartItem {
  final String text;
  final List options;

  FlowChartItem(this.text, this.options);
}
