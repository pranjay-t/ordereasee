import 'package:flutter/material.dart';
import 'package:orderease/components/delivery_address_widget.dart';
import 'package:orderease/components/delivery_date_widget.dart';
import 'package:orderease/components/delivery_instruction_widget.dart';
import 'package:orderease/components/language_toggle.dart';
import 'package:orderease/components/order_summary_widget.dart';
import 'package:orderease/components/product_display_widget.dart';
import 'package:orderease/components/quantity_selector_widget.dart';
import 'package:orderease/components/submit_button.dart';

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
        actions: [
          // LanguageToggle(),
          PopupMenuButton<String>(
            onSelected: (String language) {
              if (language == 'English') {
              } else {
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(value: 'English', child: Text('🇬🇧 English')),
              PopupMenuItem(value: 'Hindi', child: Text('🇮🇳 हिंदी')),
            ],
            icon: Icon(Icons.language),
          ),
          ],
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
              SizedBox(
                height: 10,
              ),
              Text(
                'Order Summary: ',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(
                height: 5,
              ),
              OrderSummaryWidget(),
              SizedBox(
                height: 10,
              ),
              SubmitButton(),
            ],
          ),
        ),
      ),
    );
  }
}
