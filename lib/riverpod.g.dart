// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$easyLevelHash() => r'dabfa7a7e1ecf50a8bf4c83bae17098189e46d81';

/// This is a simple counter example using Riverpod.
/// It demonstrates how to use the `riverpod` package to create a
/// counter application.
/// This package is used to replace the `StateProvider` method.
///
/// Copied from [easyLevel].
@ProviderFor(easyLevel)
final easyLevelProvider = AutoDisposeProvider<int>.internal(
  easyLevel,
  name: r'easyLevelProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$easyLevelHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef EasyLevelRef = AutoDisposeProviderRef<int>;
String _$counterHash() => r'1176463cd58bdd897ba1bbf29b804ef9b1bb3fe6';

/// This is a simple counter example using Riverpod.
/// It demonstrates how to use the `riverpod` package to create a
/// counter application.
/// This package is used to replace the `ChangeNotifier` method.
///
/// Copied from [Counter].
@ProviderFor(Counter)
final counterProvider = AutoDisposeNotifierProvider<Counter, int>.internal(
  Counter.new,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Counter = AutoDisposeNotifier<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
