import 'package:flutter/material.dart';

class RiverpodModel extends ChangeNotifier {
  int counter;

  RiverpodModel({required this.counter});

  void increment() {
    counter++;
    notifyListeners();
  }

  void decrement() {
    counter--;
    notifyListeners();
  }

  void reset() {
    counter = 0;
    notifyListeners();
  }
}
