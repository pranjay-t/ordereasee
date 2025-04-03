import 'package:flutter/material.dart';

class DateProvider extends ChangeNotifier {
  DateTime selectedDate = DateTime.now().add(Duration(days: 7));

  void pickDate(BuildContext context) async {
    DateTime firstAvailableDate = DateTime.now().add(Duration(days: 7));
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: firstAvailableDate,
      lastDate: firstAvailableDate.add(Duration(days: 7)),
    );

    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      notifyListeners();
    }
  }
}