import 'package:flutter/material.dart';
import 'package:orderease/providers/address_provider.dart';
import 'package:orderease/providers/date_provider.dart';
import 'package:orderease/providers/instruction_provider.dart';
import 'package:provider/provider.dart';
import 'package:orderease/providers/quantity_provider.dart';
import 'package:orderease/screens/new_order_screen.dart';
import 'package:orderease/Theme/theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => QuantityProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AddressProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DateProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => InstructionProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OrderEase',
      theme: crystalIceTheme,
      home: const NewOrderScreen(),
    );
  }
}
