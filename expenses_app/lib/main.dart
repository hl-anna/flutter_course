import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Finance',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Personal Finance'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              color: Colors.blueGrey,
              child: Container(
                child: const Text('Chart',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                width: double.infinity,
                margin: const EdgeInsets.all(15),
              ),
              elevation: 5,
            ),
            Card(child: Text('List of expenses'))
          ],
        ));
  }
}
