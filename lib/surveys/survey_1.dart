import 'package:flutter/material.dart';
import '../main.dart';
import '../utils/constants.dart';

class HouseholdSurvey extends StatefulWidget {
  @override
  _HouseholdSurveyState createState() => _HouseholdSurveyState();
}

class _HouseholdSurveyState extends State<HouseholdSurvey> {
  // state variable
  int _radiovalue = 0;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radiovalue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(TITLES['household']),
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
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )),
                    Container(
                        child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              'Your Household Income Bracket is between :',
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
                      '0 - 30,000',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Radio(
                      value: 1,
                      groupValue: _radiovalue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text(
                      '30,001 - 80,000',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Radio(
                      value: 2,
                      groupValue: _radiovalue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text(
                      '80,001 - 150,000',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Radio(
                      value: 3,
                      groupValue: _radiovalue,
                      onChanged: _handleRadioValueChange,
                    ),
                    Text(
                      '150,001 - 300,000',
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
                          splashColor: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pushNamed('/savings');
                          },
                          child: Text('Next'),
                        ))
                  ]))),
        ));
  }
}
