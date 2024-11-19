import 'dart:math';

import 'package:flutter/material.dart';

class rolldiece extends StatefulWidget {
  const rolldiece({super.key});

  @override
  State<rolldiece> createState() => _rolldieceState();
}

class _rolldieceState extends State<rolldiece> {

int imageNumber=1;

//method for random number
 randomnumber(){

  setState(() {
    imageNumber= Random().nextInt(6)+1;
  });
 
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center ,
        children: [
        Center(
          child: Image.asset("assests/images/$imageNumber.png",
          width: 200,
          
          ),
        ),
        SizedBox(height: 10,),
        ElevatedButton(
          onPressed:randomnumber, 
        child: Text("ROLL")
        ),
      ],),
    );
  }
}