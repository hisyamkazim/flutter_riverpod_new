import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_new/riverpod_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'riverpod.g.dart';

final riverpodEasyLevel = StateProvider((ref) {
  return 0;
});

final riverpodModel = ChangeNotifierProvider<RiverpodModel>((ref) {
  return RiverpodModel(counter: 0);
});

//Generated Provider

/// This is a simple counter example using Riverpod.
/// It demonstrates how to use the `riverpod` package to create a
/// counter application.
/// This package is used to replace the `StateProvider` method.
@riverpod
int easyLevel(ref) => 0;

/// This is a simple counter example using Riverpod.
/// It demonstrates how to use the `riverpod` package to create a
/// counter application.
/// This package is used to replace the `ChangeNotifier` method.
@riverpod
class Counter extends _$Counter {
  @override
  int build() => 0;

  void increment() => state++;

  void decrement() {
    if (state > 0) state--;
  }

  void reset() => state = 0;
}
