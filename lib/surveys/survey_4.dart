import 'package:flutter/material.dart';
import '../main.dart';

class FinanceKnowledgeSurvey extends StatefulWidget {
  @override
  _FinanceKnowledgeState createState() => _FinanceKnowledgeState();
}

class _FinanceKnowledgeState extends State<FinanceKnowledgeSurvey> {
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
                  'On a scale from A to E, what grade would you give yourself in terms of your knowledge about personal finances?',
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
                  'A',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Radio(
                  value: 1,
                  groupValue: _radiovalue,
                  onChanged: _handleRadioValueChange,
                ),
                new Text(
                  'B',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Radio(
                  value: 2,
                  groupValue: _radiovalue,
                  onChanged: _handleRadioValueChange,
                ),
                new Text(
                  'C',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Radio(
                  value: 3,
                  groupValue: _radiovalue,
                  onChanged: _handleRadioValueChange,
                ),
                new Text(
                  'D',
                  style: new TextStyle(fontSize: 16.0),
                ),
                new Radio(
                  value: 3,
                  groupValue: _radiovalue,
                  onChanged: _handleRadioValueChange,
                ),
                new Text(
                  'E',
                  style: new TextStyle(fontSize: 16.0),
                ),
                RaisedButton(
                  color: Theme.of(context).accentColor,
                  elevation: 4.0,
                  splashColor: Colors.lightGreen,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/thank_you');
                  },
                  child: Text('Next'),
                )
              ]))),
    );
  }
}
