import 'package:flutter/material.dart';

import 'package:flutter_contador/src/pages/home_page.dart';

void main() => runApp(Contador());

class Contador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}