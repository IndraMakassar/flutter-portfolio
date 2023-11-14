import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  static const snackBar = SnackBar(
    content: Text('Copied to Clipboard'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Clipboard.setData(
                  const ClipboardData(text: 'anindhpra@gmail.com')).then((
                  value) {
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              });
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.mail, color: Colors.deepPurpleAccent),
                Text(' anindhpra@gmail.com'),
              ],
            ),
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              Clipboard.setData(
                  const ClipboardData(text: '+6285298732104')).then((
                  value) {
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              });
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone, color: Colors.deepPurpleAccent),
                Text(" +62 8529 8732 104")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
