import 'package:em_department_guide/constants.dart';
import 'package:flutter/material.dart';

class DotPhrase {
  final String title;
  final String phrase;
  final String description;

  DotPhrase({this.title, this.phrase, this.description});
}

List<DotPhrase> dotPhraseList = [
  DotPhrase(
      title: 'MDM - HEART score',
      phrase: '.MDMHEARTSCORE',
      description:
          'Documents heart score and disposition plan based on result'),
  DotPhrase(
      title: 'MDM - PECARN decision rule',
      phrase: '.MDMPECARN',
      description:
          'Documents PECARN Head CT decision rule when evaluated pediatric head trauma'),
  DotPhrase(
      title: 'SDM - Defer Abd/Pelvis CT',
      phrase: '.SDMABDOMINALPAINNOCT',
      description:
          'Documents shared decision making conversation regarding Abdomen/Pelvis CT in an otherwise low risk abdominal pain presentation'),
];

class DotPhraseNavigationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dot Phrases'),
        ),
        body: ListView.separated(
            itemBuilder: (_, index) => ListTile(
                  title: Text(dotPhraseList[index].title),
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SimpleDialog(
                            title: Text(
                              dotPhraseList[index].phrase,
                              style: TextStyle(color: kPrimaryColor),
                            ),
                            titlePadding: EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 20.0),
                            contentPadding: EdgeInsets.only(
                                left: 25.0,
                                right: 25.0,
                                top: 0.0,
                                bottom: 20.0),
                            children: <Widget>[
                              Text(
                                dotPhraseList[index].description,
                                style: TextStyle(fontSize: 17.0),
                              ),
                            ],
                          );
                        });
                  },
                ),
            separatorBuilder: (_, index) => Divider(
                  height: 1.0,
                ),
            itemCount: dotPhraseList.length));
  }
}
