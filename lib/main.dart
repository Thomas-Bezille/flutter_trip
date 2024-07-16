import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterTrip());
}

class FlutterTrip extends StatelessWidget {
  const FlutterTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.home),
          title: const Text('Flutter Trip'),
          actions: const <Widget>[
            Icon(Icons.more_vert),
          ],
        ),
        body: Container(
          child: const Text('Hello, Flutter Trip!'),
        ),
      ),
    );
  }
}
