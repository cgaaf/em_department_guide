import '../models/dot_phrase.dart';
import '../models/dot_phrase_type.dart';

List<DotPhraseType> dotPhraseCategories = [
  DotPhraseType(type: 'Medical Decision Making', dotPhraseList: mdmDotPhrases),
  DotPhraseType(type: 'Shared Decision Making', dotPhraseList: sdmDotPhrases),
];

List<DotPhrase> mdmDotPhrases = [
  DotPhrase(
      title: 'HEART Score',
      phrase: '.MDMHEARTSCORE',
      description:
          'Documents heart score and disposition plan based on result'),
  DotPhrase(
      title: 'PECARN Decision Instrument',
      phrase: '.MDMPECARN',
      description:
          'Documents PECARN Head CT decision rule when evaluated pediatric head trauma'),
  DotPhrase(
      title: 'PERC Criteria',
      phrase: '.MDMPERCNEGATIVE',
      description: 'Documents negative PERC criteria for low risk PE patients'),
  DotPhrase(
      title: 'Canadian Head CT Criteria',
      phrase: '.MDMLOWRISKHEAD',
      description:
          'Documents Canadian Head CT criteria for low risk head injuries'),
  DotPhrase(
      title: 'NEXUS C-Spine Criteria',
      phrase: '.MDMCSPINENEXUS',
      description:
          'Documents Nexus C-Spine criteria for low risk neck injuries'),
  DotPhrase(
      title: 'Canadian C-Spine Criteria',
      phrase: '.MDMCSPINECANADA',
      description:
          'Documents Canadian C-Spine criteria for low risk neck injuries')
];

List<DotPhrase> sdmDotPhrases = [
  DotPhrase(
      title: 'Abdomen/Pelvis CT',
      phrase: '.SDMABDOMINALPAINNOCT',
      description:
          'Documents shared decision making conversation regarding obtaining/deferring Abdomen/Pelvis CT in an otherwise low risk abdominal pain presentation'),
  DotPhrase(
      title: 'No LP after negative Head CT',
      phrase: '.SDMNOLPAFTERCT',
      description:
          'Documents shared decision making conversation regarding avoiding LP after normal CT performed in under 6 hours for patient\'s presenting with acute headache'),
  DotPhrase(
      title: 'Defer I&D in early vs very small abscess',
      phrase: '.SDMABSCESSNOINCISE',
      description:
          'Documents shared decision making conversation regarding deferred or delayed I&D in a very early or small cutaneous abscess')
];
