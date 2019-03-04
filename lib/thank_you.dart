import 'package:flutter/material.dart';

class ThankYouPage extends StatefulWidget {
  @override
  _ThankYouPageState createState() => _ThankYouPageState();
}

class _ThankYouPageState extends State<ThankYouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          fontWeight: FontWeight.bold,
                        )),
                    subtitle: Text(
                        'Thank You For your time.',
                        style: TextStyle(
                          height: 2.5,
                          fontSize: 16,
                        )),
                  ),
                ],
              ),
            ), // This trailing comma makes auto-formatting nicer for build methods.
          ),
        ));
  }
}

