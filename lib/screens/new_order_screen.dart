import 'package:flutter/material.dart';
import 'package:orderease/components/delivery_address_widget.dart';
import 'package:orderease/components/delivery_date_widget.dart';
import 'package:orderease/components/delivery_instruction_widget.dart';
import 'package:orderease/components/product_display_widget.dart';
import 'package:orderease/components/quantity_selector_widget.dart';

class NewOrderScreen extends StatefulWidget {
  const NewOrderScreen({super.key});

  @override
  State<NewOrderScreen> createState() => _NewOrderScreenState();
}

class _NewOrderScreenState extends State<NewOrderScreen> {
  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    final mobileHeight = MediaQuery.of(context).size.height;
    final mobileWidth = MediaQuery.of(context).size.width;
    print('pranjay');
    return Scaffold(
      appBar: AppBar(
        title: Text('New Order Screen'),
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: Container(
        width: mobileWidth,
        height: mobileHeight,
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductDisplayWidget(),
              SizedBox(
                height: 10,
              ),
              QuantitySelectorWidget(),
              SizedBox(
                height: 10,
              ),
              Text(
                'Select Address: ',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 5,
              ),
              DeliveryAddressWidget(),
              SizedBox(
                height: 10,
              ),
              Text(
                'Select Date: ',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 5,
              ),
              DeliveryDateWidget(),
              SizedBox(
                height: 10,
              ),
              Text(
                'Delivery Instruction: ',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 5,
              ),
              DeliveryInstructionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
