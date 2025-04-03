import 'package:flutter/material.dart';
import 'package:orderease/providers/date_provider.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DeliveryDateWidget extends StatelessWidget {
  const DeliveryDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dateProvider = Provider.of<DateProvider>(context);
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => dateProvider.pickDate(context),
        style: Theme.of(context).elevatedButtonTheme.style,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.calendar_today,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              "${AppLocalizations.of(context)!.pickDeliveryDate}: ${DateFormat('EEE, MMM d').format(dateProvider.selectedDate)}",
            ),
          ],
        ),
      ),
    );
  }
}
