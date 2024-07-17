import 'package:flutter/material.dart';

import 'city_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List cities = [
    {'name': 'Nantes', 'image': 'assets/images/nantes.jpg'},
    {'name': 'Paris', 'image': 'assets/images/paris.jpg'},
    {'name': 'Strasbourg', 'image': 'assets/images/strasbourg.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home),
        title: const Text('Flutter Trip'),
        actions: const <Widget>[
          Icon(Icons.more_vert),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ...cities.map((city) {
              return CityCard(
                name: city['name'],
                image: city['image'],
              );
            })
          ],
        ),
      ),
    );
  }
}
