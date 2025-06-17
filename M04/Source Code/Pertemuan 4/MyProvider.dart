import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  TextEditingController _tfnama = TextEditingController();
  TextEditingController _tfnim = TextEditingController();
  TextEditingController _tfumur = TextEditingController();

  TextEditingController get tfname => _tfnama;
  TextEditingController get tfnim => _tfnim;
  TextEditingController get tfumur => _tfumur;

  bool _isNameEmpty = false;
  bool _isNIMEmpty = false;
  bool _isUmurEmpty = false;

  bool get isNameEmpty => _isNameEmpty;
  bool get isNIMmpty => _isNIMEmpty;
  bool get isUmurEmpty => _isUmurEmpty;

  set setNameEmpty(value) {
    _isNameEmpty = value;
    notifyListeners();
  }

  set setNimEmpty(value) {
    _isNIMEmpty = value;
    notifyListeners();
  }

  set setUmurEmpty(value) {
    _isUmurEmpty = value;
    notifyListeners();
  }
}
