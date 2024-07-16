import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const FlutterTrip());
}

class FlutterTrip extends StatelessWidget {
  const FlutterTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: Home(),
    );
  }
}
