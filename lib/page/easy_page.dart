import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_new/riverpod.dart';

class EasyPage extends ConsumerWidget {
  const EasyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Easy Riverpod Example'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ref.watch(riverpodEasyLevel).toString(),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.add),
              label: Text('Add'),
              onPressed: () {
                ref.read(riverpodEasyLevel.notifier).state++;
              },
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.remove),
              label: Text('Remove'),
              onPressed: () {
                ref.read(riverpodEasyLevel.notifier).state--;
              },
            ),
          ],
        ),
      ),
    );
  }
}
