import 'package:flutter/material.dart';

class LanguageController extends ChangeNotifier {
  Locale? _appLocale;
  Locale? get appLocale => _appLocale;

  void changeLanguage(Locale type) async {
    _appLocale = type;
    notifyListeners();
  }
}
