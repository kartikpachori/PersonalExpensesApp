import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    widget.addTx(
      enteredTitle,
      enteredAmount,
    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => submitData(),
              // onChanged: (val) {
              //   titleInput=val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
              //onChanged: (val) => amountInput=val,
            ),
            Container(
              height: 70,
              child: Row(
                children: [
                  Text('No date Chosen!'),
                  TextButton(
                    child: Text(
                      'Choose Date',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 242, 68, 37)),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            ElevatedButton(
              child: Text('Add Transaction',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),

              onPressed: submitData,

              style: ElevatedButton.styleFrom(
                  foregroundColor: Color.fromARGB(255, 138, 179, 78),
                  backgroundColor:
                      Color.fromARGB(255, 16, 153, 137)), // Text Color
            ),
          ],
        ),
      ),
    );
  }
}
