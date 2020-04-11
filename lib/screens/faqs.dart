import 'package:flutter/material.dart';
import 'package:covid_19/datasource.dart';

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FAQs")),
      body: ListView.builder(
        itemCount: DataSource.questionAnswers.length + 1,
        itemBuilder: (context, index) {
          if (index != DataSource.questionAnswers.length) {
            return ExpansionTile(
              title: Text(
                DataSource.questionAnswers[index]['question'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(DataSource.questionAnswers[index]['answer']),
                ),
              ],
            );
          } else
            return SizedBox(height: 30.0);
        },
      ),
    );
  }
}
