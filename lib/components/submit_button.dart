import 'package:flutter/material.dart';
import 'package:orderease/Theme/theme.dart';
import 'package:orderease/providers/quantity_provider.dart';
import 'package:orderease/screens/go_back_screen.dart';
import 'package:orderease/utils/error_popup.dart';
import 'package:orderease/utils/snackbar_utils.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              ErrorPopup.show(
                  context, AppLocalizations.of(context)!.noItemsSelected);
            } else {
              SnackbarUtils.showSuccess(
                  context, AppLocalizations.of(context)!.orderPlacedSuccess);
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GoBackScreen()));
            }
          },
          child: Text(
            AppLocalizations.of(context)!.placeOrder,
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: backgroundColor),
          )),
    );
  }
}
