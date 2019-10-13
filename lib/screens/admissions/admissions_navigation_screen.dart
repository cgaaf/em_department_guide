import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'screens/gi_admission_screen.dart';
import 'screens/cardiology_admission_screen.dart';

class AdmissionsNavigationScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return AdmissionNavigator();
                case '/cardiology':
                  return CardiologyAdmissionScreen();
                case '/gi':
                  return GIAdmissionScreen();
                default:
                  return AdmissionNavigator();
              }
            });
      },
    );
  }
}

class AdmissionNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.count(
      primary: false,
      crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      padding: EdgeInsets.all(20),
      children: <Widget>[
        GridButton(
          title: 'Cardiology',
          icon: FontAwesomeIcons.heartBroken,
          color: Colors.red,
          onPressed: () {
            Navigator.pushNamed(context, '/cardiology');
          },
        ),
        GridButton(
          title: 'GI',
          icon: FontAwesomeIcons.poop,
          color: Colors.brown,
          onPressed: () {
            Navigator.pushNamed(context, '/gi');
          },
        )
      ],
    ));
  }
}

class GridButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final Function onPressed;

  GridButton({this.title, this.icon, this.color, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: color,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
