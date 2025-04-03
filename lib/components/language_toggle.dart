import 'package:flutter/material.dart';
import 'package:orderease/Theme/theme.dart';

class LanguageToggle extends StatefulWidget {
  const LanguageToggle({super.key});

  @override
  _LanguageToggleState createState() => _LanguageToggleState();
}

class _LanguageToggleState extends State<LanguageToggle> {
  bool isHindi = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(isHindi ? "हिन्दी" : "English",
            style: const TextStyle(fontSize: 18, color: Colors.white)),
        Switch(
          value: isHindi,
          activeColor: backgroundColor,
          onChanged: (value) {
            setState(() {
              isHindi = value;
            });
          },
        ),
      ],
    );
  }
}
