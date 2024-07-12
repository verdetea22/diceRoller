import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// StatelessWidget - 
//StatefulWidget - manage state inside widget, data may change over time and UI reflects that
class GradientContainer extends StatelessWidget{
  //It calls the constructor of the superclass (State[]Widget) and passes the key parameter to it
  GradientContainer(this.color1, this.color2,{super.key});

  GradientContainer.green({super.key}) : 
    color1 = Colors.lightGreen, 
    color2 = Colors.green;

  final Color color1;
  final Color color2;
  var activeDiceImage = 'assets/images/dice-2.png';

  //void: function doesnt expect input
  // actived when "roll" button is clicked, returns one of the dice asset images randomly (1-6)
  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print('Changing image...');
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
            )
          ),
        );
  }
}