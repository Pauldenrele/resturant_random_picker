import 'package:resturant_random_picker/main.dart';

import 'package:flutter/material.dart';

class ReadAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: TextField(
          textInputAction: TextInputAction.done,
          style: TextStyle(fontSize: 40),
          maxLines: null,
        ),
      ),
    );
  }
}
