import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  static final Uri _email = Uri.parse('mailto:anindhpra@gmail.com');
  static final Uri _phone = Uri.parse('tel:+6285298732104');

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
              _launchMail();
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
              _launchTelp();
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

  void _launchMail() async {
    if (!await launchUrl(_email)) throw 'Could not launch $_email';
  }
  void _launchTelp() async {
    if (!await launchUrl(_phone)) throw 'Could not launch $_phone';
  }

}
