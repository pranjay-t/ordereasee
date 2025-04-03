import 'package:flutter/material.dart';
import 'package:orderease/Theme/theme.dart';
import 'package:orderease/providers/quantity_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QuantitySelectorWidget extends StatelessWidget {
  const QuantitySelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final quantityProvider = Provider.of<QuantityProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${AppLocalizations.of(context)!.quantity} ${AppLocalizations.of(context)!.perkg}: ', //need to update
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 45,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  controller: quantityProvider.quantityController,
                  onChanged: (value) {
                    quantityProvider.updateQuantity(value);
                  },
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    hintText: AppLocalizations.of(context)!.quantity,
                    hintTextDirection: TextDirection.rtl,
                    border: Theme.of(context).inputDecorationTheme.border,
                    focusedBorder:
                        Theme.of(context).inputDecorationTheme.focusedBorder,
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
              Row(
                children: [
                  const SizedBox(width: 10),
                  SizedBox(
                    height: 45,
                    width: 80,
                    child: ElevatedButton(
                      onPressed: quantityProvider.decrement,
                      style: Theme.of(context).elevatedButtonTheme.style,
                      child: const Icon(Icons.remove),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    height: 45,
                    width: 80,
                    child: ElevatedButton(
                      style: crystalIceTheme.elevatedButtonTheme.style,
                      onPressed: quantityProvider.increment,
                      child: const Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
