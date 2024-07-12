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
            child: Image.asset('assets/images/dice-1.png'),
          ),
        );
}}