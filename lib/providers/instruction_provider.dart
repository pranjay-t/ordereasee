import 'package:flutter/material.dart';

class InstructionProvider extends ChangeNotifier{
  final TextEditingController _instructionController = TextEditingController();
  
  TextEditingController get instructionController => _instructionController;
  
  @override
  void dispose() {
    _instructionController.dispose();
    super.dispose();
  }
}