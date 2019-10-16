import '../models/flow_input.dart';
import '../models/flowchart_item.dart';

FlowInput psychFlowInput = FlowInput(
  title: 'ITC/White Paper Flow',
  flowOptions: <FlowChartItem>[
    FlowChartItem(
        'Adult ED patient presents with, or manifests, and acute psychiatric or substance-related condition',
        [1]), // index 0
    FlowChartItem('Initial EM Evaluation', [2]), // index 1
    FlowChartItem(
        'Does the patient manifest an acute safety concern and/or is the patient determined to lack capacity to leave the ED?',
        [3, 4]), // 2
    FlowChartItem('Patient remains in the ED under voluntary status', [9]), // 3
    FlowChartItem(
        'EM initiates ITC status and places "Medical Hold" order', [5]), // 4
    FlowChartItem('Is the patient intoxicated?', [9, 6]), // 5
    FlowChartItem(
        'Continue serial re-assessment for evidence of clinical sobriety',
        [7]), // 6
    FlowChartItem(
        'Once clinical sobriety is achieved, does the patient continue to manifest persisting psychiatric and/or safety concern?',
        [8, 9]), // 7
    FlowChartItem(
        'Discontinue ITC, disposition as medically appropriate', []), // 8
    FlowChartItem(
        'Patient is able to engage in a psychiatric interview', [10]), // 9
    FlowChartItem('Place "ED Consult to Social Work" order', [11]), // 10
    FlowChartItem('Is the ED Psychiatrist on duty?', [15, 12]), // 11
    FlowChartItem(
        'Social worker discusses findings of assessment with the ED Psychiatrist',
        [13]), // 12
    FlowChartItem(
        'Further psychiatric assessment and/or disposition plan will proceed as per the Emergency Psychiatry Protocol.',
        [14]), // 13
    FlowChartItem(
        'Social Worker will advise EM Attending Physician of need to complete Part 2 of White Papers if patient requires admission, is likely to be placed in a timely manner and Emergency Psychiatry volume is high. Otherwise, ED Psychiatrist will complete Part 2 if applicable.',
        []), // 14
    FlowChartItem(
        'Social Worker discusses findings of assessment with EM Attending Physician.',
        [16]), // 15
    FlowChartItem(
        'Does the social worker and EM physician agree on a plan for discharge?',
        [18, 17]), // 16
    FlowChartItem('Patient is discharged. ITC status is lifted', []), // 17
    FlowChartItem(
        'Is there agreement that the patient requires inpatient psychiatric admission without additional ED Psychiatry evaluation?',
        [20, 19]), // 18
    FlowChartItem(
        'Admission: SW completes part 1 of White Papers and EM Attending physician completes Part 2 of White Papers',
        []), //19
    FlowChartItem(
        'Observation: Patient remains on ITC status due to: Diagnostic Uncertainty, Therapeutic Intensity, Unresolved Disposition, or residual safety issue (that precludes planned discharge.',
        [21]), // 20
    FlowChartItem(
        'EM Orders "ED Consult to Psychiatry (Physician)"', [22]), // 21
    FlowChartItem(
        'ED Psychiatrist, once on duty, will: Evaluate patient, determine disposition, and (if applicable) complete part 2 of white papers.',
        []) // 22
  ],
);
