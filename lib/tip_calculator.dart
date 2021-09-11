import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resturant_random_picker/main.dart';

class TipCalcState extends State<MyApp> {
  final controller = TextEditingController();
  List<bool> _selection = [true, false, false];
  String? tip;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (tip != null)
                Text(
                  tip!,
                  style: TextStyle(fontSize: 30),
                ),
              Text('Total Amount'),
              SizedBox(
                width: 70,
                child: TextField(
                  controller: controller,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(hintText: '\$100.00'),
                  keyboardType: TextInputType.numberWithOptions(decimal: true),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ToggleButtons(
                  children: [Text('10%'), Text('15%'), Text('20%')],
                  isSelected: _selection,
                  onPressed: updateSelection,
                ),
              ),
              FlatButton(
                onPressed: () {
                  calcTip();
                },
                child: Text('Calc. Tip'),
                textColor: Colors.white,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void updateSelection(int selectedIndex) {
    setState(() {
      for (int i = 0; i < _selection.length; i++) {
        _selection[i] = selectedIndex == i;
      }
    });
  }

  void calcTip() {
    final totalAmount = double.parse(controller.text);
    final selectedIndex = _selection.indexWhere((element) => element);
    final tipPercentage = [0.1, 0.15, 0.20][selectedIndex];

    final totalTip = (totalAmount * tipPercentage).toStringAsFixed(2);

    setState(() {
      tip = "\$$totalTip";
    });
  }
}
