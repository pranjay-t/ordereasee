import 'package:flutter/material.dart';
import 'package:orderease/providers/instruction_provider.dart';
import 'package:provider/provider.dart';

class DeliveryInstructionWidget extends StatelessWidget {
  const DeliveryInstructionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final instructionProvider = Provider.of<InstructionProvider>(context);
    print(instructionProvider.instructionController.text);
    return Container(
      height: 50,
      child: TextField(
        controller: instructionProvider.instructionController,
        maxLines: 5,
        decoration: InputDecoration(
          hintText: '(optional)',
        ),
      ),
    );
  }
}
