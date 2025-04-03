import 'package:flutter/material.dart';
import 'package:orderease/Theme/theme.dart';
import 'package:orderease/screens/new_order_screen.dart';

class GoBackScreen extends StatelessWidget {
  const GoBackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NewOrderScreen()));
            },
            child: Text(
              'Restart',
              style: TextStyle(
                  color: backgroundColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            )),
      ),
    );
  }
}
