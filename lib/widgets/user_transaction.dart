import 'package:flutter/material.dart';
import 'package:great_places_app/widgets/new_transaction.dart';
import 'package:great_places_app/widgets/transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'new shoes',
      amount: 60.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Shirts',
      amount: 40.00,
      date: DateTime.now(),
    ),
  ];
  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Newtransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
