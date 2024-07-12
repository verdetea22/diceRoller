import 'package:flutter/material.dart';

//StatefulWidget - manage state inside widget, data may change over time and UI reflects that
class DiceRoller extends StatefulWidget{
  
  var activeDiceImage = 'assets/images/dice-2.png';

  //void: function doesnt expect input
  // actived when "roll" button is clicked, returns one of the dice asset images randomly (1-6)
  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print('Changing image...');
  }

  @override
  
  State<DiceRoller> createState() { //createState > build for StatefulWidget
    return 
  }
}

// _ means private, only usable in this file, use OG class name and use _ prefix
class _DiceRollerState

//49, 5m