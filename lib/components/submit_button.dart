import 'package:flutter/material.dart';
import 'package:orderease/Theme/theme.dart';
import 'package:orderease/providers/quantity_provider.dart';
import 'package:orderease/screens/go_back_screen.dart';
import 'package:orderease/utils/error_popup.dart';
import 'package:orderease/utils/snackbar_utils.dart';
import 'package:provider/provider.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    final quantityProvider = Provider.of<QuantityProvider>(context);
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          onPressed: () {
            if (quantityProvider.quantity <= 0) {
              ErrorPopup.show(context,
                  'You haven\'t selected any items! Please add at least one item to proceed.');
            } else {
              SnackbarUtils.showSuccess(context, "Order placed successfully!");
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GoBackScreen()));
            }
          },
          child: Text(
            'Place Order',
            style: TextStyle(
                color: backgroundColor,
                fontSize: 18,
                fontWeight: FontWeight.w700),
          )),
    );
  }
}
