import 'package:flutter/material.dart';

class MostAffected extends StatelessWidget {
  final List countriesData;

  const MostAffected({Key key, this.countriesData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              children: <Widget>[
                Image.network(countriesData[2]["countryInfo"]["flag"],
                    height: 30.0, width: 30.0),
                SizedBox(width: 10.0),
                Text(
                  countriesData[2]["country"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10.0),
                Text(
                  "Deaths: " + countriesData[2]["deaths"].toString(),
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              children: <Widget>[
                Image.network(countriesData[42]["countryInfo"]["flag"],
                    height: 30.0, width: 30.0),
                SizedBox(width: 10.0),
                Text(
                  countriesData[42]["country"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10.0),
                Text(
                  "Deaths: " + countriesData[42]["deaths"].toString(),
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              children: <Widget>[
                Image.network(countriesData[99]["countryInfo"]["flag"],
                    height: 30.0, width: 30.0),
                SizedBox(width: 10.0),
                Text(
                  countriesData[99]["country"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10.0),
                Text(
                  "Deaths: " + countriesData[99]["deaths"].toString(),
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              children: <Widget>[
                Image.network(countriesData[201]["countryInfo"]["flag"],
                    height: 30.0, width: 30.0),
                SizedBox(width: 10.0),
                Text(
                  countriesData[201]["country"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10.0),
                Text(
                  "Deaths: " + countriesData[201]["deaths"].toString(),
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              children: <Widget>[
                Image.network(countriesData[69]["countryInfo"]["flag"],
                    height: 30.0, width: 30.0),
                SizedBox(width: 10.0),
                Text(
                  countriesData[69]["country"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 10.0),
                Text(
                  "Deaths: " + countriesData[69]["deaths"].toString(),
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
