import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:orderease/providers/address_provider.dart';
import 'package:orderease/providers/date_provider.dart';
import 'package:orderease/providers/instruction_provider.dart';
import 'package:orderease/providers/language_controller.dart';
import 'package:orderease/providers/product_provider.dart';
import 'package:provider/provider.dart';
import 'package:orderease/providers/quantity_provider.dart';
import 'package:orderease/screens/new_order_screen.dart';
import 'package:orderease/Theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
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
        ChangeNotifierProvider(
          create: (context) => LanguageController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageController>(builder: (context, provider, child) {
      return MaterialApp(
        locale:(provider.appLocale == null)? Locale('en'):provider.appLocale,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: [
          Locale('en'),
          Locale('hi'),
        ],
        debugShowCheckedModeBanner: false,
        title: 'OrderEase',
        theme: crystalIceTheme,
        home: const NewOrderScreen(),
      );
    });
  }
}
