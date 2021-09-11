import 'package:flutter/material.dart';
import 'package:resturant_random_picker/main.dart';

class TipCalcState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('Total Amount')],
          ),
        ),
      ),
    );
  }
}
