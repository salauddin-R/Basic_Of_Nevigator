import 'package:flutter/material.dart';

class EmailFragment extends StatelessWidget
{
  const  EmailFragment({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child:Text("Email Fragment",style: TextStyle(
            fontSize: 54,fontWeight: FontWeight.w900,backgroundColor: Colors.blue
          ),)
        ),
      );
  }
  
}