import 'package:flutter/material.dart';
import 'package:orderease/providers/address_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DeliveryAddressWidget extends StatelessWidget {
  const DeliveryAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final addressProvider = Provider.of<AddressProvider>(context);
    return SizedBox(
      width: double.infinity,
      height: 120,
      child: Row(
        children: [
          SizedBox(
            width: 40,
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        AppLocalizations.of(context)!.addNewAddress,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      content: Text(
                        AppLocalizations.of(context)!.addressPlaceholder,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(AppLocalizations.of(context)!.close),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Card(
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: addressProvider.addresses.length,
              itemBuilder: (BuildContext context, int index) {
                final address = addressProvider.addresses[index];
                return GestureDetector(
                  onTap: () {
                    addressProvider.pickAddress(index);
                  },
                  child: SizedBox(
                    width: 200,
                    child: Card(
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              address,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            if (addressProvider.pickedAddressIndex == index)
                              Icon(
                                Icons.check_circle,
                                color: Colors.green,
                              )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
