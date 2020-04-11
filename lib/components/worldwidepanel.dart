import 'package:covid_19/components/status_panel.dart';
import 'package:flutter/material.dart';

class WorldWidePanel extends StatelessWidget {

  final Map worldData;

  const WorldWidePanel({Key key, this.worldData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2,
        ),
        children: <Widget>[
          StatusPanel(
            title: "CONFIRMED",
            count: worldData["cases"].toString(),
            panelColor: Colors.red[100],
            textColor: Colors.red,
          ),
          StatusPanel(
            title: "ACTIVE",
            count: worldData["active"].toString(),
            panelColor: Colors.blue[100],
            textColor: Colors.blue[900],
          ),
          StatusPanel(
            title: "RECOVERED",
            count: worldData["recovered"].toString(),
            panelColor: Colors.green[100],
            textColor: Colors.green,
          ),
          StatusPanel(
            title: "DEATHS",
            count: worldData["deaths"].toString(),
            panelColor: Colors.grey[400],
            textColor: Colors.grey[900],
          ),
        ],
      ),
    );
  }
}
