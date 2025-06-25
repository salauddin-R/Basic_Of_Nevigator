import 'package:flutter/material.dart';

class PersonFragment extends StatelessWidget
{
  const PersonFragment({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child:Text("Person Fragment",style: TextStyle(
            fontSize: 54,fontWeight: FontWeight.w900,backgroundColor: Colors.blue
          ),)
        ),
      );
  }
  
}