import 'package:flutter/material.dart';

import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// StatelessWidget - 
//StatefulWidget - manage state inside widget, data may change over time and UI reflects that
class GradientContainer extends StatelessWidget{
  //It calls the constructor of the superclass (State[]Widget) and passes the key parameter to it
  const GradientContainer(this.color1, this.color2,{super.key});

  const GradientContainer.green({super.key}) : 
    color1 = Colors.lightGreen, 
    color2 = Colors.green;

  final Color color1;
  final Color color2;
  

  @override
  Widget build(context) {
    return Container(
          decoration: BoxDecoration(
             gradient: LinearGradient(
              colors: [color1, color2],
              begin: startAlignment,
              end: endAlignment,
            )
          ),
          child:  Center(
            child: DiceRoller(), //dicerollers build method exe'd
          ),
        );
  }
}