import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_new/riverpod.dart';

class HardPage extends ConsumerWidget {
  const HardPage({super.key});

  Future<void> _toggleLoading(WidgetRef ref, BuildContext context) async {
    final isLoadingNotifier = ValueNotifier<bool>(true);
    showDialog(
      context: context,
      barrierDismissible: false,
      builder:
          (_) => ValueListenableBuilder<bool>(
            valueListenable: isLoadingNotifier,
            builder: (_, isLoading, __) {
              return isLoading
                  ? Center(child: CircularProgressIndicator())
                  : SizedBox.shrink();
            },
          ),
    );

    await Future.delayed(const Duration(seconds: 2));
    isLoadingNotifier.value = false;
    // ignore: use_build_context_synchronously
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hard Riverpod Example'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ref.watch(riverpodModel).counter.toString(),
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.add),
              label: Text('Add'),
              onPressed: () async {
                await _toggleLoading(ref, context);
                ref.read(riverpodModel).increment();
              },
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.remove),
              label: Text('Remove'),
              onPressed: () async {
                await _toggleLoading(ref, context);
                ref.read(riverpodModel).decrement();
              },
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.refresh),
              label: Text('Reset'),
              onPressed: () async {
                await _toggleLoading(ref, context);
                ref.read(riverpodModel).reset();
              },
            ),
          ],
        ),
      ),
    );
  }
}
