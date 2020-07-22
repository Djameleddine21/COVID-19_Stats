import 'package:flutter/material.dart';

class MostAffected extends StatelessWidget {
  final List countriesData;

  const MostAffected({Key key, this.countriesData}) : super(key: key);

  List<int> getIndexes() {
    List<int> indexes = <int>[];
    int index = 0;
    for (var item in countriesData) {
      if (item["country"] == "Algeria" ||
          item["country"] == "USA" ||
          item["country"] == "China" ||
          item["country"] == "France" ||
          item["country"] == "Italy") {
        indexes.add(index);
      }
      index++;
    }
    return indexes;
  }

  @override
  Widget build(BuildContext context) {
    final indexes = getIndexes();
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              children: <Widget>[
                Image.network(countriesData[indexes[0]]["countryInfo"]["flag"],
                    height: 30.0, width: 30.0),
                SizedBox(width: 10.0),
                Text(
                  countriesData[indexes[0]]["country"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10.0),
                Text(
                  "Deaths: " + countriesData[indexes[0]]["deaths"].toString(),
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5.0),
                Container(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                  width: 2.0,
                  height: 15.0,
                ),
                SizedBox(width: 5.0),
                Text(
                  "Today Deaths : " + countriesData[indexes[0]]["todayDeaths"].toString(),
                  style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              children: <Widget>[
                Image.network(countriesData[indexes[1]]["countryInfo"]["flag"],
                    height: 30.0, width: 30.0),
                SizedBox(width: 10.0),
                Text(
                  countriesData[indexes[1]]["country"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10.0),
                Text(
                  "Deaths: " + countriesData[indexes[1]]["deaths"].toString(),
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5.0),
                Container(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                  width: 2.0,
                  height: 15.0,
                ),
                SizedBox(width: 5.0),
                Text(
                  "Today Deaths : " + countriesData[indexes[1]]["todayDeaths"].toString(),
                  style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              children: <Widget>[
                Image.network(countriesData[indexes[2]]["countryInfo"]["flag"],
                    height: 30.0, width: 30.0),
                SizedBox(width: 10.0),
                Text(
                  countriesData[indexes[2]]["country"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10.0),
                Text(
                  "Deaths: " + countriesData[indexes[2]]["deaths"].toString(),
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5.0),
                Container(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                  width: 2.0,
                  height: 15.0,
                ),
                SizedBox(width: 5.0),
                Text(
                  "Today Deaths : " + countriesData[indexes[2]]["todayDeaths"].toString(),
                  style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              children: <Widget>[
                Image.network(countriesData[indexes[3]]["countryInfo"]["flag"],
                    height: 30.0, width: 30.0),
                SizedBox(width: 10.0),
                Text(
                  countriesData[indexes[3]]["country"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10.0),
                Text(
                  "Deaths: " + countriesData[indexes[3]]["deaths"].toString(),
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5.0),
                Container(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                  width: 2.0,
                  height: 15.0,
                ),
                SizedBox(width: 5.0),
                Text(
                  "Today Deaths : " + countriesData[indexes[3]]["todayDeaths"].toString(),
                  style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              children: <Widget>[
                Image.network(countriesData[indexes[4]]["countryInfo"]["flag"],
                    height: 30.0, width: 30.0),
                SizedBox(width: 10.0),
                Text(
                  countriesData[indexes[4]]["country"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10.0),
                Text(
                  "Deaths: " + countriesData[indexes[4]]["deaths"].toString(),
                  style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 5.0),
                Container(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                  width: 2.0,
                  height: 15.0,
                ),
                SizedBox(width: 5.0),
                Text(
                  "Today Deaths : " + countriesData[indexes[4]]["todayDeaths"].toString(),
                  style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
