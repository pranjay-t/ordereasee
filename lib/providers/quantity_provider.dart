import 'package:flutter/material.dart';

class QuantityProvider extends ChangeNotifier {
  int _quantity = 1;

  int get quantity => _quantity;

  final TextEditingController quantityController = TextEditingController(text: '1');

  void increment() {
    _quantity++;
    quantityController.text = _quantity.toString();
    notifyListeners();
  }

  void decrement() {
    if (_quantity > 1) {
      _quantity--;
      quantityController.text = _quantity.toString();
      notifyListeners();
    }
  }

  void updateQuantity(String value) {
    if (value.isNotEmpty) {
      _quantity = int.tryParse(value) ?? 1;
      notifyListeners();
    }
  }

  @override
  void dispose() {
    quantityController.dispose();
    super.dispose();
  }
}
