import 'package:flutter/material.dart';

//StatefulWidget - manage state inside widget, data may change over time and UI reflects that
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() { //createState > build for StatefulWidget
    return _DiceRollerState(); //execute the constructive function
  }
}

// _ means private, only usable in this file, use OG class name and use _ prefix
// extended the widget class 
// flutter requires that these two classes be detached from each other
class _DiceRollerState extends State<DiceRoller>{

  var activeDiceImage = 'assets/images/dice-2.png';

  //void: function doesnt expect input
  // actived when "roll" button is clicked, returns one of the dice asset images randomly (1-6)
  void rollDice() {
    setState(() {
      activeDiceImage = 'assets/images/dice-4.png';
    });
  }

  //need to reexcute the build to pick up changes to activeDiceImage
  @override
  Widget build(context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                  Image.asset(
                    activeDiceImage, 
                    width: 200,
                  ),
                  const SizedBox(height: 20), //alt to padding
                  TextButton(
                    onPressed: rollDice, 
                    style: TextButton.styleFrom(
                      
                      foregroundColor: Colors.white, 
                      textStyle: const TextStyle(
                        fontSize: 28
                        ),
                      ),
                    child: const Text('Roll! The! Dice!'),
                  )
              ],
            );
  }
}

//49, 5m