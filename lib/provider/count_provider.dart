import 'package:flutter/material.dart';

class CountProvider extends ChangeNotifier {
  int _countValue = 0;
  int get countValue => _countValue;
  void setCount() {
    _countValue++;
    notifyListeners();
  }

  void resetCount() {
    _countValue = 0;
    notifyListeners();
  }
}
