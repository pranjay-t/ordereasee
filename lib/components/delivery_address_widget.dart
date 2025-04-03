import 'package:flutter/material.dart';
import 'package:orderease/providers/address_provider.dart';
import 'package:provider/provider.dart';

class DeliveryAddressWidget extends StatelessWidget {
  const DeliveryAddressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final addressProvider = Provider.of<AddressProvider>(context);
    return Container(
      width: double.infinity,
      height: 120,
      child: Row(
        children: [
          Container(
            width: 40,
            child: GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Add New Address"),
                      content: const Text(
                          "This is a placeholder for adding a new address."),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Close the dialog
                          },
                          child: const Text("Close"),
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
                    // size: 50,
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
                  child: Container(
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
