import 'package:finance_app/widgets/user_transactions.dart';
import 'package:flutter/material.dart';

import './widgets/user_transactions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.purple, //blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // late String titleInput;
  // late String amountInput;
  // final titleController = TextEditingController();
  // final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Finance'),
      ),
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center, we want 'start' allignment, which is the default
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              child: Container(
                  color: Colors.purple.shade100,
                  height: 100,
                  width: 100, //double.infinity would take up the full screen
                  child: Center(
                    child: const Text(
                      'CHART',
                      textAlign: TextAlign.center,
                    ),
                  )),
              elevation: 5,
            ),
            UserTransactions()
          ],
        ),
      ),
    );
  }
}
