import 'package:flutter/material.dart';
import 'package:orderease/providers/instruction_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DeliveryInstructionWidget extends StatelessWidget {
  const DeliveryInstructionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final instructionProvider = Provider.of<InstructionProvider>(context);
    return SizedBox(
      height: 50,
      child: TextField(
        controller: instructionProvider.instructionController,
        maxLines: 5,
        decoration: InputDecoration(
          hintText: AppLocalizations.of(context)!.optional,
        ),
      ),
    );
  }
}
