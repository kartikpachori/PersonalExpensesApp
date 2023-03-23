import 'package:flutter/material.dart';

class Newtransaction extends StatelessWidget {
  final Function addTx;

  final titlecontroller = TextEditingController();
  final amountcontroller = TextEditingController();

  Newtransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titlecontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountcontroller,
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.purple,
              ),
              onPressed: () {
                addTx(
                  titlecontroller.text,
                  double.parse(amountcontroller.text),
                );
              },
              child: Text('Add Transaction'),
            )
          ],
        ),
      ),
    );
  }
}
