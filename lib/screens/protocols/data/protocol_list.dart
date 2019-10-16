import '../data/psych_flowchart_data.dart';
import '../models/protocol.dart';
import '../widgets/flowchart_screen.dart';

List<ProtocolType> protocols = [
  ProtocolType(
      title: 'ITC/White Papers Flow', widget: FlowChartScreen(psychFlowInput)),
];
