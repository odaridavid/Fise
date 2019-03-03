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
          margin:EdgeInsets.all(29.0),
          shape: BeveledRectangleBorder(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text('Fise Survey'),
                subtitle: Text(
                    'Welcome to Fise Survey ,please spare 5-6 min of your time to answer some few questions'),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
