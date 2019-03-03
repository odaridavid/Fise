import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fise',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: FiseHomePage(title: 'Fise Survey'),
    );
  }
}

class FiseHomePage extends StatefulWidget {
  FiseHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _FiseHomePageState createState() => _FiseHomePageState();
}

class _FiseHomePageState extends State<FiseHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
          child: Card(
            margin: EdgeInsets.all(25.0),
            shape: BeveledRectangleBorder(),
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    title: Text('Fise Survey',
                        style: TextStyle(
                          fontSize: 19,
                        )),
                    subtitle: Text(
                        'Welcome to Fise Survey ,please spare 5-6 min of your time to answer some few questions',
                        style: TextStyle(
                          height: 2.5,
                          fontSize: 16,
                        )),
                  ),
                  ButtonTheme.bar(
                    // make buttons use the appropriate styles for cards
                    child: ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text(
                            'OK',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => IncomeSurveyRoute()));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          ),
        ));
  }
}

class IncomeSurveyRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Income'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Next'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HouseholdIncomeSurveyRoute()));
          },
        ),
      ),
    );
  }
}

class HouseholdIncomeSurveyRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Household Income"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('Next'),
        ),
      ),
    );
  }
}
