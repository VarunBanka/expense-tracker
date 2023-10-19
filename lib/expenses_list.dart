import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expenses.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenseses});

  final List<Expense> expenseses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenseses.length,
      itemBuilder: (ctx, index) => Text(expenseses[index].title),
    );
  }
}
