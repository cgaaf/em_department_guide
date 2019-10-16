import 'package:em_department_guide/screens/dotphrases/widgets/dot_phrase_list_view.dart';
import 'package:em_department_guide/widgets/navigator_list_view.dart';
import 'package:flutter/material.dart';

import '../data/dot_phrase_data.dart';

class DotPhraseNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavigatorListView(
      appBar: AppBar(title: Text('Dot Phrase Categories')),
      itemCount: dotPhraseCategories.length,
      itemBuilder: (_, index) => ListTile(
        title: Text(dotPhraseCategories[index].type),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DotPhraseListView(
                        title: dotPhraseCategories[index].type,
                        dotPhraseList: dotPhraseCategories[index].dotPhraseList,
                      )));
        },
      ),
    );
  }
}
