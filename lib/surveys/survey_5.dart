import 'package:flutter/material.dart';
import '../main.dart';
import '../utils/constants.dart';

class SpendingSurvey extends StatefulWidget {
  @override
  _SpendingState createState() => _SpendingState();
}

//State is information of the application that can change over time or when some actions are taken.
class _SpendingState extends State<SpendingSurvey> {
  bool _value1 = false;
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 = false;
  bool _value5 = false;

  void disableNoneCheckBox() {
    if (_value5) {
      _value5 = false;
    }
  }

  void _value1Changed(bool value) => setState(() {
        disableNoneCheckBox();
        _value1 = value;
      });

  void _value2Changed(bool value) => setState(() {
        disableNoneCheckBox();
        _value2 = value;
      });

  void _value3Changed(bool value) => setState(() {
        disableNoneCheckBox();
        _value3 = value;
      });

  void _value4Changed(bool value) => setState(() {
        disableNoneCheckBox();
        _value4 = value;
      });

  void _value5Changed(bool value) {
    setState(() {
      if (value) {
        _value1 = false;
        _value2 = false;
        _value3 = false;
        _value4 = false;
      }
      _value5 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TITLES['spending']),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Center(
                  child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Which of the following would you consider a necessity',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18.0,
                        ),
                        textAlign: TextAlign.center,
                      ))),
              CheckboxListTile(
                value: _value1,
                onChanged: _value1Changed,
                title: Text('Mobile Phone'),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.deepOrange,
              ),
              CheckboxListTile(
                value: _value2,
                onChanged: _value2Changed,
                title: Text('Laptop/PC'),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.deepOrange,
              ),

              CheckboxListTile(
                value: _value3,
                onChanged: _value3Changed,
                title: Text('Vaccation'),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.deepOrange,
              ),
              CheckboxListTile(
                value: _value4,
                onChanged: _value4Changed,
                title: Text('Car'),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.deepOrange,
              ),
              CheckboxListTile(
                value: _value5,
                onChanged: _value5Changed,
                title: Text('None'),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor: Colors.deepOrange,
              ),
              RaisedButton(
                color: Theme.of(context).accentColor,
                elevation: 4.0,
                splashColor: Colors.white,
                onPressed: () {
                  Navigator.of(context).pushNamed('/occupation');
                },
                child: Text('Next'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
