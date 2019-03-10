import 'package:flutter/material.dart';
import '../main.dart';

class SavingsSurvey extends StatefulWidget {
  @override
  _SavingSurveyState createState() => _SavingSurveyState();
}

class _SavingSurveyState extends State<SavingsSurvey> {
  // state variable
  int _radiovalue = -1;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radiovalue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Card(
          margin: EdgeInsets.all(25.0),
          shape: BeveledRectangleBorder(),
          child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(children: <Widget>[
                new Text('Select one of the following:',
                    style: new TextStyle(
                        fontSize: 20.0, fontWeight: FontWeight.bold)),
                new Text(
                  'Your Monthly Savings is:',
                  style: new TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18.0,
                  ),
                ),
                new Radio(
                  value: 0,
                  groupValue: _radiovalue,
                  onChanged: _handleRadioValueChange,
                ),
                new Text(
                  'Below 30,000',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Radio(
                  value: 1,
                  groupValue: _radiovalue,
                  onChanged: _handleRadioValueChange,
                ),
                new Text(
                  'Above 30,001',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Radio(
                  value: 2,
                  groupValue: _radiovalue,
                  onChanged: _handleRadioValueChange,
                ),
                new Text(
                  'Above 80,000',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Radio(
                  value: 3,
                  groupValue: _radiovalue,
                  onChanged: _handleRadioValueChange,
                ),
                new Text(
                  'Above 150,000',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Radio(
                  value: 3,
                  groupValue: _radiovalue,
                  onChanged: _handleRadioValueChange,
                ),
                new Text(
                  '300,001 and above',
                  style: new TextStyle(fontSize: 16.0),
                ),
                RaisedButton(
                  color: Theme.of(context).accentColor,
                  elevation: 4.0,
                  splashColor: Colors.lightGreen,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/finance_knowledge');
                  },
                  child: Text('Next'),
                )
              ]))),
    );
  }
}
