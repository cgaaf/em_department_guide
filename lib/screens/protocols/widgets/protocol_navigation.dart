import 'package:em_department_guide/widgets/navigator_list_view.dart';
import 'package:flutter/material.dart';

import '../data/protocol_list.dart';

class ProtocolNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavigatorListView(
      appBar: AppBar(
        title: Text('Protocols'),
      ),
      itemCount: protocols.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(protocols[index].title),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => protocols[index].widget,
              ));
        },
      ),
    );
  }
}
