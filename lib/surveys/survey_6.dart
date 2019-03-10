import 'package:flutter/material.dart';
import '../main.dart';
import '../utils/constants.dart';

class OccupationSurvey extends StatefulWidget {
  @override
  _OccupationSurveyState createState() => _OccupationSurveyState();
}

//State is information of the application that can change over time or when some actions are taken.
class _OccupationSurveyState extends State<OccupationSurvey> {
  // Create a text controller. We will use it to retrieve the current value
  // of the TextField on changed
  final textEditController = TextEditingController();
  bool _isNotValid = true;

  @override
  void initState() {
    super.initState();

    // Start listening to changes
    textEditController.addListener(_latestValue);
  }

  String _latestValue() {
    return textEditController.text;
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is removed from the Widget tree
    textEditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TITLES['occupation']),
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
                        'What is your current occupation ?  ',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 18.0,
                        ),
                        textAlign: TextAlign.center,
                      ))),
              Container(
                  margin: EdgeInsets.all(15.0),
                  child: TextField(
                    controller: textEditController,
                    decoration: new InputDecoration(
                        hintText: "e.g Butcher",
                        errorText: _isNotValid
                            ? "Check Input before submitting"
                            : null,
                        errorStyle: TextStyle(
                            decorationColor: Colors.deepOrange,
                            letterSpacing: 2.0)),
                    onChanged: (inputText) {
                      setState(() {
//                   Check Input Validation
                        if (inputText.contains(
                                new RegExp(r'[A-Z]', caseSensitive: false)) &&
                            inputText.length > 3) {
                          _isNotValid = false;
                        } else {
                          _isNotValid = true;
                        }
                      });
                    },
                    //onChanged is called whenever we add or delete something on Text Field
                  )),
              Padding(
                  padding: EdgeInsets.all(20.0),
                  child: RaisedButton(
                    color: Theme.of(context).accentColor,
                    elevation: 4.0,
                    splashColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pushNamed('/thank_you');
                    },
                    child: Text('Next'),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
