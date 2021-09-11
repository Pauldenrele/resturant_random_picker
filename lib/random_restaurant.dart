import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class RestaurantState extends State<MyApp> {

  List<String> restaurants = [

    'McDonald\'s',

    'Roscoe\'s Chicken & Waffles',

    'Olive Garden',

    'Pizza Hut',

    'Panda Express',

    'Subway'

  ];


  int? currentIndex;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(

          body: Center(

              child: FittedBox(

                child: Column(

                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [

                    Text('What do you want to eat?'),

                    if (currentIndex != null)

                      Text(

                        restaurants[currentIndex!],

                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),

                        textAlign: TextAlign.center,

                      ),

                    Padding(

                      padding: EdgeInsets.only(top: 50),

                    ),

                    FlatButton(

                      onPressed: () {
                        updateIndex();
                      },

                      child: Text('Pick Restaurant'),

                      color: Colors.purple,

                      textColor: Colors.white,

                    )

                  ],

                ),

              ))),

    );
  }


  void updateIndex() {
    final random = Random();

    final index = random.nextInt(restaurants.length);

    setState(() {
      currentIndex = index;
    });
  }

}
