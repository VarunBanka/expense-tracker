import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpense();
  }
}

class _NewExpense extends State<NewExpense> {
  final _titleCrontroller = TextEditingController();
  final _amountCrontroller = TextEditingController();

  @override
  void dispose() {
    _titleCrontroller.dispose();
    _amountCrontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleCrontroller,
            maxLength: 50,
            keyboardType: TextInputType.text,
            decoration: const InputDecoration(label: Text("Title")),
          ),
          TextField(
            controller: _amountCrontroller,
            maxLength: 10,
            keyboardType: TextInputType.number,
            decoration:
                const InputDecoration(prefixText: "\$", label: Text("Amount")),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                  onPressed: () {
                    print(_titleCrontroller
                        .text); // ik this isnt what i should do
                  },
                  child: const Text("Save"))
            ],
          )
        ],
      ),
    );
  }
}
