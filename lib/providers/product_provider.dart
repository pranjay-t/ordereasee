import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier{
  int _activePage = 0;
  final _productImages = [
      'assets/images/ice_cubes_1.png',
      'assets/images/ice_cubes_2.png'
    ];
  
  String _productName = 'Ice Cubes (1kg)';
  int _productPrice = 199;

  int get activePage => _activePage;  
  List<String> get productImages => _productImages;
  String get productName => _productName;
  int get productPrice => _productPrice;

  void onPageChanged(int index){
    _activePage = index;
    notifyListeners();
  }

}