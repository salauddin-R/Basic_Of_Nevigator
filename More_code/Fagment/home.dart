import 'package:flutter/material.dart';

class HomeFragment extends StatelessWidget
{
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child:Text("home Fragment",style: TextStyle(
            fontSize: 54,fontWeight: FontWeight.w900,backgroundColor: Colors.blue
          ),)
        ),
      );
  }
  
}