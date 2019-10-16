import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../models/dot_phrase.dart';

class DotPhraseListView extends StatelessWidget {
  final String title;
  final List<DotPhrase> dotPhraseList;

  DotPhraseListView({this.title, this.dotPhraseList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
                              left: 25.0, right: 25.0, top: 0.0, bottom: 20.0),
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
          itemCount: dotPhraseList.length),
    );
  }
}
