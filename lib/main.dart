import 'package:flutter/material.dart';
import './models/transaction.dart';
import 'package:intl/intl.dart';

import './widgets/transaction_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [];

  // String titleInput;
  // String amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blueAccent,
              child: Text('CHART!'),
              elevation: 5,
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    // onChanged: (value) => titleInput = value,
                    controller: titleController,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    // onChanged: (value) {
                    //   amountInput = value;
                    // },
                    controller: amountController,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.purple,
                    ),
                    onPressed: () {},
                    child: Text("Add Transaction"),
                  )
                ],
              ),
            ),
          ),
          TransactionList(),
        ],
      ),
    );
  }
}
