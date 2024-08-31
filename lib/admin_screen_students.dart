import 'package:flutter/material.dart';

class AdStudent extends StatelessWidget {
  const AdStudent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Dashboard',
              style: TextStyle(
                fontFamily: 'Ubuntu',
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
