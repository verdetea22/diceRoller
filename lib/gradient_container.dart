import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget{
  //It calls the constructor of the superclass (StatelessWidget) and passes the key parameter to it
  const GradientContainer(this.color1, this.color2,{super.key});

  const GradientContainer.green({super.key}) : 
    color1 = Colors.lightGreen, 
    color2 = Colors.green;

  final Color color1;
  final Color color2;

  //void: function doesnt expect input
  // actived when "roll" button is clicked, returns one of the dice asset images randomly (1-6)
  void rollDice() {

  }

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
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                  Image.asset(
                    'assets/images/dice-1.png', 
                    width: 200,
                  ),
                 TextButton(
                    onPressed: rollDice, 
                    child: const Text('Roll! The! Dice!'),
                  )
              ],
            )
          ),
        );
  }
}