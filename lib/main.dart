import 'package:flutter/material.dart';
import 'package:resturant_random_picker/random_restaurant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return restaurantState();
  }
}
