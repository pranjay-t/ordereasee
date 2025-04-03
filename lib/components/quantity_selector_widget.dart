import 'package:flutter/material.dart';
import 'package:orderease/Theme/theme.dart';
import 'package:orderease/providers/quantity_provider.dart';
import 'package:provider/provider.dart';

class QuantitySelectorWidget extends StatelessWidget {
  const QuantitySelectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final quantityProvider = Provider.of<QuantityProvider>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quantity (per kg): ',
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
                      hintText: 'Quantity',
                      hintTextDirection: TextDirection.rtl),
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
