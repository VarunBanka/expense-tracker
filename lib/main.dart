import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses.dart';

var kColorSchm = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData().copyWith(
        useMaterial3: true,
        colorScheme: kColorSchm,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorSchm.onPrimaryContainer,
          foregroundColor: kColorSchm.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorSchm.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kColorSchm.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
              fontWeight: FontWeight.normal,
              color: kColorSchm.secondaryContainer,
              fontSize: 14,
            )),
      ),
      home: const ExpensesScreen(),
    ),
  );
}
