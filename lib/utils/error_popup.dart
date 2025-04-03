import 'package:flutter/material.dart';

class ErrorPopup {
  static void show(BuildContext context, String errorMessage) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.red.shade50,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          title: Row(
            children: [
              Icon(Icons.error_outline, color: Colors.red, size: 28),
              const SizedBox(width: 8),
              const Text("Error", style: TextStyle(color: Colors.red)),
            ],
          ),
          content: Text(
            errorMessage,
            style: const TextStyle(color: Colors.black87),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}
