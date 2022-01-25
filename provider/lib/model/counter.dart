import 'package:flutter/widgets.dart';

class Counter with ChangeNotifier {
  int _count = 0;

  getCount() => _count;
  setCount(int count) => _count = count;

  void incrementCounter() {
    _count++;
    notifyListeners();
  }

  void decrementCounter() {
    _count--;
    notifyListeners();
  }
}
