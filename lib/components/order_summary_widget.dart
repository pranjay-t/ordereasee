import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:orderease/providers/address_provider.dart';
import 'package:orderease/providers/date_provider.dart';
import 'package:orderease/providers/product_provider.dart';
import 'package:orderease/providers/quantity_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrderSummaryWidget extends StatelessWidget {
  const OrderSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final mobileWidth = MediaQuery.of(context).size.width;
    final quantityProvider = Provider.of<QuantityProvider>(context);
    final dateProvider = Provider.of<DateProvider>(context);
    final addressProvider = Provider.of<AddressProvider>(context);
    final productProvider = Provider.of<ProductProvider>(context);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '₹',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                        '${quantityProvider.quantity * productProvider.productPrice}',
                        style: Theme.of(context).textTheme.titleLarge),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '${quantityProvider.quantity} ${AppLocalizations.of(context)!.items}',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.delivery_dining,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                        '| ${DateFormat('d MMM').format(dateProvider.selectedDate)}',
                        style: Theme.of(context).textTheme.bodyLarge!),
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Divider(
                thickness: 0.6,
                color: Colors.grey,
              ),
            ),
            Text(
              '${AppLocalizations.of(context)!.deliveryTo}:',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              width: mobileWidth * 0.6,
              child: Text(
                addressProvider.addresses[addressProvider.pickedAddressIndex],
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Divider(
                thickness: 0.6,
                color: Colors.grey,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.qty,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '${quantityProvider.quantity}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.items,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      productProvider.productName,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.price,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      '${quantityProvider.quantity * productProvider.productPrice}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
