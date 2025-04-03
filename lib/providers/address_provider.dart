import 'package:flutter/material.dart';

class AddressProvider extends ChangeNotifier{
  int _pickedAddressIndex = 0;
  final _addresses = [
      '742 Evergreen Terrace Springfield, IL 62704 USA',
      '221B Baker Street London NW1 6XE United Kingdom',
      '1600 Pennsylvania Avenue NW Washington, DC 20500 USA',
    ];

  int get pickedAddressIndex => _pickedAddressIndex;

  List<String> get addresses => _addresses;

  void pickAddress(int idx){
    _pickedAddressIndex = idx;
    notifyListeners();
  }

  void addNewAddress(String newAddress){
    _addresses.insert(0, newAddress);
    _pickedAddressIndex = 0;
    notifyListeners();
  }
}