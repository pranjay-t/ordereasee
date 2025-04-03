import 'package:flutter/material.dart';
import 'package:orderease/Theme/theme.dart';
import 'package:orderease/providers/date_provider.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

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
              "Pick Delivery Date: ${DateFormat('EEE, MMM d').format(dateProvider.selectedDate)}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
