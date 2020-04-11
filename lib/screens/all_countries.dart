import 'package:covid_19/screens/search.dart';
import 'package:flutter/material.dart';

class AllCountries extends StatelessWidget {
  final List countriesData;

  const AllCountries({Key key, @required this.countriesData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Country Stats"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, size: 35.0, color: Colors.white38),
              onPressed: (){
                showSearch(context: context, delegate: Search(countriesData));
              })
        ],
      ),
      body: countriesData == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: countriesData == null ? 0 : countriesData.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  height: 130.0,
                  decoration: Theme.of(context).brightness == Brightness.light
                      ? BoxDecoration(color: Colors.white, boxShadow: [
                          BoxShadow(
                            color: Colors.grey[200],
                            blurRadius: 10.0,
                            offset: Offset(0.0, 10.0),
                          )
                        ])
                      : BoxDecoration(
                          color: Colors.black26,
                        ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 100.0,
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
                              color: Theme.of(context).brightness ==
                                      Brightness.light
                                  ? Colors.grey[800]
                                  : Colors.grey[100],
                            ),
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
