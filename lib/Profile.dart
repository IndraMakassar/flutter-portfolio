import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Card(
            child: Column(
              children: [
                // Image(),
                Text('Antonius Indra Dharma Prasetya'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
