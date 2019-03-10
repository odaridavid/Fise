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
    return Scaffold(
        appBar: AppBar(
          title: Text('Saving'),
          elevation: 4.0,
        ),
        body: Center(
          child: Card(
              shape: BeveledRectangleBorder(),
              child: Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(children: <Widget>[
                    Text('Select one of the following:',
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold)),
                    Center(
                        child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              'Your Monthly Savings is:',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Radio(
                      value: 0,
                      groupValue: _radiovalue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text(
                      'Below 30,000',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Radio(
                      value: 1,
                      groupValue: _radiovalue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text(
                      'Above 30,001',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Radio(
                      value: 2,
                      groupValue: _radiovalue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text(
                      'Above 80,000',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Radio(
                      value: 3,
                      groupValue: _radiovalue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text(
                      'Above 150,000',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Radio(
                      value: 3,
                      groupValue: _radiovalue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text(
                      '300,001 and above',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Padding(
                        padding: EdgeInsets.all(20.0),
                        child: RaisedButton(
                          color: Theme.of(context).accentColor,
                          elevation: 4.0,
                          splashColor: Colors.lightGreen,
                          onPressed: () {
                            Navigator.of(context)
                                .pushNamed('/finance_knowledge');
                          },
                          child: Text('Next'),
                        ))
                  ]))),
        ));
  }
}
