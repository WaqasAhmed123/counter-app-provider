import 'package:counter/provider/count_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      body: Center(
          child: Consumer<CountProvider>(builder: (context, value, child) {
        return Text(value.countValue.toString());
      })),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Provider.of<CountProvider>(context, listen: false).setCount();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              countProvider.resetCount();
            },
            tooltip: 'Restore',
            child: const Icon(Icons.restore),
          ),
        ],
      ),
    );
  }
}
