import 'package:covid_19/screens/search.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AllCountries extends StatefulWidget {
  List countriesData;

  AllCountries({Key key, @required this.countriesData}) : super(key: key);

  @override
  _AllCountriesState createState() => _AllCountriesState();
}

class _AllCountriesState extends State<AllCountries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Country Stats"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, size: 35.0, color: Colors.white38),
            onPressed: () {
              showSearch(context: context, delegate: Search(widget.countriesData));
            },
          ),
        ],
      ),
      body: widget.countriesData == null
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: widget.countriesData == null ? 0 : widget.countriesData.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                  height: 130.0,
                  decoration: Theme.of(context).brightness == Brightness.light
                      ? BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[200],
                              blurRadius: 10.0,
                              offset: Offset(0.0, 10.0),
                            )
                          ],
                        )
                      : BoxDecoration(
                          color: Colors.black26,
                        ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 130.0,
                          margin: EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                widget.countriesData[index]['country'],
                                style: TextStyle(fontWeight: FontWeight.bold),
                                maxLines: 2,
                              ),
                              Image.network(
                                widget.countriesData[index]['countryInfo']['flag'],
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
                                "CONFIRMED : " +
                                    widget.countriesData[index]['cases'].toString(),
                                style:
                                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                              ),
                              Text(
                                "ACTIVE : " + widget.countriesData[index]['active'].toString(),
                                style:
                                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                              ),
                              Text(
                                "RECOVERED : " +
                                    widget.countriesData[index]['recovered'].toString(),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, color: Colors.green),
                              ),
                              Text(
                                "DEATHS : " + widget.countriesData[index]['deaths'].toString(),
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
                                    widget.countriesData[index]['todayCases'].toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.greenAccent,
                                ),
                              ),
                              Text(
                                "TODAY DEATHS : " +
                                    widget.countriesData[index]['todayDeaths'].toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}
