import 'package:flutter/material.dart';
import 'package:orderease/components/delivery_address_widget.dart';
import 'package:orderease/components/delivery_date_widget.dart';
import 'package:orderease/components/delivery_instruction_widget.dart';
import 'package:orderease/components/order_summary_widget.dart';
import 'package:orderease/components/product_display_widget.dart';
import 'package:orderease/components/quantity_selector_widget.dart';
import 'package:orderease/components/submit_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:orderease/providers/language_controller.dart';
import 'package:provider/provider.dart';

class NewOrderScreen extends StatefulWidget {
  const NewOrderScreen({super.key});

  @override
  State<NewOrderScreen> createState() => _NewOrderScreenState();
}

enum Language { english, hindi }

class _NewOrderScreenState extends State<NewOrderScreen> {
  int activePage = 0;

  @override
  Widget build(BuildContext context) {
    final mobileHeight = MediaQuery.of(context).size.height;
    final mobileWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        title: Text(
          AppLocalizations.of(context)!.newOrderScreen,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
        actions: [
          Consumer<LanguageController>(builder: (context, provider, child) {
            return PopupMenuButton<Language>(
              onSelected: (Language lang) {
                if (Language.english.name == lang.name) {
                  provider.changeLanguage(Locale('en'));
                } else {
                  provider.changeLanguage(Locale('hi'));
                }
              },
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: Language.english,
                  child: Text('🇬🇧 English'),
                ),
                PopupMenuItem(value: Language.hindi, child: Text('🇮🇳 हिंदी')),
              ],
              icon: Icon(Icons.language),
            );
          })
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
                '${AppLocalizations.of(context)!.selectAddress}: ',
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
                '${AppLocalizations.of(context)!.selectDate}:',
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
                '${AppLocalizations.of(context)!.deliveryInstruction}: ',
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
                '${AppLocalizations.of(context)!.orderSummary}: ',
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
