import 'package:flutter/material.dart';

class SlideRightRoute extends PageRouteBuilder {
  final Widget widget;

  SlideRightRoute({this.widget})
      : super(pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return widget;
        }, transitionsBuilder: (BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child) {
          return new SlideTransition(
            position: new Tween<Offset>(
              begin: const Offset(-1.0, 0.0),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        });
}
//class IncomeSurveyRoute extends State<SurveyHomePage> {
//int _radioValue = -1;
//
//void _handleRadioValueChange(int value) {
//  setState(() {
//    _radioValue = value;
//    MyApp().surveyScoreCard.add(_radioValue);
//  });
//}
//
//@override
//Widget build(BuildContext context) {
//  return Scaffold(
//      appBar: AppBar(
//        title: const Text('Income'),
//      ),
//      body: Container(
//          padding: const EdgeInsets.all(12.0),
//          child: Center(
//            child: Column(
//              children: <Widget>[
//                new Text('Select one of the following:',
//                    style: new TextStyle(
//                        fontSize: 20.0, fontWeight: FontWeight.bold)),
//                new Text(
//                  'Your Income Bracket is between :',
//                  style: new TextStyle(
//                    fontWeight: FontWeight.bold,
//                    fontSize: 18.0,
//                  ),
//                ),
//                new Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
//                    children: <Widget>[
//                      new Radio(
//                        value: 0,
//                        groupValue: _radioValue,
//                        onChanged: _handleRadioValueChange,
//                      ),
//                      new Text(
//                        '0 - 20,000',
//                        style: new TextStyle(fontSize: 16.0),
//                      ),
//                      new Radio(
//                        value: 1,
//                        groupValue: _radioValue,
//                        onChanged: _handleRadioValueChange,
//                      ),
//                      new Text(
//                        '20,000 - 50,000',
//                        style: new TextStyle(
//                          fontSize: 16.0,
//                        ),
//                      ),
//                      new Radio(
//                        value: 2,
//                        groupValue: _radioValue,
//                        onChanged: _handleRadioValueChange,
//                      ),
//                      new Text(
//                        '50,000 - 100,000',
//                        style: new TextStyle(fontSize: 16.0),
//                      ),
//                      new Radio(
//                        value: 2,
//                        groupValue: _radioValue,
//                        onChanged: _handleRadioValueChange,
//                      ),
//                      new Text(
//                        '50,000 - 100,000',
//                        style: new TextStyle(fontSize: 16.0),
//                      )
//                    ]),
//                new RaisedButton(
//                  child: const Text('Next'),
//                  color: Theme.of(context).accentColor,
//                  elevation: 4.0,
//                  splashColor: Colors.lightGreen,
//                  onPressed: () {
//                    Navigator.push(
//                        context,
//                        SlideRightRoute(
//                            widget: HouseholdIncomeSurveyRoute()));
//                  },
//                ),
//              ],
//            ),
//          )));
//}
//}
