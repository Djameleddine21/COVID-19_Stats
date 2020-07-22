import 'package:flutter/material.dart';

class Search extends SearchDelegate {
  final List countriesData;

  Search(this.countriesData);

  @override
  ThemeData appBarTheme(BuildContext context) {
    assert(context != null);
    final ThemeData theme = Theme.of(context);
    assert(theme != null);
    return theme.copyWith();
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = '';
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    final List suggestionList = query.isEmpty
        ? countriesData
        : countriesData
            .where((element) => element['country']
                .toString()
                .toLowerCase()
                .startsWith(query.toLowerCase()))
            .toList();
    return ListView.builder(
      itemCount: suggestionList.length,
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
                      suggestionList[index]['country'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Image.network(
                      suggestionList[index]['countryInfo']['flag'],
                      height: 90.0,
                      width: 70.0,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "CONFIRMED : " + suggestionList[index]['cases'].toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  Text(
                    "ACTIVE : " + suggestionList[index]['active'].toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                  Text(
                    "RECOVERED : " +
                        suggestionList[index]['recovered'].toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  Text(
                    "DEATHS : " + suggestionList[index]['deaths'].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.grey[800]
                          : Colors.grey[100],
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 50),
                    child: Divider(height: 1.0, color: Colors.green),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "TODAY CASES : " +
                        suggestionList[index]['todayCases'].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent,
                    ),
                  ),
                  Text(
                    "TODAY DEATHS : " +
                        suggestionList[index]['todayDeaths'].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ))
            ],
          ),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List suggestionList = query.isEmpty
        ? countriesData
        : countriesData
            .where((element) => element['country']
                .toString()
                .toLowerCase()
                .startsWith(query.toLowerCase()))
            .toList();
    return ListView.builder(
      itemCount: suggestionList.length,
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
                      suggestionList[index]['country'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Image.network(
                      suggestionList[index]['countryInfo']['flag'],
                      height: 90.0,
                      width: 70.0,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "CONFIRMED : " + suggestionList[index]['cases'].toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                  Text(
                    "ACTIVE : " + suggestionList[index]['active'].toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                  Text(
                    "RECOVERED : " +
                        suggestionList[index]['recovered'].toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.green),
                  ),
                  Text(
                    "DEATHS : " + suggestionList[index]['deaths'].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.grey[800]
                          : Colors.grey[100],
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 50),
                    child: Divider(height: 1.0, color: Colors.green),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "TODAY CASES : " +
                        suggestionList[index]['todayCases'].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.greenAccent,
                    ),
                  ),
                  Text(
                    "TODAY DEATHS : " +
                        suggestionList[index]['todayDeaths'].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                    ),
                  ),
                ],
              ))
            ],
          ),
        );
      },
    );
  }
}
