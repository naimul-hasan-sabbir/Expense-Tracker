import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({Key key}) : super(key: key);

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: 't1', title: 'New iPhone', amount: 110000.99, date: DateTime.now()),
    Transaction(id: 't2', title: 'Burger', amount: 210, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
