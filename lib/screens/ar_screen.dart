import 'package:flutter/material.dart';

class ARScreen extends StatelessWidget {
  // Return page with AR en cours de développement

  const ARScreen({Key? key}) : super(key: key);

  static const routeName = '/ar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AR'),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(height: 60),
            SizedBox(height: 50),
            Text(
              'AR en cours de développement',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
