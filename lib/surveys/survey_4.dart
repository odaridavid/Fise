import 'package:flutter/material.dart';
import '../main.dart';
import '../utils/constants.dart';

class FinanceKnowledgeSurvey extends StatefulWidget {
  @override
  _FinanceKnowledgeState createState() => _FinanceKnowledgeState();
}

class _FinanceKnowledgeState extends State<FinanceKnowledgeSurvey> {
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
          title: Text(TITLES['fin_knowledge']),
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
                    Container(
                        child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              'On a scale from A to E, what grade would you give yourself in terms of your knowledge about personal finances?',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 18.0,
                              ),
                              textAlign: TextAlign.center,
                            ))),
                    Center(
                        child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Row(children: <Widget>[
                              Radio(
                                value: 0,
                                groupValue: _radiovalue,
                                onChanged: _handleRadioValueChange,
                              ),
                              Text(
                                'A',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              Radio(
                                value: 1,
                                groupValue: _radiovalue,
                                onChanged: _handleRadioValueChange,
                              ),
                              Text(
                                'B',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              Radio(
                                value: 2,
                                groupValue: _radiovalue,
                                onChanged: _handleRadioValueChange,
                              ),
                              Text(
                                'C',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              Radio(
                                value: 3,
                                groupValue: _radiovalue,
                                onChanged: _handleRadioValueChange,
                              ),
                              Text(
                                'D',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              Radio(
                                value: 3,
                                groupValue: _radiovalue,
                                onChanged: _handleRadioValueChange,
                              ),
                              Text(
                                'E',
                                style: TextStyle(fontSize: 16.0),
                              )
                            ]))),
                    Padding(
                        padding: EdgeInsets.all(20.0),
                        child: RaisedButton(
                          color: Theme.of(context).accentColor,
                          elevation: 4.0,
                          splashColor: Colors.white,
                          onPressed: () {
                            Navigator.of(context).pushNamed('/spending');
                          },
                          child: Text('Next'),
                        ))
                  ]))),
        ));
  }
}
