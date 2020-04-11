import 'package:flutter/material.dart';

class AllCountries extends StatelessWidget {
  final List countriesData;

  const AllCountries({Key key, @required this.countriesData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Country Stats")),
      body: countriesData == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: countriesData == null ? 0 : countriesData.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  height: 130,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey[200],
                      blurRadius: 10.0,
                      offset: Offset(0.0, 10.0),
                    )
                  ]),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              countriesData[index]['country'],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Image.network(
                              countriesData[index]['countryInfo']['flag'],
                              height: 50.0,
                              width: 60.0,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "CONFIRMED : " +
                                countriesData[index]['cases'].toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                          Text(
                            "ACTIVE : " +
                                countriesData[index]['active'].toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          Text(
                            "RECOVERED : " +
                                countriesData[index]['recovered'].toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                          Text(
                            "DEATHS : " +
                                countriesData[index]['deaths'].toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[800]),
                          ),
                        ],
                      ))
                    ],
                  ),
                );
              }),
    );
  }
}
