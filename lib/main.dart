import 'package:flutter/material.dart';
import 'package:great_places_app/widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    ); // MaterialApp
  }
}

class MyHomePage extends StatelessWidget {
  //late String titleInput;
  //late String amountInput;
  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ), // AppBar
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: const Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('CHART!'),
            ),
          ),
          UserTransactions()
        ],
      ), // Center
    ); // Scaffold
  }
}
